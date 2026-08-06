MEMORY {
	bios	(x)	: ORIGIN = 0x00000000, LENGTH = 16K
	ewram	(rwx)	: ORIGIN = 0x02000000, LENGTH = 256K
	overlay (rwx)	: ORIGIN = 0x02008000, LENGTH = 32K
	iwram	(rwx)	: ORIGIN = 0x03000000, LENGTH = 32K
	io	(rw)	: ORIGIN = 0x04000000, LENGTH = 1K
	palette	(rw)	: ORIGIN = 0x05000000, LENGTH = 1K
	vram	(rw)	: ORIGIN = 0x06000000, LENGTH = 96K
	oam	(rw)	: ORIGIN = 0x07000000, LENGTH = 1K
	rom	(rx)	: ORIGIN = 0x08000000, LENGTH = 8M
	sram	(rw)	: ORIGIN = 0x0E000000, LENGTH = 64K
}

SECTIONS {
	.text : {
		asm/maps/mercury_lighthouse_entrance/exports.o(.text)
		asm/maps/common/common0.o(.text)
		asm/maps/mercury_lighthouse_entrance.o(.text)
		asm/maps/mercury_lighthouse_entrance/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/maps/common/common0.o(.data)
		asm/maps/mercury_lighthouse_entrance.o(.data)
		asm/maps/mercury_lighthouse_entrance.o(.mdata1)
		asm/maps/common/common0.o(.data1)
		asm/maps/mercury_lighthouse_entrance.o(.mdata2)
		asm/maps/mercury_lighthouse_entrance.o(.mdata3)
		asm/maps/mercury_lighthouse_entrance.o(.mdata4)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
