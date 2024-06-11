
`timescale 1 ns / 1 ps

module tb_AxPPA_Three_Operand_Adder_Brent_Kung ();

reg                  clk;
reg                  reset;
reg         [15:0]   a_input;
reg         [15:0]   b_input;
reg         [15:0]   c_input;
wire        [15:0]   sum_output;
wire        [15:0]   data_check;
wire                 error;

initial
begin
	clk            <= 1'b0;
	reset          <= 1'b0;
	#10 reset      <= 1'b1;
	forever #5 clk <= ~clk;
end

assign	data_check = a_input + b_input + c_input;

assign error = (data_check == sum_output)? 1'b0 : 1'b1;

always @ (posedge clk or negedge reset)
begin
	if (reset == 1'b0) begin  
		a_input         <= 5;                            // maximum bit size 4294967296  ==  2^32
		b_input         <= 0;
		c_input         <= 0;
	end
	else begin
		a_input         <= a_input + 4'b0001;
		b_input         <= b_input + 4'b0100;
		c_input         <= c_input + 4'b1000;
	end
end

AxPPA_Three_Operand_Adder_Brent_Kung PTOA (
	.clk                 (clk),
	.reset               (reset),
	.a_input             (a_input),
	.b_input             (b_input),
	.c_input             (c_input),
	.sum_output          (sum_output)
);

endmodule


