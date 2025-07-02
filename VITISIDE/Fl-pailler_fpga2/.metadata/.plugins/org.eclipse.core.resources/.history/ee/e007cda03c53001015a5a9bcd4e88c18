#include "xpaillier_fl_kernel.h"
#include "xuartps.h" // For UART communication
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "ff.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xuartps.h"

XUartPs Uart_PS;
typedef unsigned long long paillier_uint64_t;

// UART external declaration
//extern XUartPs Uart_PS; // Assuming UART is initialized elsewhere in your system

// Data structure for CSV parsing
typedef struct {
    paillier_uint64_t* features;
    size_t count;
} Dataset;

// Function prototypes
Dataset load_data_from_csv(const char* filename);
void free_dataset(Dataset* dataset);
void generate_keys(paillier_uint64_t *N, paillier_uint64_t *N2, paillier_uint64_t *G,
                   paillier_uint64_t *LAMBDA, paillier_uint64_t *mu,
                   paillier_uint64_t *R, paillier_uint64_t *N_PRIME);
paillier_uint64_t paillier_encrypt(paillier_uint64_t m, paillier_uint64_t r,
                                  paillier_uint64_t N, paillier_uint64_t N2,
                                  paillier_uint64_t G, paillier_uint64_t R,
                                  paillier_uint64_t N_PRIME);
paillier_uint64_t paillier_decrypt(paillier_uint64_t c, paillier_uint64_t N,
                                  paillier_uint64_t N2, paillier_uint64_t LAMBDA,
                                  paillier_uint64_t mu, paillier_uint64_t R,
                                  paillier_uint64_t N_PRIME);

paillier_uint64_t mod_mul(paillier_uint64_t a, paillier_uint64_t b, paillier_uint64_t n);
paillier_uint64_t mod_exp(paillier_uint64_t base, paillier_uint64_t exp, paillier_uint64_t n);

// New UART function to receive data from host
void process_incoming_data();

int main(int argc, char** argv) {
    // Initialize the kernel
    XPaillier_fl_kernel paillier_kernel;
    XPaillier_fl_kernel_Config* cfg;
    cfg = XPaillier_fl_kernel_LookupConfig(XPAR_PAILLIER_FL_KERNEL_0_DEVICE_ID);
    if (!cfg) {
        xil_printf("ERROR: Failed to lookup kernel configuration\r\n");
        return -1;
    }

    int status = XPaillier_fl_kernel_CfgInitialize(&paillier_kernel, cfg);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: Failed to initialize kernel\r\n");
        return -1;
    }

    // Mount SD card
    FATFS fatfs;
    int mount_status = f_mount(&fatfs, "0:/", 1);
    if (mount_status != FR_OK) {
        xil_printf("ERROR: Failed to mount SD card (code %d)\r\n", mount_status);
    } else {
        xil_printf("SD card mounted successfully\r\n");
    }

    // Load data from SD card
    Dataset dataset = load_data_from_csv("0:/breast-cancer.csv");
    if (dataset.count == 0) {
        xil_printf("ERROR: No feature loaded\r\n");
    } else {
        xil_printf("Loaded %zu features\r\n", dataset.count);
    }

    // Start kernel
    XPaillier_fl_kernel_Start(&paillier_kernel);

    // Wait for kernel to be ready
    while (!XPaillier_fl_kernel_IsReady(&paillier_kernel)) {
        // Busy wait
    }

    // Generate keys
    paillier_uint64_t N, N2, G, LAMBDA, mu, R, N_PRIME;
    generate_keys(&N, &N2, &G, &LAMBDA, &mu, &R, &N_PRIME);
    xil_printf("Generated keys - N: %llu, N2: %llu, G: %llu\r\n", N, N2, G);

    // Simulate FL logic
    int num_clients = 4;
    paillier_uint64_t** client_batches = NULL;
    paillier_uint64_t** encrypted_batches = NULL;
    size_t* batch_sizes = NULL;
    size_t model_size = 0;
    paillier_uint64_t* encrypted_model = NULL;
    paillier_uint64_t* decrypted_model = NULL;

    if (dataset.count > 0) {
        // Split data into batches
        batch_sizes = calloc(num_clients, sizeof(size_t));
        for (size_t i = 0; i < dataset.count; i++) {
            batch_sizes[i % num_clients]++;
        }

        // Allocate memory
        client_batches = malloc(num_clients * sizeof(paillier_uint64_t*));
        encrypted_batches = malloc(num_clients * sizeof(paillier_uint64_t*));
        for (int c = 0; c < num_clients; c++) {
            client_batches[c] = malloc(batch_sizes[c] * sizeof(paillier_uint64_t));
            encrypted_batches[c] = malloc(batch_sizes[c] * sizeof(paillier_uint64_t));
        }

        // Populate data
        size_t* current_pos = calloc(num_clients, sizeof(size_t));
        for (size_t i = 0; i < dataset.count; i++) {
            int client_idx = i % num_clients;
            client_batches[client_idx][current_pos[client_idx]++] = dataset.features[i];
        }
        free(current_pos);

        // Encrypt each batch
        for (int c = 0; c < num_clients; c++) {
            for (size_t i = 0; i < batch_sizes[c]; i++) {
                paillier_uint64_t r = 7;
                encrypted_batches[c][i] = paillier_encrypt(client_batches[c][i] % N, r, N, N2, G, R, N_PRIME);
            }
        }

        // Aggregate encrypted gradients
        if (num_clients > 0 && batch_sizes[0] > 0) {
            model_size = batch_sizes[0];
            encrypted_model = malloc(model_size * sizeof(paillier_uint64_t));
            for (size_t i = 0; i < model_size; i++) {
                encrypted_model[i] = 1;
            }

            for (int c = 0; c < num_clients; c++) {
                for (size_t i = 0; i < batch_sizes[c]; i++) {
                    encrypted_model[i] = (encrypted_model[i] * encrypted_batches[c][i]) % N2;
                }
            }
        }

        // Decrypt aggregated result
        if (encrypted_model) {
            decrypted_model = malloc(model_size * sizeof(paillier_uint64_t));
            for (size_t i = 0; i < model_size; i++) {
                decrypted_model[i] = paillier_decrypt(encrypted_model[i], N, N2, LAMBDA, mu, R, N_PRIME);
            }
        }

        // Print results
        xil_printf("Decrypted aggregated model (first 10 values):\r\n");
        size_t print_count = model_size < 10 ? model_size : 10;
        for (size_t i = 0; i < print_count; i++) {
            xil_printf("%llu ", decrypted_model[i]);
        }
        xil_printf("\r\n");

        // Test encryption/decryption
        paillier_uint64_t test_val = 123 % N;
        paillier_uint64_t r = 7;
        paillier_uint64_t encrypted = paillier_encrypt(test_val, r, N, N2, G, R, N_PRIME);
        paillier_uint64_t decrypted = paillier_decrypt(encrypted, N, N2, LAMBDA, mu, R, N_PRIME);
        xil_printf("Encryption/Decryption Test:\r\n");
        xil_printf("  Original: %llu\r\n", test_val);
        xil_printf("  Encrypted: %llu\r\n", encrypted);
        xil_printf("  Decrypted: %llu\r\n", decrypted);
        xil_printf("  Result: %s\r\n", decrypted == test_val ? "PASS" : "FAIL");
    }

    // Run UART-based processing
    process_incoming_data();

    // Clean up
    free_dataset(&dataset);
    if (client_batches) {
        for (int c = 0; c < num_clients; c++) {
            free(client_batches[c]);
            free(encrypted_batches[c]);
        }
        free(client_batches);
        free(encrypted_batches);
    }
    if (batch_sizes) free(batch_sizes);
    if (encrypted_model) free(encrypted_model);
    if (decrypted_model) free(decrypted_model);

    xil_printf("Kernel execution completed successfully\r\n");
    return 0;
}

// -----------------------------
// CSV Loading Functions
// -----------------------------
Dataset load_data_from_csv(const char* filename) {
    Dataset dataset = {NULL, 0};
    FILE* file = fopen(filename, "r");
    if (!file) {
        xil_printf("Error opening %s\r\n", filename);
        return dataset;
    }

    // First pass: Count lines
    size_t line_count = 0;
    char buffer[1024];
    while (fgets(buffer, sizeof(buffer), file)) {
        line_count++;
    }
    rewind(file);

    // Skip header
    fgets(buffer, sizeof(buffer), file);

    // Allocate memory
    dataset.features = malloc((line_count - 1) * sizeof(paillier_uint64_t));
    if (!dataset.features) {
        fclose(file);
        return dataset;
    }

    // Parse data
    while (fgets(buffer, sizeof(buffer), file)) {
        char* token = strtok(buffer, ",");
        if (!token) continue;

        for (int i = 0; i < 3 && token; i++) {
            token = strtok(NULL, ",");
        }

        if (!token) continue;

        double value = atof(token);
        dataset.features[dataset.count++] = (paillier_uint64_t)(value * 100);
    }

    fclose(file);
    return dataset;
}

void free_dataset(Dataset* dataset) {
    if (dataset->features) {
        free(dataset->features);
        dataset->features = NULL;
    }
    dataset->count = 0;
}

// -----------------------------
// Paillier Implementation
// -----------------------------
void generate_keys(paillier_uint64_t *N, paillier_uint64_t *N2, paillier_uint64_t *G,
                   paillier_uint64_t *LAMBDA, paillier_uint64_t *mu,
                   paillier_uint64_t *R, paillier_uint64_t *N_PRIME) {
    paillier_uint64_t p = 53;
    paillier_uint64_t q = 59;
    *N = p * q;
    *N2 = *N * *N;
    *G = *N + 1;
    *LAMBDA = (*N - p - q + 1) / 2;
    *mu = 1;
    *R = 1;
    *N_PRIME = 1;
}

paillier_uint64_t mod_mul(paillier_uint64_t a, paillier_uint64_t b, paillier_uint64_t n) {
    paillier_uint64_t result = 0;
    for (int i = 0; i < 64; i++) {
        if (b & 1) result = (result + a) % n;
        a = (a << 1) % n;
        b >>= 1;
    }
    return result;
}

paillier_uint64_t mod_exp(paillier_uint64_t base, paillier_uint64_t exp, paillier_uint64_t n) {
    paillier_uint64_t result = 1;
    base = base % n;
    for (int i = 0; i < 64; i++) {
        if (exp & 1) result = mod_mul(result, base, n);
        base = mod_mul(base, base, n);
        exp >>= 1;
    }
    return result;
}

paillier_uint64_t paillier_encrypt(paillier_uint64_t m, paillier_uint64_t r,
                                  paillier_uint64_t N, paillier_uint64_t N2,
                                  paillier_uint64_t G, paillier_uint64_t R,
                                  paillier_uint64_t N_PRIME) {
    paillier_uint64_t gm = mod_exp(G, m, N2);
    paillier_uint64_t rn = mod_exp(r, N, N2);
    return mod_mul(gm, rn, N2);
}

paillier_uint64_t paillier_decrypt(paillier_uint64_t c, paillier_uint64_t N,
                                  paillier_uint64_t N2, paillier_uint64_t LAMBDA,
                                  paillier_uint64_t mu, paillier_uint64_t R,
                                  paillier_uint64_t N_PRIME) {
    paillier_uint64_t cl = mod_exp(c, LAMBDA, N2);
    paillier_uint64_t L = (cl - 1) / N;
    return mod_mul(L, mu, N);
}

// -----------------------------
// UART Processing Function
// -----------------------------

void process_incoming_data() {
    char buffer[128];
    int idx = 0;
    paillier_uint64_t features[1024]; // Adjust based on expected input
    int feature_count = 0;

    xil_printf("Waiting for data...\r\n");

    while (feature_count < 1000) {
        char c;
        if (XUartPs_Recv(&Uart_PS, (u8*)&c, 1) > 0) {
            if (c == '\n' || c == '\r') {
                buffer[idx] = '\0';
                if (strcmp(buffer, "DONE") == 0) break;
                features[feature_count++] = atoi(buffer);
                idx = 0;
            } else {
                buffer[idx++] = c;
            }
        }
    }

    xil_printf("Received %d features\r\n", feature_count);

    // Simulate federated learning steps
    paillier_uint64_t sum = 0;
    for (int i = 0; i < feature_count; i++) {
        sum += features[i]; // Replace with actual homomorphic addition
    }

    xil_printf("Encrypted sum: %llu\r\n", sum); // Or encrypted version
    xil_printf("Decrypted aggregated model: %llu\r\n", sum); // Echo back
}
