# Toolchain
TOOLCHAIN = arm-none-eabi

# Linker Flags for linking Standard Libraries
STDLIBS = -L/arm-tools/arm-none-eabi/lib -lm -lc -lnosys
STDLIBS += -L/arm-tools/lib/gcc/arm-none-eabi/6.3.1 -lgcc

# Define Target Name
TARGET = firmware

# Subdirectories of Additional C Source Files
CSRC_DIRS = core lpc2388

# Linker Script File
LINKER_SCRIPT = lpc2388_rom.ld

# Output Directory : Directory name *must* end with '/'.
OUT_DIR = ./out/


# Optimization level, can be [0, 1, 2] or blank.
OPT = 
#OPT = 0

# Option Include
INC = $(foreach dir, $(CSRC_DIRS), -I$(dir))

# FLAGs
CFLAGS = $(INC) -O$(OPT) -mcpu=arm7tdmi-s
ASFLAGS = -Wa -mcpu=arm7tdmi-s
LDFLAGS = -nostartfiles -u _printf_float
CFLAGS += -g3 -gdwarf-2 -gstrict-dwarf
#CFLAGS += -Wall
#CFLAGS += -Wcast-align -Wimplicit 
#CFLAGS += -Wpointer-arith -Wswitch
#CFLAGS += -Wreturn-type -Wshadow -Wunused


# Tools
CC = $(TOOLCHAIN)-gcc
AS = $(TOOLCHAIN)-as
LD = $(TOOLCHAIN)-ld
OBJCPY = $(TOOLCHAIN)-objcopy
OBJDMP = $(TOOLCHAIN)-objdump
COPY = cp -f
REMOVE = rm -rf
MKDIR  = mkdir -p
CAT = cat
GREP = grep
AWK = gawk


# ====================================================================


# Source files
SRCS_C = $(shell ls *.c)
SRCS_C += \
	$(foreach dir, $(CSRC_DIRS) , $(wildcard $(dir)/*.c))

SRCS_A = \
	$(shell ls *.s)
OBJS_C = $(SRCS_C:.c=.o)
OBJS_A = $(SRCS_A:.s=.o)


# ====================================================================
# Build rules


TARGET_ROM = $(OUT_DIR)$(TARGET)

all : target

# make firmware
target : rom $(SRCS_C) $(SRCS_A) Makefile

rom : cleanobj cleanrom $(OUT_DIR) $(TARGET_ROM).elf $(TARGET).asm $(TARGET_ROM).hex $(TARGET_ROM).mot $(TARGET_ROM).sym
	$(COPY) $(TARGET_ROM).elf ../lib
	$(COPY) $(TARGET_ROM).hex ../
	$(COPY) $(TARGET_ROM).sym ../lib/bios.def

$(OUT_DIR) :
	$(MKDIR) $@

$(TARGET_ROM).elf : $(OUT_DIR) $(LINKER_SCRIPT) $(OBJS_A) $(OBJS_C) Makefile
	$(LD) $(LDFLAGS) $(OBJS_A) $(OBJS_C) $(STDLIBS) -T $(LINKER_SCRIPT) -o $@ -Map $(TARGET_ROM).map

$(TARGET_ROM).sym : $(TARGET_ROM).elf $(LINKER_SCRIPT) Makefile
	$(CAT) $*.map | $(GREP) -v -E "to_be_deleted" | $(GREP) -v -E " main$$" | $(GREP) -v -E " _startup$$" | $(GREP) -v -E " _crp$$" | $(GREP) -E "^ +0x[a-f0-9]{8} +[a-zA-Z_][a-zA-Z0-9_]*$$" | $(AWK) '{ print $$2 " = " $$1 ";" }' > $@

$(TARGET).asm : $(TARGET_ROM).elf $(LINKER_SCRIPT) Makefile
	$(OBJDMP) -D $< > $@


# Common rules
$(OBJS_C) : %.o : %.c Makefile
	$(CC) $(CFLAGS) -c $< -o $@
$(OBJS_A) : %.o : %.s Makefile
	$(AS) $(ASFLAGS) -adhlns=$*.lst $< -o $@
%.hex : %.elf
	$(OBJCPY) -O ihex $< $@
%.mot : %.elf
	$(OBJCPY) -O srec $< $@


# ====================================================================


# Clean
cleanrom :
	$(REMOVE) $(TARGET_ROM).elf $(OUT_DIR)
cleanobj :
	$(REMOVE) a.out *.o *.lst $(OBJS_C) $(OBJS_A)
clean : cleanobj cleanrom
	$(REMOVE) *.hex *.mot $(TARGET).asm

.PHONY : clean cleanrom cleanobj all sym rom target
