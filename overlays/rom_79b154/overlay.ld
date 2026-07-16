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
		src/overlays/rom_79b154/exports.o(.text)
		asm/overlays/rom_79b154/ovl_30_a.o(.text)
		asm/overlays/rom_79b154/ovl_30_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_a_a.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_a_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_a_c.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_c_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_c_c_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_c_c_c.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_c_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_c_c_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_c_c_c_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_c_c_c_c_b.o(.text)
		src/overlays/rom_79b154/ovl_30_c_a_a_c_c_c_c_c_c_8328.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_a_c_c_c_c_c_c.o(.text.after_8328)
		asm/overlays/rom_79b154/ovl_30_c_a_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_c.o(.text)
		src/overlays/rom_79b154/ovl_30_c_a_c_8890.o(.text)
		src/overlays/rom_79b154/ovl_30_c_a_c_88f0.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_c.o(.text.after_88f0)
		src/overlays/rom_79b154/ovl_30_c_a_c_8cb4.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_a_c.o(.text.after_8cb4)
		src/overlays/rom_79b154/ovl_30_c_a_c_8d10.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_b.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_c.o(.text)
		src/overlays/rom_79b154/ovl_30_c_c_8ed8.o(.text)
		src/overlays/rom_79b154/ovl_30_c_c_8f3c.o(.text)
		asm/overlays/rom_79b154/ovl_30_c_c.o(.text.after_8f3c)
		src/overlays/rom_79b154/ovl_30_c_c_8fa0.o(.text)
		src/overlays/rom_79b154/imports.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_79b154/ovl_30_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
