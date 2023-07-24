# IITISoC-23Microprocessor

This microprocessor was designed using Verilog HDL for IITISOC'23.
Members: Mansi Choudhary, Prakhar Goel, Aryan Kumar, Anirooddh Patidar

1. Problem Statement: Microprocessor Design Advanced
Description: Design the microprocessor of a computer using Hardware Description Language
Specification: Hardware description languages are one of the most essential tools in designing digital components like Registers, ALU, CU of a computer. Design a microprocessor using Verilog language. The students have the freedom to select the type of architecture for their microprocessor. The bit-size of memory, ALU and other units of the CPU are not fixed. Remember, the design should be in Verilog language only.

2. Initial Plan: ● The microprocessor will be a simple 8-bit single-cycle processor which includes an ALU, a register file, and control logic.
● A simple instruction set architecture will be implemented which will include the instructions like add, sub, and, or, mov, and load,etc.
● The microprocessor will have an 8-bit data and a 16-bit address bus.
● It will also include 16-bit program counter and a 16-bit stack pointer
● The microprocessor design will be done in Verilog HDL

3. Final Specifications: The microprocessor remains a 8 bit one, it stores data in 8 bit form.
   General Architecture: Register stack- 4 registers of 8 bit each, therefore a 2-bit address in its simplest representation
   ALU: Currently performing 4 operations: add, subtract, bitwise and, bitwise xor operation; easily expandable to many more instructions
   Instruction register: 4 instruction registers of 8 bit each, therefore a 2-bit address in its simplest representation
   Instruction decoder: Decodes each instruction into opcode and data addresses and sends it to the ALU/register stack
   Control unit: Starts the processing of instructions, one at a time

   Instruction format: 8 bit, first two represent the opcode; next two represent the address of the first operand; the next two represent the address of the second operation and the last two bits are currently unused, left for use during further development of this microprocessor

   Further improvements: A lot of modifications can be on this processor. This design is one of the most basic ones with a simple logic in use. To begin with, a proper well-defined instruction set can be added. An external memory can be added to store data and instructions. Proper pipelining and interrupt controls can be included. 
