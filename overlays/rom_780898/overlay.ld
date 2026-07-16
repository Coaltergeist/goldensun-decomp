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
		src/overlays/rom_780898/exports.o(.text)
		asm/overlays/rom_780898/ovl_30_a_a_a_b.o(.text)
		src/overlays/rom_780898/ovl_30_a_a_a_c_a.o(.text)
		src/overlays/rom_780898/ovl_30_a_a_a_c_b.o(.text)
		src/overlays/rom_780898/ovl_30_a_a_a_c_c.o(.text)
		asm/overlays/rom_780898/ovl_30_a_a_b.o(.text)
		src/overlays/rom_780898/ovl_30_a_a_c_834c.o(.text)
		src/overlays/rom_780898/ovl_30_a_a_c_8474.o(.text)
		src/overlays/rom_780898/ovl_30_a_a_c_8608.o(.text)
		asm/overlays/rom_780898/ovl_30_a_a_c.o(.text.after_8608)
		src/overlays/rom_780898/ovl_30_a_a_c_88c0.o(.text)
		asm/overlays/rom_780898/ovl_30_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_a_a_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_a_a_a_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_a_a_a_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_a_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_a_c.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_a_c_8b28.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_a_c_8ba8.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_a.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_c_a.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_a.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_b_8eb4.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_c.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_d_a_8fec.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_d_a_90d8.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_d_a_91d8.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_d_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_d_c.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_a.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_c.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_c_b1b4.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_c_b2b0.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_c_b380.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_c_b45c.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_c.o(.text.after_b45c)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_c_c_c_c_b.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_c_c_c_c_c_d64c.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_b.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_c_a_d75c.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_c_a_d7fc.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_a.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_b.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_c_a_c.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_c_a.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_c_a_da94.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_c_b.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_c_c_db48.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_780898/ovl_30_c_c_c_c_c_c_b.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_c_c_c_c_head.o(.text)
		src/overlays/rom_780898/ovl_30_c_c_c_c_c_c_c_dd68.o(.text)
		src/overlays/rom_780898/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_780898/ovl_30_c_c_c_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
