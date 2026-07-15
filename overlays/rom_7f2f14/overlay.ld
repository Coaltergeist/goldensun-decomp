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
		src/overlays/rom_7f2f14/exports.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_a_a_b.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_a_b.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_a_8118.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_a_a_c_b.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_c.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_c_push.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_c_a.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_c_8558.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_c_b.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_c_c_a.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_a_c_c_c_85e4.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_a_b.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_c_a_86a0.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_c_a_8754.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_a_c_a_87d8.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_a_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_c_a_a.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_c_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_c_b.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_c_c_896c.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_c_c.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_c_c_8b08.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_c_c_8b98.o(.text)
		src/overlays/rom_7f2f14/ovl_30_a_c_c_8c5c.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_a_c_c.o(.text.after_8c5c)
		asm/overlays/rom_7f2f14/ovl_30_a_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_a_a.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_a_c.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a_a.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a_9048.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a_90cc.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a_9150.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a.o(.text.after_9150)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_b.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c_9644.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c.o(.text.before)
		src/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c_9780.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c.o(.text.after_9780)
		src/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c_98f8.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_a_c.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_c_a.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_c_c.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_a.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_c_a_a_a_a3d4.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_a.o(.text.after_a3d4)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_c_a.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_c_a_a_c_a_aee4.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_c_a_a_c_a_af30.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_c_a_a_c_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_c_a_a.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_c_a_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_c_a_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_c_a_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_a_c_c.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_c_b.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_c_c.o(.text)
		src/overlays/rom_7f2f14/ovl_30_c_c_c_c_c968.o(.text)
		asm/overlays/rom_7f2f14/ovl_30_c_c_c_c.o(.text.after_c968)
		src/overlays/rom_7f2f14/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_7f2f14/ovl_30_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
