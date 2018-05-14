vsim Regis
add wave *
force clk 0 0, 1 2 -repeat 4
force clk 0 0, 1 2 -repeat 4
force l "1010"
# ** Error (suppressible): (vsim-4008) Object 'l' not found.
# 
force Load 1 0, 0 2
force clk 0 0, 1 2 -repeat 4
force i "1010"
force Load 1 0, 0 2
run 12
force Shr_in 1
force Shr 1
run 10
force Shr 0
force Shl 1
run 10
run 10
