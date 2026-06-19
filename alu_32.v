`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 16:30:24
// Design Name: 
// Module Name: alu_32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_32(
    input  [31:0] A,
    input  [31:0] B,
    input  [3:0] opcode,

    output reg [31:0] result,
    output reg carry,
    output zero
);

always @(*)
begin

    carry = 1'b0;

    case(opcode)

        // ADD
        4'b0000:
        begin
            {carry, result} = A + B;
        end

        // SUB
        4'b0001:
        begin
            {carry, result} = A - B;
        end

        // AND
        4'b0010:
        begin
            result = A & B;
        end

        // OR
        4'b0011:
        begin
            result = A | B;
        end

        // XOR
        4'b0100:
        begin
            result = A ^ B;
        end

        // NOT
        4'b0101:
        begin
            result = ~A;
        end

        // SHIFT LEFT
        4'b0110:
        begin
            result = A << 1;
        end

        // SHIFT RIGHT
        4'b0111:
        begin
            result = A >> 1;
        end

        // COMPARE
        4'b1000:
        begin
            if(A == B)
                result = 32'd1;
            else if(A > B)
                result = 32'd2;
            else
                result = 32'd0;
        end

        default:
        begin
            result = 32'd0;
            carry  = 1'b0;
        end

    endcase

end

assign zero = (result == 32'd0);

endmodule
`timescale 1ns / 1ps

module tb_alu_32;

reg [31:0] A;
reg [31:0] B;
reg [3:0] opcode;

wire [31:0] result;
wire carry;
wire zero;

alu_32 DUT(
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry(carry),
    .zero(zero)
);

initial
begin

    // ADD
    A = 32'd10;
    B = 32'd5;
    opcode = 4'b0000;
    #10;

    // SUB
    A = 32'd20;
    B = 32'd8;
    opcode = 4'b0001;
    #10;

    // AND
    A = 32'd15;
    B = 32'd7;
    opcode = 4'b0010;
    #10;

    // OR
    A = 32'd15;
    B = 32'd7;
    opcode = 4'b0011;
    #10;

    // XOR
    A = 32'd15;
    B = 32'd7;
    opcode = 4'b0100;
    #10;

    // NOT
    A = 32'd15;
    B = 32'd0;
    opcode = 4'b0101;
    #10;

    // SHIFT LEFT
    A = 32'd8;
    B = 32'd0;
    opcode = 4'b0110;
    #10;

    // SHIFT RIGHT
    A = 32'd8;
    B = 32'd0;
    opcode = 4'b0111;
    #10;

    // COMPARE (Equal)
    A = 32'd25;
    B = 32'd25;
    opcode = 4'b1000;
    #10;

    // COMPARE (Greater)
    A = 32'd30;
    B = 32'd20;
    opcode = 4'b1000;
    #10;

    // CARRY TEST
    A = 32'hFFFFFFFF;
    B = 32'd1;
    opcode = 4'b0000;
    #10;

    $finish;

end

initial
begin
    $monitor("T=%0t A=%d B=%d OPCODE=%b RESULT=%d CARRY=%b ZERO=%b",
              $time, A, B, opcode, result, carry, zero);
end

endmodule