# PrioritySV - Advanced 4-Way Round Robin Arbiter

## 🚀 Overview
This project implements an advanced 4-way round-robin arbiter using **SystemVerilog**, designed for fair resource allocation among four input requesters. It gives priority based on a rotating policy and handles simultaneous requests in a non-starving manner.

## 📌 Features
- 4 input request signals
- Round-robin arbitration with rotating priority
- Generates `grant` signal per requester
- Avoids starvation and ensures fairness

## 🧠 Concepts Used
- FSM design
- Priority logic
- SystemVerilog modules and always blocks
- Testbench development and simulation

## 🔧 Tools Used
- **VS Code** for code editing  
- **ModelSim** for simulation and waveform viewing  
- **GitHub** for version control and collaboration

## 📜 Files
- `arbiter.sv` – Main RTL code for the arbiter
- `arbiter_tb.sv` – Testbench with various test cases
- `wave.do` *(optional)* – Waveform script for ModelSim

## ✅ How to Run (ModelSim)
```bash
vlib work
vlog src/arbiter.sv tb/arbiter_tb.sv
vsim work.arbiter_tb
do wave.do     # (optional if you created a waveform file)
run -all
