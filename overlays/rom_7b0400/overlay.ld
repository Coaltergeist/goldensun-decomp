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
		src/overlays/rom_7b0400/exports.o(.text)
		src/overlays/common/common0_func_0.o(.text)
		src/overlays/common/common0_func_70_d4.o(.text)
		src/overlays/common/common0_func_10c.o(.text)
		asm/overlays/rom_7b0400/ovl_314_a.o(.text)
		asm/overlays/rom_7b0400/ovl_314_b.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_b.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_c_a_b.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_c_b.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_c_c_a_a.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_c_c_a_b.o(.text)
		src/overlays/rom_7b0400/ovl_314_c_c_c_a_c_88cc.o(.text)
		src/overlays/rom_7b0400/ovl_314_c_c_c_a_c_8928.o(.text)
		src/overlays/rom_7b0400/ovl_314_c_c_c_a_c_89fc.o(.text)
		src/overlays/rom_7b0400/ovl_314_c_c_c_a_c_8ad0.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c.o(.text.after_8ad0)
		src/overlays/rom_7b0400/ovl_314_c_c_c_a_c_addc.o(.text)
		src/overlays/rom_7b0400/ovl_314_c_c_c_a_c_aeb8.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c.o(.text.after_aeb8)
		src/overlays/rom_7b0400/ovl_314_c_c_c_a_c_b1c0.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c.o(.text.after_b1c0)
		asm/overlays/rom_7b0400/ovl_314_c_c_c_b.o(.text)
		src/overlays/rom_7b0400/ovl_314_c_c_c_c_b460.o(.text)
		asm/overlays/rom_7b0400/ovl_314_c_c_c_c.o(.text.after_b460)
		src/overlays/rom_7b0400/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		src/overlays/common/common0_func_10c.o(.data)
		src/overlays/common/common0_func_10c.o(.data1)
		asm/overlays/rom_7b0400/ovl_314_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
