
`timescale 1 ns / 1 ps

module AxPPA_Three_Operand_Adder_Kogge_Stone (
	input                 clk,
	input                 reset,
	input        [15:0]   a_input,
	input        [15:0]   b_input,
	input        [15:0]   c_input,
	output wire  [15:0]   sum_output
);

parameter cin = 1'b0;

wire [15:0] s;
wire [15:0] c;
wire [15:0] p;
wire [16:0] g;
wire [15:0] gx;
wire [15:0] px;

Bit_Addition_logic_16_Bit BAL32 (
	.a                (a_input),
	.b                (b_input),
	.c                (c_input),
	.sum              (s),
	.carry            (c)
);

Base_Logic_16_Bit_Pre_Processing BL32 (
	.a                (s),
	.b                (c),
	.cin              (cin),
	.p                (p),
	.g                (g)
);

Kogge_Stone_Adder_16Bit  PG_LOGIC (
	.cin              (cin),
	.p                (p[15:0]),
	.g                (g[15:0]),
	.gx               (gx),
	.px               (px)
);

Sum_Logic SLG (
	.gx               (gx),
	.px               (px),
	.sum_output       (sum_output)
);


endmodule


