vsim lab2

add wave *

force CIN(0) 0 0, 1 2 -repeat 4
force CIN(1) 0 0, 1 4 -repeat 8
force CIN(2) 0 0, 1 8 -repeat 16
force CIN(3) 0 0, 1 16

run 32

