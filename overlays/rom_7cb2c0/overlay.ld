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
		src/overlays/rom_7cb2c0/exports.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_a_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_a_a_c.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_a_c_b.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_a_c_c_80fc.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_a_c_c.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_a_c_c_8284.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_a_c_c_82f4.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_a_c_c_a.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_a_a.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_a_c.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_a.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_a_89b4.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c_8e14.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c_8ee0.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c_8fac.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c_9078.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c_9144.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c.o(.text.after_9144)
		src/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c_9280.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_a.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_a_9804.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_a.o(.text.after_9804)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_a_9a08.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_a.o(.text.after_9a08)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_c.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_c_bdec.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a_c.o(.text.after_be34)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_b.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_c_c13c.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_c.o(.text.after_c13c)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_c_c198.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_c.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_c_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_c_a_c.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_c_a_c_cfa8.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a_a.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a_a_d068.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a_a.o(.text.after_d068)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a_c.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_c.o(.text)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_c_dc48.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_c.o(.text.after_dc48)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_c_dca4.o(.text)
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_c.o(.text.after_dca4)
		src/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_c_e3ac.o(.text)
		src/overlays/rom_7cb2c0/imports.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
