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
		src/overlays/rom_7d0e88/exports.o(.text)
		asm/overlays/common/common0.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_c.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_c_c.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_c_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_c_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_c_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_c_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_c_c_c.o(.text)
		asm/overlays/rom_7d0e88/ovl_2580.o(.text)
		src/overlays/rom_7d0e88/imports.o(.text)
		lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/overlays/common/common0.o(.data)
		asm/overlays/rom_7d0e88/ovl_314_c_c.o(.data)
		asm/overlays/common/common0.o(.data1)
		asm/overlays/rom_7d0e88/ovl_2d64.o(.data)
		asm/overlays/rom_7d0e88/ovl_1528_c_c_c.o(.data)
		asm/overlays/rom_7d0e88/ovl_1440_c_c.o(.data)
		asm/overlays/rom_7d0e88/ovl_2580.o(.data)
	} > overlay

	.bss : {
		asm/overlays/rom_7d0e88/ovl_1528_c_c_c.o(.bss)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
