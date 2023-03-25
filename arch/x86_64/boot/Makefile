ASSEMBLY_SRC_FILES := $(wildcard *.asm)
ASSEMBLY_OBJ_FILES := $(patsubst %.asm, %.o, $(ASSEMBLY_SRC_FILES))

NASM=nasm
NASM_FLAGS = -f elf64


.PHONY: all

all: $(ASSEMBLY_OBJ_FILES)
	@echo -n

%.o: %.asm
	@echo " [NASM] " $<
	@$(NASM) $(NASM_FLAGS) $< -o $@

clean:
	@rm *.o -f
