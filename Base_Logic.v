
`timescale 1 ns / 1 ps

module Base_Logic (
	input       a_input,
	input       b_input,
	output wire p_output,
	output wire g_output
);

assign p_output = a_input ^ b_input;
assign g_output = a_input & b_input;

endmodule

