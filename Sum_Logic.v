
`timescale 1 ns / 1 ps

module Sum_Logic (
	input       [15:0] gx,
	input       [15:0] px,
	output wire [15:0] sum_output
);

assign sum_output = gx[15:0] ^ px[15:0];

endmodule

