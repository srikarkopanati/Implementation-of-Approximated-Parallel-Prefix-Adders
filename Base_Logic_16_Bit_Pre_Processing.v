
`timescale 1 ns / 1 ps

module Base_Logic_16_Bit_Pre_Processing (
	input       [15:0] a,
	input       [15:0] b,
	input              cin,
	output wire [15:0] p,
	output wire [16:0] g
);

Base_Logic BL1  ( .a_input (a[0]),  .b_input (cin),   .p_output (p[0]),  .g_output (g[0]) );
Base_Logic BL2  ( .a_input (a[1]),  .b_input (b[0]),  .p_output (p[1]),  .g_output (g[1]) );
Base_Logic BL3  ( .a_input (a[2]),  .b_input (b[1]),  .p_output (p[2]),  .g_output (g[2]) );
Base_Logic BL4  ( .a_input (a[3]),  .b_input (b[2]),  .p_output (p[3]),  .g_output (g[3]) );
Base_Logic BL5  ( .a_input (a[4]),  .b_input (b[3]),  .p_output (p[4]),  .g_output (g[4]) );
Base_Logic BL6  ( .a_input (a[5]),  .b_input (b[4]),  .p_output (p[5]),  .g_output (g[5]) );
Base_Logic BL7  ( .a_input (a[6]),  .b_input (b[5]),  .p_output (p[6]),  .g_output (g[6]) );
Base_Logic BL8  ( .a_input (a[7]),  .b_input (b[6]),  .p_output (p[7]),  .g_output (g[7]) );
Base_Logic BL9  ( .a_input (a[8]),  .b_input (b[7]),  .p_output (p[8]),  .g_output (g[8]) );
Base_Logic BL10 ( .a_input (a[9]),  .b_input (b[8]),  .p_output (p[9]),  .g_output (g[9]) );
Base_Logic BL11 ( .a_input (a[10]), .b_input (b[ 9]), .p_output (p[10]), .g_output (g[10]) );
Base_Logic BL12 ( .a_input (a[11]), .b_input (b[10]), .p_output (p[11]), .g_output (g[11]) );
Base_Logic BL13 ( .a_input (a[12]), .b_input (b[11]), .p_output (p[12]), .g_output (g[12]) );
Base_Logic BL14 ( .a_input (a[13]), .b_input (b[12]), .p_output (p[13]), .g_output (g[13]) );
Base_Logic BL15 ( .a_input (a[14]), .b_input (b[13]), .p_output (p[14]), .g_output (g[14]) );
Base_Logic BL16 ( .a_input (a[15]), .b_input (b[14]), .p_output (p[15]), .g_output (g[15]) );

assign g[16] = b[15];

endmodule

