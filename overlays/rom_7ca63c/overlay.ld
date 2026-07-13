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
		src/overlays/rom_7ca63c/exports.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_a_a_a.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_a_a_b.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_a_b.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_a_c_a.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_a_c_b.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_b.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_c_b.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_c_c_a_b.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_c_c_a_c.o(.text)
		src/overlays/rom_7ca63c/ovl_30_c_c_a_c_840c.o(.text)
		src/overlays/rom_7ca63c/ovl_30_c_c_a_c_8468.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_c_c_a_c.o(.text.after_84b0)
		src/overlays/rom_7ca63c/ovl_30_c_c_a_c_8a84.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_c_c_a_c.o(.text.after_8a84)
		src/overlays/rom_7ca63c/ovl_30_c_c_a_c_90a0.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_c_c_a_c.o(.text.after_90a0)
		asm/overlays/rom_7ca63c/ovl_30_c_c_b.o(.text)
		asm/overlays/rom_7ca63c/ovl_30_c_c_c.o(.text)
		src/overlays/rom_7ca63c/ovl_30_c_c_c_915c.o(.text)
		src/overlays/rom_7ca63c/imports.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_7ca63c/ovl_30_c_c_c.o(.data)
	} > overlay

	.bss : {
		asm/overlays/rom_7ca63c/ovl_30_c_c_c.o(.bss)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
