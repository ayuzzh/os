

MAKE=make
MAKE_FLAGS=--no-print-directory -C


build-x86_64:
	@$(MAKE) $(MAKE_FLAGS) arch/x86_64 build
	@$(MAKE) $(MAKE_FLAGS) arch/x86_64 build-kernel
	@echo " [COMPLETED] "
	@cp arch/x86_64/kernel.bin dist/x86_64/boot/kernel.bin
	@grub-mkrescue /usr/lib/grub/i386-pc -o dist/x86_64.iso dist/x86_64

clean:
	@$(MAKE) $(MAKE_FLAGS) arch/x86_64 clean
	@rm -rf dist/x86_64/boot/kernel.bin
