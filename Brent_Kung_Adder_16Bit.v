
`timescale 1 ns / 1 ps

module Brent_Kung_Adder_16Bit (
	input               cin,
	input       [15:0]  p,
	input       [15:0]  g,
	output wire [15:0]  gx,
	output wire [15:0]  px
);

LSB_AxPO LSBx1 (
	.p                 (p[7:0]),
	.g                 (g[7:0]),
	.px                (px[7:0]),
	.gx                (gx[7:0])
);

MSB_Brent_Kung_Exact MSBx1 (
	.cin               (cin),
	.p                 (p[15:8]),
	.g                 (g[15:8]),
	.gx                (gx[15:8]),
	.px                (px[15:8])
);

endmodule

