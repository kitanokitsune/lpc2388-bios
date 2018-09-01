# Define Target
TARGET = app
RAM_WORK_DIR = ./obj/
PROJ_TOP_DIR=../..

# Toolchain
TOOLCHAIN = arm-none-eabi

# Optimization level, can be [0, 1, 2] or blank.
OPT = 
#OPT = 0

# Option Include
INC = -I$(PROJ_TOP_DIR)/include

# FLAGs
CFLAGS = $(INC) -O$(OPT) -mcpu=arm7tdmi-s -g3 -gdwarf-2 -gstrict-dwarf -dA
ASFLAGS = -Wa -mcpu=arm7tdmi-s
LDFLAGS = -nostartfiles

# Tools
CC = $(TOOLCHAIN)-gcc
AS = $(TOOLCHAIN)-as
LD = $(TOOLCHAIN)-ld
OBJCPY = $(TOOLCHAIN)-objcopy
OBJDMP = $(TOOLCHAIN)-objdump
REMOVE = rm -rf
MKDIR  = mkdir -p


# ====================================================================


# Source files
SRCS_C = \
	$(shell ls *.c)
SRCS_A = \
	$(shell ls *.s)

OBJS_C = $(SRCS_C:.c=.o)

OBJS_A = $(SRCS_A:.s=.o)

OBJS_C_RAM = $(addprefix $(RAM_WORK_DIR),$(OBJS_C))
ASMS_C_RAM = $(OBJS_C_RAM:.o=.s)
LSTS_C_RAM = $(OBJS_C_RAM:.o=.lst)

TARGET_RAM = $(RAM_WORK_DIR)$(TARGET)


# ====================================================================


all : clean crt.o ram $(SRCS_C) $(SRCS_A) Makefile

crt.o : $(PROJ_TOP_DIR)/lib/crt.s Makefile
	$(AS) $(ASFLAGS) -adhlns=$*.lst $< -o $@

# Build ram target
ram : $(RAM_WORK_DIR) $(TARGET_RAM).elf $(TARGET_RAM).mot $(LSTS_C_RAM)

$(RAM_WORK_DIR) :
	$(MKDIR) $@

$(TARGET_RAM).elf : % : $(RAM_WORK_DIR) crt.o $(OBJS_A) $(OBJS_C_RAM) Makefile
	$(LD) $(LDFLAGS) crt.o $(OBJS_A) $(OBJS_C_RAM) --just-symbols=$(PROJ_TOP_DIR)/lib/bios.def -T $(PROJ_TOP_DIR)/lib/memory.def -o $@ -Map $(TARGET_RAM).map
	$(OBJDMP) -D $(TARGET_RAM).elf > $(TARGET_RAM).asm

$(OBJS_C_RAM) : $(RAM_WORK_DIR)%.o : %.c Makefile
	$(CC) $(CFLAGS) -c $< -o $@

$(ASMS_C_RAM) : $(RAM_WORK_DIR)%.s : %.c Makefile
	$(CC) $(CFLAGS) -S $< -o $@

$(LSTS_C_RAM) : %.lst : %.s Makefile
	$(AS) $(ASFLAGS) -adhlns=$@ $<


# Common rules
$(OBJS_A) : %.o : %.s Makefile
	$(AS) $(ASFLAGS) -adhlns=$*.lst $< -o $@
%.hex : %.elf
	$(OBJCPY) -O ihex $< $@
%.mot : %.elf
	$(OBJCPY) -O srec $< $@
%.lst : %.s Makefile
	$(AS) $(ASFLAGS) -adhlns=$@ $<


# ====================================================================


cleanram :
	$(REMOVE) $(RAM_WORK_DIR)
cleanobj :
	$(REMOVE) a.out *.o *.lst
clean : cleanobj cleanram

.PHONY : clean cleanram cleanobj all ram
