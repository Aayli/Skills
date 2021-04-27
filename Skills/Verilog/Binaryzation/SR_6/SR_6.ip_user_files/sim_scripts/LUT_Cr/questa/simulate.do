onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib LUT_Cr_opt

do {wave.do}

view wave
view structure
view signals

do {LUT_Cr.udo}

run -all

quit -force
