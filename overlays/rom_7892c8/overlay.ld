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
		src/overlays/rom_7892c8/exports.o(.text)
		asm/overlays/rom_7892c8/ovl_30_a_a_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_a_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_b.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_a_8070.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_a_814c.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_a_827c.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_a_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a_a.o(.text.after_82ec)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_a_84e8.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a_b.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_a_85cc.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_a_86e8.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_a_874c.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_a.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_a_a5c4.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_b.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_a_a67c.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_a_a6f0.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_a.o(.text.after_a6f0)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_a_a750.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_a.o(.text.after_a750)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_a_b098.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_a_b144.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_a_b1b8.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c_c_c_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_a_a_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_a_a_c_b.o(.text)
		src/overlays/rom_7892c8/ovl_30_c_c_a_a_c_c_b334.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_a_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_b.o(.text)
		asm/overlays/rom_7892c8/ovl_30_c_c_c.o(.text)
		src/overlays/rom_7892c8/imports.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_7892c8/ovl_30_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
