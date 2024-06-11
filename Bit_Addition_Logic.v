
`timescale 1 ns / 1 ps

module Bit_Addition_Logic (
	input              a,
	input              b,
	input              c,
	output wire        sum,
	output wire        carry
);

wire t1;
wire t2;
wire c1;

/// --------- H1 -----------

assign t1 = b ^ c;
assign t2 = b & c;

/// --------- H2 -----------

assign sum = a ^ t1;
assign c1  = a & t1;

assign carry = t2 | c1;

endmodule

