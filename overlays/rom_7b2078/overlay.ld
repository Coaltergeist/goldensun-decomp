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
		src/overlays/rom_7b2078/exports.o(.text)
		src/overlays/common/common0_func_0.o(.text)
		src/overlays/common/common0_func_70_d4.o(.text)
		src/overlays/common/common0_func_10c.o(.text)
		asm/overlays/rom_7b2078/ovl_314_a_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_a_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_a_c_c.o(.text)
		asm/overlays/rom_7b2078/ovl_314_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_b.o(.text)
		src/overlays/rom_7b2078/ovl_314_c_c_a_a_a_8388.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_a_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_a_c.o(.text)
		src/overlays/rom_7b2078/ovl_314_c_c_a_a_c_8484.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_a_c.o(.text.after_8484)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_a.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a.o(.text)
		src/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a_92e0.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a.o(.text.after_92e0)
		src/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a_9334.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a.o(.text.after_9334)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_c.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c_a.o(.text)
		src/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c_a_a484.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c_b.o(.text)
		src/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c_c_a574.o(.text)
		src/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c_c_a5b8.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_a.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_b.o(.text)
		src/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a_a778.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a.o(.text.before)
		src/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a_c0dc.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_c.o(.text)
		src/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_c_c140.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_c_c.o(.text)
		src/overlays/rom_7b2078/imports.o(.text)
	} > overlay

	.data : {
		src/overlays/common/common0_func_10c.o(.data)
		src/overlays/common/common0_func_10c.o(.data1)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_c.o(.data)
		asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
