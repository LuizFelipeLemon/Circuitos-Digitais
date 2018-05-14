vsim updown
add wave *


force E 0 0ns, 1 10ns
force clock 0 0ns, 1 5ns -repeat 10ns
force load 1 0ns, 0 1ns
force A "0101"
force B "1100"

run 200ns