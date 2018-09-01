_heap_end_ = 0x4000FE00;
_sp_base   = 0x4000FFF8;

SECTIONS
{
	.start 0x40002000:
	{
		_stext = .;
		crt.o(.text)
	}

	.text :
	{
		*(.text .text.*)
	    . = ALIGN(4);
		_etext = .;
	}

	.rdata :
	{
		_srdata = .;
		*(.rodata)
		*(.rodata.*)
		_erdata = .;
	}

	.data :
	{
		_sdata = .;
		*(.data)
		*(.zdata)
		_edata = .;
	}

	.bss :
	{
		_sbss = .;
		*(.bss)
		*(.bss.*)
		*(.gnu.linkonce.b*)
		*(COMMON)
		_ebss = .;
	}

	.heap ALIGN(0x8) :
	{
		_end = . ;
		PROVIDE (_end = .);
		PROVIDE (end = .);
		PROVIDE (_heap = .);
		_heap_start_ = .;
		*(.heap)
		*(.heap*)
		*(.HEAP)
		*(.comment)
/*		. += 0x400; */
	}


}
