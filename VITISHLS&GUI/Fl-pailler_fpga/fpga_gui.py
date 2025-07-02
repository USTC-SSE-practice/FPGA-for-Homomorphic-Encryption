import tkinter as tk
from tkinter import ttk, messagebox, filedialog
import serial
import serial.tools.list_ports
import threading
import time
import csv
import random
import math

class FederatedLearningGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("Federated Learning with Paillier Encryption")
        self.root.geometry("900x700")
        
        # Serial connection variables
        self.serial_connection = None
        self.serial_thread = None
        self.stop_thread = False
        
        # FL variables
        self.dataset = []
        self.encrypted_data = []
        self.decrypted_results = []
        self.N = 3127  # Default from your C code (53*59)
        self.N2 = self.N ** 2
        self.G = self.N + 1
        self.LAMBDA = (self.N - 53 - 59 + 1) // 2  # p=53, q=59 from your C code
        self.mu = 1
        self.r = 7  # Fixed random value from your C code
        
        self.create_widgets()
        
    def create_widgets(self):
        # Connection Frame
        connection_frame = ttk.LabelFrame(self.root, text="FPGA Connection", padding=10)
        connection_frame.pack(fill=tk.X, padx=10, pady=5)
        
        ttk.Label(connection_frame, text="Port:").grid(row=0, column=0, sticky=tk.W)
        self.port_combo = ttk.Combobox(connection_frame, width=15)
        self.port_combo.grid(row=0, column=1, padx=5)
        
        self.refresh_btn = ttk.Button(connection_frame, text="Refresh", command=self.refresh_ports)
        self.refresh_btn.grid(row=0, column=2, padx=5)
        
        ttk.Label(connection_frame, text="Baud Rate:").grid(row=1, column=0, sticky=tk.W)
        self.baud_combo = ttk.Combobox(connection_frame, values=[9600, 19200, 38400, 57600, 115200], width=10)
        self.baud_combo.grid(row=1, column=1, padx=5, pady=5)
        self.baud_combo.set("115200")
        
        self.connect_btn = ttk.Button(connection_frame, text="Connect", command=self.toggle_connection)
        self.connect_btn.grid(row=1, column=2, padx=5)
        
        # Data Frame
        data_frame = ttk.LabelFrame(self.root, text="Data Management", padding=10)
        data_frame.pack(fill=tk.X, padx=10, pady=5)
        
        self.load_btn = ttk.Button(data_frame, text="Load Dataset", command=self.load_dataset)
        self.load_btn.pack(side=tk.LEFT, padx=5)
        
        self.send_btn = ttk.Button(data_frame, text="Send to FPGA", command=self.send_data, state=tk.DISABLED)
        self.send_btn.pack(side=tk.LEFT, padx=5)
        
        # FL Operations Frame
        ops_frame = ttk.LabelFrame(self.root, text="Federated Learning Operations", padding=10)
        ops_frame.pack(fill=tk.X, padx=10, pady=5)
        
        self.encrypt_btn = ttk.Button(ops_frame, text="Encrypt Data", command=self.encrypt_data, state=tk.DISABLED)
        self.encrypt_btn.pack(side=tk.LEFT, padx=5)
        
        self.aggregate_btn = ttk.Button(ops_frame, text="Aggregate", command=self.aggregate_data, state=tk.DISABLED)
        self.aggregate_btn.pack(side=tk.LEFT, padx=5)
        
        self.decrypt_btn = ttk.Button(ops_frame, text="Decrypt Results", command=self.decrypt_results, state=tk.DISABLED)
        self.decrypt_btn.pack(side=tk.LEFT, padx=5)
        
        self.classify_btn = ttk.Button(ops_frame, text="Classify", command=self.classify_results, state=tk.DISABLED)
        self.classify_btn.pack(side=tk.LEFT, padx=5)
        
        # Log Frame
        log_frame = ttk.LabelFrame(self.root, text="Log", padding=10)
        log_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=5)
        
        self.log_text = tk.Text(log_frame, height=15, state=tk.DISABLED)
        self.log_text.pack(fill=tk.BOTH, expand=True)
        
        scrollbar = ttk.Scrollbar(log_frame, orient=tk.VERTICAL, command=self.log_text.yview)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        self.log_text.config(yscrollcommand=scrollbar.set)
        
        # Status Bar
        self.status_var = tk.StringVar()
        self.status_var.set("Ready")
        status_bar = ttk.Label(self.root, textvariable=self.status_var, relief=tk.SUNKEN)
        status_bar.pack(fill=tk.X, padx=10, pady=5)
        
        # Initialize
        self.refresh_ports()
        
    def refresh_ports(self):
        ports = [port.device for port in serial.tools.list_ports.comports()]
        self.port_combo['values'] = ports
        if ports:
            self.port_combo.set(ports[0])
            
    def toggle_connection(self):
        if self.serial_connection and self.serial_connection.is_open:
            self.disconnect()
        else:
            self.connect()
            
    def connect(self):
        port = self.port_combo.get()
        baud = self.baud_combo.get()
        
        if not port:
            messagebox.showerror("Error", "Please select a port")
            return
            
        try:
            self.serial_connection = serial.Serial(port, int(baud), timeout=1)
            self.stop_thread = False
            self.serial_thread = threading.Thread(target=self.read_serial)
            self.serial_thread.daemon = True
            self.serial_thread.start()
            
            self.connect_btn.config(text="Disconnect")
            self.status_var.set(f"Connected to {port} at {baud} baud")
            self.log_message(f"Connected to {port} at {baud} baud")
        except Exception as e:
            messagebox.showerror("Connection Error", str(e))
            
    def disconnect(self):
        if self.serial_connection and self.serial_connection.is_open:
            self.stop_thread = True
            if self.serial_thread and self.serial_thread.is_alive():
                self.serial_thread.join(1)
            self.serial_connection.close()
            
        self.connect_btn.config(text="Connect")
        self.status_var.set("Disconnected")
        self.log_message("Disconnected from FPGA")
        
    def read_serial(self):
        buffer = ""
        while not self.stop_thread and self.serial_connection and self.serial_connection.is_open:
            try:
                if self.serial_connection.in_waiting > 0:
                    data = self.serial_connection.read(self.serial_connection.in_waiting).decode('ascii', errors='ignore')
                    buffer += data
                    
                    while '\n' in buffer:
                        line, buffer = buffer.split('\n', 1)
                        self.log_message(f"FPGA: {line.strip()}")
                        
                        # Process special messages from FPGA
                        if "Decrypted aggregated model" in line:
                            try:
                                values = [int(x) for x in line.split(':')[1].strip().split()]
                                self.decrypted_results = values
                                self.decrypt_btn.config(state=tk.NORMAL)
                                self.classify_btn.config(state=tk.NORMAL)
                            except:
                                pass
                                
            except Exception as e:
                self.log_message(f"Serial read error: {str(e)}")
                time.sleep(0.1)
                
    def log_message(self, message):
        self.log_text.config(state=tk.NORMAL)
        self.log_text.insert(tk.END, message + "\n")
        self.log_text.see(tk.END)
        self.log_text.config(state=tk.DISABLED)
        
    def load_dataset(self):
        file_path = filedialog.askopenfilename(title="Select Dataset", 
                                             filetypes=(("CSV files", "*.csv"), ("All files", "*.*")))
        if not file_path:
            return
            
        try:
            with open(file_path, 'r') as file:
                reader = csv.reader(file)
                next(reader)  # Skip header
                self.dataset = []
                for row in reader:
                    try:
                        # Assuming similar format to your C code (3rd column is feature)
                        value = float(row[3])  # Adjust index as needed for your CSV
                        self.dataset.append(int(value * 100))  # Scale as in your C code
                    except (IndexError, ValueError):
                        continue
                        
            self.log_message(f"Loaded {len(self.dataset)} data points from {file_path}")
            self.send_btn.config(state=tk.NORMAL)
            self.encrypt_btn.config(state=tk.NORMAL)
            
        except Exception as e:
            messagebox.showerror("Error", f"Failed to load dataset: {str(e)}")
            
    def send_data(self):
        if not self.serial_connection or not self.serial_connection.is_open:
            messagebox.showerror("Error", "Not connected to FPGA")
            return
            
        if not self.dataset:
            messagebox.showerror("Error", "No data loaded")
            return
            
        try:
            # Send data in chunks
            chunk_size = 10
            for i in range(0, len(self.dataset), chunk_size):
                chunk = self.dataset[i:i+chunk_size]
                data_line = ",".join(map(str, chunk)) + "\n"
                self.serial_connection.write(data_line.encode())
                self.log_message(f"Sent {len(chunk)} data points to FPGA")
                
            # Send end marker
            self.serial_connection.write(b"DONE\n")
            self.log_message("Finished sending data to FPGA")
            
        except Exception as e:
            messagebox.showerror("Error", f"Failed to send data: {str(e)}")
            
    def encrypt_data(self):
        if not self.dataset:
            messagebox.showerror("Error", "No data loaded")
            return
            
        try:
            self.encrypted_data = []
            for value in self.dataset:
                encrypted = self.paillier_encrypt(value % self.N, self.r)
                self.encrypted_data.append(encrypted)
                
            self.log_message(f"Encrypted {len(self.encrypted_data)} values")
            self.aggregate_btn.config(state=tk.NORMAL)
            
            # Show sample
            sample_size = min(5, len(self.encrypted_data))
            sample = ", ".join(str(x) for x in self.encrypted_data[:sample_size])
            self.log_message(f"Sample encrypted values: {sample}...")
            
        except Exception as e:
            messagebox.showerror("Error", f"Encryption failed: {str(e)}")
            
    def paillier_encrypt(self, m, r):
        """Python implementation matching your C code's Paillier encryption"""
        gm = pow(self.G, m, self.N2)
        rn = pow(r, self.N, self.N2)
        return (gm * rn) % self.N2
        
    def paillier_decrypt(self, c):
        """Python implementation matching your C code's Paillier decryption"""
        cl = pow(c, self.LAMBDA, self.N2)
        L = (cl - 1) // self.N
        return (L * self.mu) % self.N
        
    def aggregate_data(self):
        if not self.encrypted_data:
            messagebox.showerror("Error", "No encrypted data")
            return
            
        try:
            # Simulate federated aggregation (sum in encrypted space)
            # In a real scenario, this would come from multiple clients
            aggregated = 1
            for val in self.encrypted_data:
                aggregated = (aggregated * val) % self.N2
                
            self.log_message(f"Aggregated encrypted result: {aggregated}")
            
            # For demo purposes, send to FPGA for decryption
            if self.serial_connection and self.serial_connection.is_open:
                self.serial_connection.write(f"DECRYPT {aggregated}\n".encode())
                self.log_message("Sent aggregated result to FPGA for decryption")
                
        except Exception as e:
            messagebox.showerror("Error", f"Aggregation failed: {str(e)}")
            
    def decrypt_results(self):
        if not self.decrypted_results:
            messagebox.showerror("Error", "No results to decrypt")
            return
            
        try:
            self.log_message("Decrypted results from FPGA:")
            sample_size = min(10, len(self.decrypted_results))
            sample = ", ".join(str(x) for x in self.decrypted_results[:sample_size])
            self.log_message(f"Sample results: {sample}...")
            
        except Exception as e:
            messagebox.showerror("Error", f"Failed to process results: {str(e)}")
            
    def classify_results(self):
        if not self.decrypted_results:
            messagebox.showerror("Error", "No results to classify")
            return
            
        try:
            # Simple threshold-based classification (replace with your actual model)
            threshold = sum(self.decrypted_results) / len(self.decrypted_results)
            diagnosis = "M (malignant)" if threshold > 5000 else "B (benign)"  # Adjust threshold as needed
            
            self.log_message("\nClassification Results:")
            self.log_message(f"Average value: {threshold:.2f}")
            self.log_message(f"Diagnosis: {diagnosis}")
            
        except Exception as e:
            messagebox.showerror("Error", f"Classification failed: {str(e)}")

if __name__ == "__main__":
    root = tk.Tk()
    app = FederatedLearningGUI(root)
    root.mainloop()