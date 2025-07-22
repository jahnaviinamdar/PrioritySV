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
- `wave.do`  – Waveform script for ModelSim
## Waveform
<img width="1890" height="789" alt="Waveform" src="https://github.com/user-attachments/assets/6f334ea2-6e47-449f-8aa3-6da7d7312388" />


