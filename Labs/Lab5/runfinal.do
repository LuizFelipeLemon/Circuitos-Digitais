vsim main

add wave *

force Asf(0) 0 0, 1 2 -repeat 4
force Asf(1) 0 0, 1 4 -repeat 8
force Asf(2) 0 0, 1 8 -repeat 16
force Asf(3) 0 0, 1 16 -repeat 32
force Bsf(4) 0 0, 1 32 -repeat 64
force Bsf(5) 0 0, 1 64 -repeat 128
force Bsf(6) 0 0, 1 128 -repeat 256
force Bsf(7) 0 0, 1 256 -repeat 512





run 512
