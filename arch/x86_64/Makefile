MAKE = make
LD = x86_64-linux-gnu-ld

KERNEL_BIN = kernel.bin
LINKER = linker.ld

MAKE_FLAGS = --no-print-directory -C

build:
	@$(MAKE) $(MAKE_FLAGS) boot

build-kernel:
	@echo " [KERNEL] " $(KERNEL_BIN)
	@$(LD) -n -o $(KERNEL_BIN) -T $(LINKER) $(shell ls boot/*.o)

clean:
	@$(MAKE) $(MAKE_FLAGS) boot clean

	@rm $(KERNEL_BIN) -f
