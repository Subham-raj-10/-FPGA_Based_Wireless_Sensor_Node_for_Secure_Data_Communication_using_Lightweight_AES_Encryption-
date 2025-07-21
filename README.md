# FPGA-Based Wireless Sensor Node for Secure Data Communication

This project demonstrates the design and implementation of a **secure wireless sensor node** using **Verilog HDL**. The system simulates sensor data, encrypts it using a lightweight AES module, decrypts it back, and matches it with delayed original data to verify secure transmission.

---

## 📦 Project Structure

### 🔹 sensor_dummy.v
Simulates real-time sensor data by incrementing an 8-bit value every clock cycle.

### 🔹 aes_128.v
Implements a **dummy AES encryption/decryption** logic using XOR with a fixed 128-bit key (replaceable by real AES core).

### 🔹 wsn_top.v
Top-level design module:
- Captures sensor data.
- Passes it through AES encryption.
- Decrypts it and verifies the output.
- Outputs delayed sensor data for visual matching with decrypted data.

### 🔹 tb_wsn_top.v
Testbench to:
- Provide stimulus (clock/reset).
- Monitor encrypted and decrypted outputs.
- Dump waveform for GTKWave visualization.

---

## 🔁 Functional Flow

1. **Sensor generates data** ⟶  
2. **128-bit AES encryption** ⟶  
3. **AES decryption** ⟶  
4. **Decrypted data compared with delayed original sensor data**

This verifies that encryption-decryption is functioning as expected.

---

## 🖼️ Simulation Snapshot

<img width="1576" height="467" alt="encryption_decryption" src="https://github.com/user-attachments/assets/0c1b343f-64d1-4562-b832-69256b5a3fd8" />

- Green waveforms show 3-cycle delayed sensor data and decrypted output.
- AES encryption and decryption validated using dummy logic.
- Waveform shows data recovery accuracy.

---

## Schematic
<img width="1075" height="809" alt="image" src="https://github.com/user-attachments/assets/aefe9bb7-e4f6-4ffd-ac4a-591501fff706" />




## 🚀 Applications

- Wireless IoT sensor security
- FPGA-based lightweight crypto testing
- Real-time data integrity and authentication
- Secure key exchange prototyping
- Embedded system design education

---

## 🔧 Future Enhancements

- Integrate real AES core (S-Box, MixColumns, etc.)
- Add ECC (Elliptic Curve Cryptography) and SHA-256 for full secure stack
- Interface with actual wireless modules (Zigbee/LoRa/UART)
- Implement low-power and error detection features
- Extend to multi-node secure communication network

---

## 👨‍💻 Developed With

- **Verilog HDL**
- **AMD Vivado**

---

## 📌 Status

✅ AES pipeline working (dummy)  
✅ Decryption matches original sensor data  
🔄 Ready for integration with full crypto stack  

---

> For educational and prototype purposes. Replace dummy AES with real crypto for deployment.

