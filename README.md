<h1 align="center"> 32 bit ALU </h1>

<h3 align="center">
A synthesizable **32-bit Arithmetic Logic Unit (ALU)**  . The project implements arithmetic, logical, shift, and comparison operations with status flag generation, making it suitable for integration into a **32-bit RISC processor datapath**.
</h3>

<p align="center">
<img src="https://img.shields.io/badge/Language-Verilog-blue.svg"/>
<img src="https://img.shields.io/badge/Tool-Xilinx%20Vivado-green.svg"/>
<img src="https://img.shields.io/badge/Simulation-Passed-success.svg"/>
<img src="https://img.shields.io/badge/RTL-ALU-orange.svg"/>
</p>


## 📌 Project Overview

The Arithmetic Logic Unit (ALU) is the computational core of every processor. This project implements a **32-bit combinational ALU** capable of performing multiple arithmetic and logical operations selected through a **4-bit opcode**.

The design is written in synthesizable Verilog HDL, functionally verified using a dedicated testbench, and validated through RTL synthesis and simulation in Vivado.

---

## ✨ Features

- ✅ Fully synthesizable Verilog HDL design
- ✅ Pure combinational architecture (No clock required)
- ✅ 32-bit datapath
- ✅ 4-bit opcode control
- ✅ Carry Flag generation
- ✅ Zero Flag generation
- ✅ Vivado RTL Schematic
- ✅ Functional simulation with waveform verification
- ✅ Modular and processor-ready architecture

---

# 🛠️ Tools Used

| Tool | Purpose |
|------|----------|
| Vivado Design Suite | Design, Synthesis & Simulation |
| Verilog HDL | Hardware Description Language |
| Xilinx xsim | Functional Simulation |
| Git & GitHub | Version Control |

---

# 📐 ALU Architecture

The ALU accepts two 32-bit operands (**A** and **B**) and executes the selected operation based on a **4-bit opcode**.

### Data Flow


<p align="center">
 <img width="1122" height="705" alt="Screenshot 2026-06-10 235651" src="https://github.com/user-attachments/assets/ef93a786-4f58-4391-ad91-4cf1b50966be" />

</p>



---

# ⚙️ Supported Operations

| Opcode | Operation |
|---------|-----------|
| 0000 | Addition |
| 0001 | Subtraction |
| 0010 | AND |
| 0011 | OR |
| 0100 | XOR |
| 0101 | NOT |
| 0110 | Logical Left Shift |
| 0111 | Logical Right Shift |
| 1000 | Magnitude Comparison |



---

# 🔍 RTL Design

The synthesized RTL architecture consists of:

- Arithmetic Unit
- Logic Unit
- Shift Unit
- Comparator
- Multiplexer-based Result Selection
- Carry Generation
- Zero Flag Logic

The design is purely combinational, allowing zero-cycle output updates.

---

# 📊 Simulation Results

The design was verified using **Vivado Simulator (xsim)**.

### Test Cases

✔ Addition

✔ Subtraction

✔ AND

✔ OR

✔ XOR

✔ NOT

✔ Logical Left Shift

✔ Logical Right Shift

✔ Magnitude Comparison

✔ Carry Overflow Test

### Sample Verification

| Operation | Expected | Status |
|-----------|----------|--------|
| ADD | ✅ | Passed |
| SUB | ✅ | Passed |
| AND | ✅ | Passed |
| OR | ✅ | Passed |
| XOR | ✅ | Passed |
| NOT | ✅ | Passed |
| SHL | ✅ | Passed |
| SHR | ✅ | Passed |
| CMP | ✅ | Passed |
| Carry Test | ✅ | Passed |

<img width="1545" height="447" alt="Screenshot 2026-06-10 235309" src="https://github.com/user-attachments/assets/ca40663f-28aa-4439-8347-8e8d420ea285" />

---

# 📈 Status Flags

### Carry Flag

Generated during:

- Addition
- Subtraction

Used for overflow/borrow detection.

---

### Zero Flag

```
Zero = (Result == 0)
```

Automatically asserted whenever the output result equals zero.


---





## RTL Schematic

<img width="992" height="529" alt="Screenshot 2026-06-10 235213" src="https://github.com/user-attachments/assets/1e3d2002-7228-49f0-a16f-a1ae2a8ec3bc" />

---
# 💡 Applications

- RISC Processor Datapaths
- CPU Execution Units
- Embedded Processors
- FPGA-based Computing
- Digital System Design
- ASIC Front-End Design
- Educational RTL Projects

---

# 📚 Learning Outcomes

Through this project, I gained hands-on experience in:

- RTL Design
- Verilog HDL
- Combinational Circuit Design
- Opcode Decoding
- Arithmetic Logic Design
- Functional Verification
- Testbench Development
- Vivado Simulation
- RTL Schematic Analysis
- FPGA Design Flow


---


# 📄 Report

A detailed technical report is included covering:

- Design Methodology
- RTL Architecture
- Verilog Implementation
- Testbench
- Simulation Results
- Conclusion

---

# 👩‍💻 Author

**Lakshmi Bhavani Katta**

Electronics & Communication Engineering  
VLSI • FPGA • RTL Design • Embedded Systems

📧 kattalakshmibhavani2110@gmail.com

🔗 GitHub: https://github.com/Bhavani211004

---

⭐ If you found this project useful, consider giving it a **Star**.
