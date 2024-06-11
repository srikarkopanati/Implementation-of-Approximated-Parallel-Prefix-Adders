
`timescale 1 ns / 1 ps

module MSB_Kogge_Stone_Exact (
	input              cin,
	input       [7:0]  p,
	input       [7:0]  g,
	output wire [7:0]  gx,
	output wire [7:0]  px
);

wire [7:0]  gka;
wire [6:0]  pka;
wire [6:0]  o_gk1;
wire [5:0]  o_pk1;

wire [6:0]  gkb;
wire [41:0] pkb;
wire [6:0]  o_gk2;
wire [3:0]  o_pk2;

wire [3:0] gkc;
wire [6:0] o_gk3;

//===================== STAGE 1 ===========================

assign gka[0]     = cin;
assign gka[7:1]   = g[6:0];
assign pka        = p[6:0];

grey  gc_0  (                  .i_gj (gka[0 ]),  .i_pk (p[0 ]), .i_gk (g[0 ]), .o_g (o_gk1[0 ]) );
black bc_0  ( .i_pj (pka[0 ]), .i_gj (gka[1 ]),  .i_pk (p[1 ]), .i_gk (g[1 ]), .o_g (o_gk1[1 ]), .o_p (o_pk1[0 ]) );
black bc_1  ( .i_pj (pka[1 ]), .i_gj (gka[2 ]),  .i_pk (p[2 ]), .i_gk (g[2 ]), .o_g (o_gk1[2 ]), .o_p (o_pk1[1 ]) );
black bc_2  ( .i_pj (pka[2 ]), .i_gj (gka[3 ]),  .i_pk (p[3 ]), .i_gk (g[3 ]), .o_g (o_gk1[3 ]), .o_p (o_pk1[2 ]) );
black bc_3  ( .i_pj (pka[3 ]), .i_gj (gka[4 ]),  .i_pk (p[4 ]), .i_gk (g[4 ]), .o_g (o_gk1[4 ]), .o_p (o_pk1[3 ]) );
black bc_4  ( .i_pj (pka[4 ]), .i_gj (gka[5 ]),  .i_pk (p[5 ]), .i_gk (g[5 ]), .o_g (o_gk1[5 ]), .o_p (o_pk1[4 ]) );
black bc_5  ( .i_pj (pka[5 ]), .i_gj (gka[6 ]),  .i_pk (p[6 ]), .i_gk (g[6 ]), .o_g (o_gk1[6 ]), .o_p (o_pk1[5 ]) );

//===================== STAGE 2 ======================

assign gkb[0]   = cin;
assign gkb[6:1] = o_gk1[5:0];
assign pkb      = o_pk1[4:0];
assign o_gk2[0] = o_gk1[0];

grey  gc_1  (                  .i_gj (gkb[0 ]),  .i_pk (o_pk1[0 ]),  .i_gk (o_gk1[1 ]), .o_g (o_gk2[1 ]) );
grey  gc_2  (                  .i_gj (gkb[1 ]),  .i_pk (o_pk1[1 ]),  .i_gk (o_gk1[2 ]), .o_g (o_gk2[2 ]) );
black bc_23 ( .i_pj (pkb[0 ]), .i_gj (gkb[2 ]),  .i_pk (o_pk1[2 ]),  .i_gk (o_gk1[3 ]), .o_g (o_gk2[3 ]), .o_p (o_pk2[0 ]) );
black bc_24 ( .i_pj (pkb[1 ]), .i_gj (gkb[3 ]),  .i_pk (o_pk1[3 ]),  .i_gk (o_gk1[4 ]), .o_g (o_gk2[4 ]), .o_p (o_pk2[1 ]) );
black bc_25 ( .i_pj (pkb[2 ]), .i_gj (gkb[4 ]),  .i_pk (o_pk1[4 ]),  .i_gk (o_gk1[5 ]), .o_g (o_gk2[5 ]), .o_p (o_pk2[2 ]) );
black bc_26 ( .i_pj (pkb[3 ]), .i_gj (gkb[5 ]),  .i_pk (o_pk1[5 ]),  .i_gk (o_gk1[6 ]), .o_g (o_gk2[6 ]), .o_p (o_pk2[3 ]) );

//===================== STAGE 3 ======================

assign gkc[0]     = cin;
assign gkc[3:1]   = o_gk2[2:0];
assign o_gk3[2:0] = o_gk2[2:0];

grey  gc_3  ( .i_gj (gkc[0 ]), .i_pk (o_pk2[0 ]), .i_gk (o_gk2[3 ]), .o_g (o_gk3[3 ]) );
grey  gc_4  ( .i_gj (gkc[1 ]), .i_pk (o_pk2[1 ]), .i_gk (o_gk2[4 ]), .o_g (o_gk3[4 ]) );
grey  gc_5  ( .i_gj (gkc[2 ]), .i_pk (o_pk2[2 ]), .i_gk (o_gk2[5 ]), .o_g (o_gk3[5 ]) );
grey  gc_6  ( .i_gj (gkc[3 ]), .i_pk (o_pk2[3 ]), .i_gk (o_gk2[6 ]), .o_g (o_gk3[6 ]) );

//===================== STAGE 4 ======================

assign px          = p;

assign gx[7]       = o_gk3[6]; 
assign gx[6]       = o_gk3[5]; 
assign gx[5]       = o_gk3[4]; 
assign gx[4]       = o_gk3[3]; 
assign gx[3]       = o_gk3[2]; 
assign gx[2]       = o_gk3[1]; 
assign gx[1]       = o_gk3[0]; 
assign gx[0]       = g[0]; 

endmodule


