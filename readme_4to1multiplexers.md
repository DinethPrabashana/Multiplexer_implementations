## Introduction to Multiplexers

A multiplexer (MUX) is a combinational circuit that selects one of many input signals and forwards the selected input to a single output line. Multiplexers are widely used in digital circuits to manage multiple data lines efficiently.

### Functionality
Multiplexers operate using select lines, which determine which input to route to the output. The number of select lines (n) determines the number of inputs (2^n) that the MUX can handle.

### Types of Multiplexers
- **2-to-1 Multiplexer**: Selects one of two inputs.
- **4-to-1 Multiplexer**: Selects one of four inputs.
- **8-to-1 Multiplexer**: Selects one of eight inputs.
- **16-to-1 Multiplexer**: Selects one of sixteen inputs.

### Block Diagram
![multiplexer4](https://github.com/DinethPrabashana/Verilog/assets/143341376/e75e05bf-3f2a-4a80-a8eb-6c413d69c93b)
)

### Truth Table Example for 4-to-1 MUX
| Select Lines | Output |
|--------------|--------|
| S1 | S0 | Y    |
|----|----|------|
| 0  | 0  | D0   |
| 0  | 1  | D1   |
| 1  | 0  | D2   |
| 1  | 1  | D3   |

### Verilog Code Example for 4-to-1 MUX
```verilog
module MUX4to1 (
    input wire D0, D1, D2, D3,
    input wire S0, S1,
    output wire Y
);
    assign Y = (S1 == 0 && S0 == 0) ? D0 :
               (S1 == 0 && S0 == 1) ? D1 :
               (S1 == 1 && S0 == 0) ? D2 :
               (S1 == 1 && S0 == 1) ? D3 : 1'bx;
endmodule
