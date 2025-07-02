# FPGA-for-Homomorphic-Encryption


# FPGA-Accelerated Homomorphic Encryption for Federated Learning

![System Architecture](image/image2.png)  
*Figure 1: FPGA-based secure federated learning pipeline with Paillier HE*

A high-performance implementation of the **Paillier cryptosystem** on FPGA, enabling **privacy-preserving federated learning** for healthcare applications. This project leverages **Xilinx Vitis HLS** and **Vivado** to accelerate homomorphic encryption/decryption, reducing computational overhead by 15× compared to CPU.

## 🚀 Key Features
- **Additive Homomorphic Encryption**: Securely aggregate encrypted model updates in federated learning.
- **FPGA Optimization**: Pipeline/unrolling in HLS  on Zynq-7000.
- **End-to-End Workflow**: From C++ simulation to RTL synthesis and FPGA deployment.
- **Healthcare Use Case**: Validated with breast cancer datasets (CSV).


## 🧠 Project Overview

The project implements a **** additive semi-homomorphic encryption using the Paillier cryptosystem and FPGA-based hardware acceleration***.
- High-Level Synthesis (HLS) for hardware implementation
- Vivado for system integration
- Vitis for software development and co-simulation
- UART for communication with the PC
- **GUI using pythonI** for interactive visualization

---

---

## ⚙️ Hardware Acceleration
### FPGA Pipeline
1. **HLS Cores** (Vitis HLS):
   - `Encrypt_HLS`: Modular exponentiation for Paillier encryption.
   - `Add_HLS`: Homomorphic addition of ciphertexts.
   - Optimized with loop unrolling (`#pragma HLS UNROLL`).

2. **Vivado Integration**:
   - AXI-interconnected IP cores (Zynq PS + PL).
   - DDR4 memory for large dataset handling.

![FPGA Design](image/hardware.png)  
*Figure 2: Vivado block design with HLS IP cores*

---

## 🔧 Installation
### Prerequisites
- **Tools**:
  - Xilinx Vitis HLS & Vivado 2022.2
  - PYNQ-Z2/ZedBoard (JTAG/UART debug)
- **Libraries**: GMP (`libgmp-dev` for Paillier in C++).

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/FPGA-Homomorphic-Encryption.git
   cd FPGA-Homomorphic-Encryption



## 🧪 Methodology

### 1. 🧪 **Python Prototyping**
- Implemented Sobel filter using NumPy + SciPy
- Verified edge detection on MNIST digit images

### 2. ⚙️ **High-Level Synthesis (HLS)**
- Converted algorithm to C++
- Applied FPGA optimizations:
  - Loop pipelining
  - Loop unrolling
  - Bit-width reduction (fixed-point)
  - Array partitioning & dataflow

### 3. 🛠️ **Hardware Integration (Vivado)**
- Imported the HLS-generated IP into Vivado
- Designed Zynq-based system with AXI interconnects
- Enabled DDR and UART communication

### 4. 💻 **Software Integration (Vitis)**
- Developed host code for the ARM processor (PS)
- Transferred data via UART, controlled the Sobel accelerator
- Retrieved and returned results to GUI

### 5. 🖼️ **GUI Development (Tkinter + Matplotlib)**
- Load and preview MNIST images
- Adjust Sobel threshold
- Visualize original vs. edge-detected image

---

## 📦 Features

✅ Key_generation, Encryption, decryption, homomorphic addition, agregation.  
✅ HLS-optimized homomorphic encryption  
✅ PC-FPGA communication via UART  
✅ Interactive Python GUI  
✅ breast cancer dataset from Kaggle  
✅ System-level integration using Vivado + Vitis  

---

## 🔬 Technologies Used

| Tool/Library         | Purpose                          |
|----------------------|----------------------------------|
| Python (NumPy, SciPy)| Algorithm prototyping            |
| Matplotlib, Tkinter  | GUI & Visualization              |
| C++ / Vitis HLS      |    |
| Xilinx Vivado        | FPGA block design & synthesis    |
| Vitis IDE            | Host code development            |
| UART                 | PC ↔ FPGA communication          |
| Zynq ZedBoard        | Target FPGA hardware             |

---

## 🖥️ GUI Overview

- Choose a digit image from MNIST
- Set edge detection threshold
- Run FPGA processing
- View results (gradient X, Y, and magnitude)

<img src="gui_screenshot.jpg" alt="GUI Screenshot" width="500"/>

---

## ⚙️ How to Run

### 💾 Prerequisites:
- Setup the dataset path in the GUI app
- Setup the dataset path in test bench file for vitis HLS simulation
- Vivado + Vitis installed
- Python ≥ 3.7 with required packages:
```bash
pip install numpy scipy pandas matplotlib pyserial
s
