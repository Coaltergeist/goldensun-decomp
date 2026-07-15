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
		src/overlays/rom_7ced6c/exports.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_a_a_a_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_a_c_a.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_a_c_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_a_c_c.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_a_a_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_a_a_834c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_a_a_8474.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_a_a_8608.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_a_a_c_a_a.o(.text.after_8608)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_a_a_88c0.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_a_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_c_8a4c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_c_8ab0.o(.text)
		src/overlays/rom_7ced6c/ovl_30_a_a_c_c_8ae8.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_a_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_a_c.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_a_a_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_a_a_c_8da4.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_a_a_c_8e00.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_a_a_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_a_a_c_a.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_a_a_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_a_a_c_c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_a_c_c_9214.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_a_c_c_92b4.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_a_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_a_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_a_c_c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_c_c_9494.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_c_c_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_c_c_c_9548.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_c_c_c_958c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_c_c_c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_a_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_a_a_a.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_a_a_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_a_a_c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_a_a_c_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_a_a_c_98b0.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_a_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_a.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_9c84.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_9d2c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_9de0.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_9e5c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_9ef4.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o(.text.after_9ef4)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_9f78.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_a004.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o(.text.after_a004)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_a16c.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o(.text.after_a16c)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_a3c4.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_a450.o(.text)
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o(.text.after_a450)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_ac4c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_ad0c.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a_add0.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		src/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_aed8.o(.text)
		src/overlays/rom_7ced6c/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
