vsim box

add wave *

force A(0) 0 0, 1 2 -repeat 4
force A(1) 0 0, 1 4 -repeat 8
force A(2) 0 0, 1 8 -repeat 16
force A(3) 0 0, 1 16

run 32

