
`timescale 1ps / 1ps

module Full_Adder(
	 input        a,
	 input        b,
	 input        c,
	 output wire  sum,
	 output wire  carry
 );

wire s1;
wire c1;
wire c2;

    Half_Adder h1 (
	     .a      (a),
	     .b      (b),
	     .sum    (s1),
	     .carry  (c1)
             );

    Half_Adder h2 (
	     .a      (s1),
	     .b      (c),
	     .sum    (sum),
	     .carry  (c2)
             );

    assign carry = c1 | c2;

endmodule

