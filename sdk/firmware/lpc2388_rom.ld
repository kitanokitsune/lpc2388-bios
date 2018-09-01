/* LPC2388 Memory Definitions */
MEMORY
{
  ROM    (rx) : ORIGIN = 0x00000000, LENGTH = (512k)	/* Flash         : 512k                 	*/
  RAM    (wx) : ORIGIN = 0x40000000, LENGTH = (64k-32)	/* SRAM          : 64k-32(IAP uses 32byte)	*/
  URAM   (w)  : ORIGIN = 0x7FD00000, LENGTH = (16k)	    /* USB RAM       : 16k 						*/
  ERAM   (w)  : ORIGIN = 0x7FE00000, LENGTH = (16k)	    /* Ethernet RAM  : 16k 						*/
  BRAM   (wx) : ORIGIN = 0xE0084000, LENGTH = (2k)  	/* Battery RAM   : 2k 						*/
  EXRAM0 (wx) : ORIGIN = 0x80000000, LENGTH = (64k)	    /* Ext RAM Bank0 : 64k 						*/
  EXRAM1 (wx) : ORIGIN = 0x81000000, LENGTH = (64k)	    /* Ext RAM Bank1 : 64k 						*/
}

SECTIONS
{
	.text 0x00000000 : {
		_sttext = .;
		startup.o(.text)
		. = ALIGN(4);
		_stext = .;
		*(.text .text.*)           	/* remaining code */
		KEEP(*(.init))
		KEEP(*(.fini))
        *(.gnu.linkonce.t.*)
        *(.glue_7)					/* glue arm to thumb code */
        *(.glue_7t)					/* glue thumb to arm code */
		*(.vfp11_veneer)
		*(.janus_2cc_veneer)
		*(.v4_bx)
        *(.gcc_except_table)
        *(.rodata .rodata.*)        /* read-only data (constants) */
		KEEP(*(.ioview .ioview.*))	/* I/O View */
        *(.gnu.linkonce.r.*)
		*(.ARM.extab* .gnu.linkonce.armextab.*)
	    . = ALIGN(4);
	} > ROM
	. = ALIGN(4);

	/* .ctors .dtors are used for c++ constructors/destructors */
	/* added by Martin Thomas 4/2005 based on Anglia Design example */
	.ctors :
	{
		PROVIDE(__ctors_start__ = .);
		KEEP(*(SORT(.ctors.*)))
		KEEP(*(.ctors))
		. = ALIGN(4);
		PROVIDE(__ctors_end__ = .);
		. = ALIGN(4);
	} >ROM
	
	.dtors :
	{
		PROVIDE(__dtors_start__ = .); 
		KEEP(*(SORT(.dtors.*)))
		KEEP(*(.dtors))
		. = ALIGN(4);
		PROVIDE(__dtors_end__ = .);
		. = ALIGN(4);
	} >ROM
    
    . = ALIGN(4);
	/* mthomas - end */
 

	.eh_frame_hdr : ALIGN (4)
	{
		KEEP (*(.eh_frame_hdr))
	} >ROM
	.eh_frame : ALIGN (4)
	{
	KEEP (*(.eh_frame))
	} >ROM
	. = ALIGN(4);
	
	/* .ARM.exidx is sorted, so has to go in its own output section.  */
	PROVIDE_HIDDEN (__exidx_start = .);
	.ARM.exidx :
	{
	*(.ARM.exidx* .gnu.linkonce.armexidx.*)
	} >ROM
	PROVIDE_HIDDEN (__exidx_end = .);

	. = ALIGN(4);
	
	__end_of_text__ = .;
	_etext = . ;
	PROVIDE (etext = .);

	/* .data section which is used for initialized data */
	.data 0x40000000 : AT (_etext)
	{
		_sdata = .;
		. = ALIGN(4);
		__data_beg__ = .;
		__data_beg_src__ = __end_of_text__;
		KEEP(*(.vectmapped)) 	/* mthomas: when code in ROM and vectors remapped */
		. = ALIGN(4);
		*(.fastrun) 			/* mthomas: for "RAMFUNC" */
		. = ALIGN(4);
		SORT(CONSTRUCTORS) 		/* mt 4/2005 */
		. = ALIGN(4);
		*(.data)
		*(.data.*)
		*(.gnu.linkonce.d*)
		. = ALIGN(4);

		/* preinit data */
		PROVIDE_HIDDEN (__preinit_array_start = .);
		KEEP(*(.preinit_array))
		PROVIDE_HIDDEN (__preinit_array_end = .);

		. = ALIGN(4);
		/* init data */
		PROVIDE_HIDDEN (__init_array_start = .);
		KEEP(*(SORT(.init_array.*)))
		KEEP(*(.init_array))
		PROVIDE_HIDDEN (__init_array_end = .);

		. = ALIGN(4);
		/* finit data */
		PROVIDE_HIDDEN (__fini_array_start = .);
		KEEP(*(SORT(.fini_array.*)))
		KEEP(*(.fini_array))
		PROVIDE_HIDDEN (__fini_array_end = .);

		KEEP(*(.jcr*))
	    . = ALIGN(4);
	} > RAM
	_edata = .;

	.bss : {
	. = ALIGN(0x4);
	_sbss = .;
		*(.bss) 
		*(.bss.*)
		*(.gnu.linkonce.b*)
		*(COMMON)
		. = ALIGN(4);
	_ebss = .;
	} > RAM

	.stack ALIGN(0x8) :
	{
		. += 0x800;
		_sp_base = .;
		. += 0x200;
		_exception_sp_base = .;
	} > RAM

	.heap ALIGN(0x8) :
	{
		_end = . ;
		PROVIDE (_end = .);
		PROVIDE (end = .);
		PROVIDE (_heap = .);
		*(.heap)
		*(.heap*)
		*(.HEAP)
		. += 0x800;
	} > RAM

	_end_of_ram = .;

	/* Remove information from the standard libraries */
	/DISCARD/ :
	{
		libc.a ( * )
		libm.a ( * )
		libgcc.a ( * )
	}
}
