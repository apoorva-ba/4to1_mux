# 4to1_mux
Verilog implementation and functional verification of 4:1 multiplexer using a testbench and simulation waveform.
## Design Description
A 4:1 Multiplexer is a combinational circuit that selects one of four inputs (a, b, c,d) depending on the value of the select lines (sel).

- If sel = 00, Output y = a
- If sel = 01, Output y = b
- If sel = 10, Output y = c
- If sel = 11, Output y = d

## Boolean Expression

y = (sel == 00) ? a : 
    (sel == 01) ? b : 
    (sel == 10) ? c : d

## Inputs and Outputs

| Signal | Direction | Description |
|---------|-----------|-------------|
| a | Input | Data Input A |
| b | Input | Data Input B |
| c | Input | Data Input C |
| d | Input | Data Input D |
| sel | Input | 2-bit Select Signal |
| y | Output | Multiplexer Output |


## Truth Table

| sel | a | b | c | d | y |
|-----|---|---|---|---|---|
| 00 | 0 | X | X | X | 0 |
| 01 | X | 1 | X | X | 1 |
| 10 | X | X | 0 | X | 0 |
| 11 | X | X | X | 1 | 1 |


##Author
- Apoorva B A
- ECE Student
