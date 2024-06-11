vlib work
vlog -reportprogress 300 -work work Half_Adder.v
vlog -reportprogress 300 -work work Full_Adder.v
vlog -reportprogress 300 -work work LSB_AxPO.v
vlog -reportprogress 300 -work work MSB_Kogge_Stone_Exact.v
vlog -reportprogress 300 -work work AxPPA_Three_Operand_Adder_Kogge_Stone.v
vlog -reportprogress 300 -work work Base_Logic.v
vlog -reportprogress 300 -work work Base_Logic_16_Bit_Pre_Processing.v
vlog -reportprogress 300 -work work Bit_Addition_Logic.v
vlog -reportprogress 300 -work work Bit_Addition_logic_16_Bit.v
vlog -reportprogress 300 -work work black.v
vlog -reportprogress 300 -work work Kogge_Stone_Adder_16Bit.v
vlog -reportprogress 300 -work work grey.v
vlog -reportprogress 300 -work work Sum_Logic.v
vlog -reportprogress 300 -work work tb_AxPPA_Three_Operand_Adder_Kogge_Stone.v
vsim -t ns work.tb_AxPPA_Three_Operand_Adder_Kogge_Stone
do wave.do
run 5 us