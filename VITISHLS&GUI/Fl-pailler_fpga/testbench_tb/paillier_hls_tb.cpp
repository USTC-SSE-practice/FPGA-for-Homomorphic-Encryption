#include "../src/paillier_hls.h"
#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
#include <string>
#include <algorithm>

// Robust federated CNN stub (handles uneven batch sizes)
std::vector<paillier_uint64_t> federated_cnn(const std::vector<std::vector<paillier_uint64_t>>& encrypted_batches) {
    size_t max_size = 0;
    for (const auto& batch : encrypted_batches) max_size = std::max(max_size, batch.size());
    if (max_size == 0) return {};
    std::vector<paillier_uint64_t> agg(max_size, 1); // 1 for Paillier homomorphic multiplication
    paillier_uint64_t N = 3127; // Should match your keygen
    paillier_uint64_t N2 = N * N;
    for (const auto& batch : encrypted_batches) {
        for (size_t i = 0; i < batch.size(); ++i) {
            agg[i] = (agg[i] * batch[i]) % N2;
        }
    }
    return agg;
}

int main() {
    hls::stream<axis_t> data_in, grad_stream, data_out;
    std::ifstream file("F:/Fl-pailler_fpga/Fl-pailler_fpga/solution1/csim/build/breast-cancer.csv");
    if (!file.is_open()) {
        std::cerr << "Error opening breast-cancer.csv\n";
        return 1;
    }

    std::string line;
    std::vector<paillier_uint64_t> features;
    std::vector<std::string> diagnoses;
    std::getline(file, line); // Skip header

    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string token;
        std::vector<std::string> tokens;
        while (std::getline(ss, token, ',')) {
            tokens.push_back(token);
        }
        if (tokens.size() < 3) continue; // Skip malformed lines
        paillier_uint64_t feature = (paillier_uint64_t)(std::stod(tokens[2]) * 100); // Adjusted scaling
        features.push_back(feature);
        diagnoses.push_back(tokens[1]);
    }
    file.close();

    std::cout << "Features loaded: " << features.size() << std::endl;
    if (features.empty()) {
        std::cerr << "No features loaded. Exiting.\n";
        return 1;
    }

    // Print max feature value for debug
    auto max_feature = *std::max_element(features.begin(), features.end());
    std::cout << "Max feature value: " << max_feature << std::endl;

    // Federated learning simulation: split features into client batches
    int num_clients = 4;
    std::vector<std::vector<paillier_uint64_t>> client_batches(num_clients);
    for (size_t i = 0; i < features.size(); ++i) {
        client_batches[i % num_clients].push_back(features[i]);
    }
    for (int c = 0; c < num_clients; ++c) {
        std::cout << "Client batch " << c << " size: " << client_batches[c].size() << std::endl;
    }

    // Generate Paillier keys
    paillier_uint64_t N, N2, G, LAMBDA, mu, R, N_PRIME;
    std::cout << "Generating keys..." << std::endl;
    generate_keys(N, N2, G, LAMBDA, mu, R, N_PRIME);
    std::cout << "N=" << N << " N2=" << N2 << " G=" << G << " LAMBDA=" << LAMBDA << " mu=" << mu << std::endl;

    // Encrypt each client's batch
    std::vector<std::vector<paillier_uint64_t>> encrypted_batches(num_clients);
    std::cout << "Encrypting batches..." << std::endl;
    for (int c = 0; c < num_clients; ++c) {
        for (auto m : client_batches[c]) {
            paillier_uint64_t r = 7;
            auto enc = paillier_encrypt(m % N, r, N, N2, G, R, N_PRIME);
            encrypted_batches[c].push_back(enc);
        }
    }
    std::cout << "Encryption done." << std::endl;

    std::cout << "Aggregating..." << std::endl;
    std::vector<paillier_uint64_t> encrypted_model = federated_cnn(encrypted_batches);
    std::cout << "Aggregation done." << std::endl;

    std::cout << "Decrypting..." << std::endl;
    std::vector<paillier_uint64_t> decrypted_model;
    for (auto c : encrypted_model) {
        decrypted_model.push_back(paillier_decrypt(c, N, N2, LAMBDA, mu, R, N_PRIME));
    }
    std::cout << "Decryption done." << std::endl;

    std::cout << "Decrypted aggregated model (first 10 values):\n";
    for (size_t i = 0; i < std::min<size_t>(10, decrypted_model.size()); ++i) {
        std::cout << decrypted_model[i] << " ";
    }
    std::cout << std::endl;

    // Encryption/Decryption test with a small value to avoid Paillier edge cases
    paillier_uint64_t test_val = 123 % N; // Ensure m < n for Paillier
    paillier_uint64_t r = 7; // Use a small r coprime to N
    paillier_uint64_t encrypted = paillier_encrypt(test_val, r, N, N2, G, R, N_PRIME);
    paillier_uint64_t decrypted = paillier_decrypt(encrypted, N, N2, LAMBDA, mu, R, N_PRIME);
    std::cout << "Encryption/Decryption Test:\n";
    std::cout << "  Original: " << test_val << "\n";
    std::cout << "  Encrypted: " << encrypted << "\n";
    std::cout << "  Decrypted: " << decrypted << "\n";
    std::cout << "  Result: " << (decrypted == test_val ? "PASS" : "FAIL") << "\n";

    int num_samples = features.size();
    for(int i =0; i< num_samples; ++i) {
        axis_t d;
        d.data =  features[i];
        d.last = (i == num_samples-1)?1:0;
        data_in.write(d);
    }
    paillier_fl_kernel(data_in, grad_stream, data_out, num_samples, num_clients);
    std::cout << "Kernel output:" << std::endl;
    while (!data_out.empty()) {
        axis_t d = data_out.read();
        std::cout << d.data << (d.last ? " (last)" : "") << std::endl;
    }
    return 0;
}
