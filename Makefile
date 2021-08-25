BUILD_DIR = ./build
OSCPU_HOME = $(shell pwd)

VERILATOR_FLAGS = -cc --exe -Os -x-assign 0 \
	--assert --trace

default: verilog

verilog:
	mkdir -p $(BUILD_DIR)
	mill -i oscpu.runMain TopMain -td $(BUILD_DIR)

emu: verilog
	cd $(OSCPU_HOME)/difftest && $(MAKE) emu

help:
	mill -i oscpu.runMain TopMain --help

clean:
	-rm -rf $(BUILD_DIR)
	-rm -rf obj_dir
	-rm -rf logs

.PHONY: verilog emu help clean
