onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/clk
add wave -noupdate -format Logic -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/reset
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/a_input
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/b_input
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/c_input
add wave -noupdate -divider Output
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/sum_output
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/data_check
add wave -noupdate -format Logic -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/error
add wave -noupdate -divider AxPPA_Three_Operand_Adder_Kogge_Stone
add wave -noupdate -format Logic -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/clk
add wave -noupdate -format Logic -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/reset
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/a_input
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/b_input
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/c_input
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/sum_output
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/s
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/c
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/p
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/g
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/gx
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/px
add wave -noupdate -divider Bit_Addition_logic_16_Bit
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BAL32/a
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BAL32/b
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BAL32/c
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BAL32/sum
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BAL32/carry
add wave -noupdate -divider Base_Logic_16_Bit_Pre_Processing
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BL32/a
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BL32/b
add wave -noupdate -format Logic -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BL32/cin
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BL32/p
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/BL32/g
add wave -noupdate -divider Brent_Kung_Adder_16Bit
add wave -noupdate -format Logic -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/cin
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/p
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/g
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/gx
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/px
add wave -noupdate -divider MSB_Kogge_Stone_Exact
add wave -noupdate -format Logic -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/cin
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/p
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/g
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/gx
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/px
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/gka
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/pka
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/o_gk1
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/o_pk1
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/gkb
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/pkb
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/o_gk2
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/o_pk2
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/gkc
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/PG_LOGIC/MSBx1/o_gk3
add wave -noupdate -divider Sum_Logic
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/SLG/gx
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/SLG/px
add wave -noupdate -format Literal -radix unsigned /tb_AxPPA_Three_Operand_Adder_Kogge_Stone/PTOA/SLG/sum_output
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20 ns} 0}
configure wave -namecolwidth 260
configure wave -valuecolwidth 75
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {4596 ns} {5022 ns}
