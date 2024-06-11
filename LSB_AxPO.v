
`timescale 1 ns / 1 ps

module LSB_AxPO (
	input       [7:0] p,
	input       [7:0] g,
	output wire [7:0] px,
	output wire [7:0] gx
);

assign px = p;
assign gx = g;

endmodule

