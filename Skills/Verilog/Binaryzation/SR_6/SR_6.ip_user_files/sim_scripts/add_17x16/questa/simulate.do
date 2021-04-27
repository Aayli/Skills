onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_17x16_opt

do {wave.do}

view wave
view structure
view signals

do {add_17x16.udo}

run -all

quit -force
