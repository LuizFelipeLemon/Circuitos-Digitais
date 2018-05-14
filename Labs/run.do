vsim ex2

add wave *

force SW(0) 0 0, 1 2 -repeat 4
force SW(1) 0 0, 1 4 -repeat 8
force SW(2) 0 0, 1 8 -repeat 16
force SW(3) 0 0, 1 16

run 32

