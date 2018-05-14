vsim somador

add wave *

force B 0 0, 1 2 -repeat 4
force A 0 0, 1 4 -repeat 8
force Ci 0 0, 1 8 -repeat 16

run 32

