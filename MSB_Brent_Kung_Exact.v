
`timescale 1 ns / 1 ps

module MSB_Brent_Kung_Exact (
	input              cin,
	input       [7:0]  p,
	input       [7:0]  g,
	output wire [7:0]  gx,
	output wire [7:0]  px
);

wire [7:0] gka;
wire [6:0] pka;
wire [3:0] o_gk1;
wire [2:0] o_pk1;

wire [1:0] gkb;
wire       pkb;
wire [1:0] o_gk2;
wire       o_pk2;
wire       gkc;
wire       o_gk3;
wire       gke;
wire       o_gk5;
wire [2:0] gkf;
wire [2:0] o_gk6;

//===================== STAGE 1 ===========================

assign gka[0]      = cin;
assign gka[7:1]    = g[6:0];
assign pka         = p[6:0];

grey  gc_0  (                  .i_gj (gka[0 ]),  .i_pk (p[0 ]), .i_gk (g[0 ]), .o_g (o_gk1[0 ]) );
black bc_0  ( .i_pj (pka[1 ]), .i_gj (gka[2 ]),  .i_pk (p[2 ]), .i_gk (g[2 ]), .o_g (o_gk1[1 ]), .o_p (o_pk1[0 ]) );
black bc_1  ( .i_pj (pka[3 ]), .i_gj (gka[4 ]),  .i_pk (p[4 ]), .i_gk (g[4 ]), .o_g (o_gk1[2 ]), .o_p (o_pk1[1 ]) );
black bc_2  ( .i_pj (pka[5 ]), .i_gj (gka[6 ]),  .i_pk (p[6 ]), .i_gk (g[6 ]), .o_g (o_gk1[3 ]), .o_p (o_pk1[2 ]) );

//===================== STAGE 2 ======================

assign gkb[0]    = o_gk1[0];
assign gkb[1]    = o_gk1[2];

assign pkb       = o_pk1[1];

grey  gc_1  (              .i_gj (gkb[0 ]),  .i_pk (o_pk1[0 ]),  .i_gk (o_gk1[1 ]), .o_g (o_gk2[0 ]) );
black bc_11 ( .i_pj (pkb), .i_gj (gkb[1 ]),  .i_pk (o_pk1[2 ]),  .i_gk (o_gk1[3 ]), .o_g (o_gk2[1 ]), .o_p (o_pk2) );

//===================== STAGE 3 ======================

assign gkc    = o_gk2[0];

grey  gc_2  (                  .i_gj (gkc), .i_pk (o_pk2),  .i_gk (o_gk2[1 ]), .o_g (o_gk3) );

//===================== STAGE 4 ======================

//===================== STAGE 5 ======================

assign gke    = o_gk2[0];

grey gc_7  ( .i_gj (gke), .i_pk (o_pk1[1 ]), .i_gk (o_gk1[ 2]), .o_g (o_gk5) );

//===================== STAGE 6 ======================

assign gkf[0 ]    = o_gk1[0];
assign gkf[1 ]    = o_gk2[0];
assign gkf[2 ]    = o_gk5;

grey gc_12  ( .i_gj (gkf[0 ]), .i_pk (p[1 ]), .i_gk (g[1 ]), .o_g (o_gk6[0 ]) );
grey gc_13  ( .i_gj (gkf[1 ]), .i_pk (p[3 ]), .i_gk (g[3 ]), .o_g (o_gk6[1 ]) );
grey gc_14  ( .i_gj (gkf[2 ]), .i_pk (p[5 ]), .i_gk (g[5 ]), .o_g (o_gk6[2 ]) );

assign gx[7 ] = o_gk3;
assign gx[6 ] = o_gk6[2];
assign gx[5 ] = o_gk5;
assign gx[4 ] = o_gk6[1];
assign gx[3 ] = o_gk2[0];
assign gx[2 ] = o_gk6[0];
assign gx[1 ] = o_gk1[0];
assign gx[0 ] = g[0];

assign px     = p[7:0];

endmodule


