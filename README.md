# 🧩 4×4 Barrel Shifter in Verilog
**3-1 VLSI Design Project**

This repository contains a **4-bit rotational barrel shifter** implemented in Verilog HDL.  
The design performs **left and right circular shifts** by 0–3 positions in a single combinational step using mux-based logic.

---

## ✨ Features
- 4-bit input (`data_in`)
- Shift amount: **0, 1, 2, or 3**
- Direction control (`dir`):
  - `0` → Left rotate
  - `1` → Right rotate
- Purely **combinational** using `always @(*)`
- Includes a **testbench** for waveform verification
- Useful in ALUs, datapaths, shifters in CPUs (RISC-V, ARM)

---

## 📁 File Structure
```
/barrel_shifter
│── barrel_shifter.v        # Main 4x4 barrel shifter module
│── barrel_shifter_tb.v     # Testbench for simulation
│── README.md               # Documentation
```

---

## 🔧 Tools Used
- **Verilog HDL**
- (Any simulator like Vivado)

---

## ▶️ Simulation Steps
1. Open your Verilog simulator.
2. Compile the modules:
   ```
   barrel_shifter.v
   barrel_shifter_tb.v
   ```
3. Run the testbench
4. Check the waveform for left/right rotations.

---

## 📘 Learning Outcome
This project strengthens core digital design concepts used in:
- ALU shift operations  
- Processor datapaths  
- Multiplexer-based combinational blocks  
- Circular shift logic  
- RTL design fundamentals  

This was done as part of my **3-1 VLSI Design** subject.

---

## 📝 Example Output  
**Left rotate by 1**

Input:
```
data_in   = 1011
shift_amt = 01
dir       = 0
```

Output:
```
0111
```

---
