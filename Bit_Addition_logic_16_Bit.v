
`timescale 1 ns / 1 ps

module Bit_Addition_logic_16_Bit (
	input          [15:0] a,
	input          [15:0] b,
	input          [15:0] c,
	output wire    [15:0] sum,
	output wire    [15:0] carry
);

Bit_Addition_Logic BAL1  ( .a (a[0] ), .b (b[0] ), .c (c[0] ), .sum (sum[0] ), .carry (carry[0] ) );
Bit_Addition_Logic BAL2  ( .a (a[1] ), .b (b[1] ), .c (c[1] ), .sum (sum[1] ), .carry (carry[1] ) );
Bit_Addition_Logic BAL3  ( .a (a[2] ), .b (b[2] ), .c (c[2] ), .sum (sum[2] ), .carry (carry[2] ) );
Bit_Addition_Logic BAL4  ( .a (a[3] ), .b (b[3] ), .c (c[3] ), .sum (sum[3] ), .carry (carry[3] ) );
Bit_Addition_Logic BAL5  ( .a (a[4] ), .b (b[4] ), .c (c[4] ), .sum (sum[4] ), .carry (carry[4] ) );
Bit_Addition_Logic BAL6  ( .a (a[5] ), .b (b[5] ), .c (c[5] ), .sum (sum[5] ), .carry (carry[5] ) );
Bit_Addition_Logic BAL7  ( .a (a[6] ), .b (b[6] ), .c (c[6] ), .sum (sum[6] ), .carry (carry[6] ) );
Bit_Addition_Logic BAL8  ( .a (a[7] ), .b (b[7] ), .c (c[7] ), .sum (sum[7] ), .carry (carry[7] ) );
Bit_Addition_Logic BAL9  ( .a (a[8] ), .b (b[8] ), .c (c[8] ), .sum (sum[8] ), .carry (carry[8] ) );
Bit_Addition_Logic BAL10 ( .a (a[9] ), .b (b[9] ), .c (c[9] ), .sum (sum[9] ), .carry (carry[9] ) );
Bit_Addition_Logic BAL11 ( .a (a[10]), .b (b[10]), .c (c[10]), .sum (sum[10]), .carry (carry[10]) );
Bit_Addition_Logic BAL12 ( .a (a[11]), .b (b[11]), .c (c[11]), .sum (sum[11]), .carry (carry[11]) );
Bit_Addition_Logic BAL13 ( .a (a[12]), .b (b[12]), .c (c[12]), .sum (sum[12]), .carry (carry[12]) );
Bit_Addition_Logic BAL14 ( .a (a[13]), .b (b[13]), .c (c[13]), .sum (sum[13]), .carry (carry[13]) );
Bit_Addition_Logic BAL15 ( .a (a[14]), .b (b[14]), .c (c[14]), .sum (sum[14]), .carry (carry[14]) );
Bit_Addition_Logic BAL16 ( .a (a[15]), .b (b[15]), .c (c[15]), .sum (sum[15]), .carry (carry[15]) );

endmodule

