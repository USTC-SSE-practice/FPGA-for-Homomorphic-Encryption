#ifndef PAILLIER_HLS_H
#define PAILLIER_HLS_H

#include <ap_int.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

// Data types
typedef ap_uint<64> paillier_uint64_t;
typedef ap_uint<32> paillier_uint32_t;

// AXI-Stream data structure
struct axis_t {
    paillier_uint64_t data;
    ap_uint<1> last;
};

// Function prototypes
paillier_uint32_t generate_prime(paillier_uint32_t seed);
paillier_uint64_t mod_inverse(paillier_uint64_t a, paillier_uint64_t m);
void generate_keys(paillier_uint64_t &N, paillier_uint64_t &N2, paillier_uint64_t &G, paillier_uint64_t &LAMBDA, paillier_uint64_t &mu, paillier_uint64_t &R, paillier_uint64_t &N_PRIME);
paillier_uint64_t montgomery_mult(paillier_uint64_t a, paillier_uint64_t b, paillier_uint64_t N, paillier_uint64_t R, paillier_uint64_t N_PRIME);
paillier_uint64_t mod_exp(paillier_uint64_t base, paillier_uint64_t exp, paillier_uint64_t mod, paillier_uint64_t R, paillier_uint64_t N_PRIME);
paillier_uint64_t paillier_encrypt(paillier_uint64_t m, paillier_uint64_t r, paillier_uint64_t N, paillier_uint64_t N2, paillier_uint64_t G, paillier_uint64_t R, paillier_uint64_t N_PRIME);
paillier_uint64_t paillier_decrypt(paillier_uint64_t c, paillier_uint64_t N, paillier_uint64_t N2, paillier_uint64_t LAMBDA, paillier_uint64_t mu, paillier_uint64_t R, paillier_uint64_t N_PRIME);
void aggregate_gradients(hls::stream<axis_t> &in_stream, hls::stream<axis_t> &out_stream, int num_clients, paillier_uint64_t N, paillier_uint64_t N2, paillier_uint64_t LAMBDA, paillier_uint64_t mu, paillier_uint64_t R, paillier_uint64_t N_PRIME);
void paillier_fl_kernel(hls::stream<axis_t> &data_in, hls::stream<axis_t> &grad_stream, hls::stream<axis_t> &data_out, int num_samples, int num_clients);

#endif
