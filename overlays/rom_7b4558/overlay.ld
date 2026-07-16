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
		src/overlays/rom_7b4558/exports.o(.text)
		asm/overlays/rom_7b4558/ovl_30_a_a_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_a_a.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_a_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_a_c.o(.text)
		asm/overlays/rom_7b4558/ovl_30_a_a_c_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_a_a_834c.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_a_a_8474.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_a_a_8608.o(.text)
		asm/overlays/rom_7b4558/ovl_30_a_a_c_c_a_a.o(.text.after_8608)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_a_a_88c0.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_a_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_c_8a4c.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_c_8ab0.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_a_c_c_c_8ae8.o(.text)
		asm/overlays/rom_7b4558/ovl_30_a_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_c_a_a_8cd0.o(.text)
		asm/overlays/rom_7b4558/ovl_30_a_c_a_b.o(.text)
		asm/overlays/rom_7b4558/ovl_30_a_c_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_c_c_a_8d90.o(.text)
		src/overlays/rom_7b4558/ovl_30_a_c_c_a_8e18.o(.text)
		asm/overlays/rom_7b4558/ovl_30_a_c_c_b.o(.text)
		asm/overlays/rom_7b4558/ovl_30_a_c_c_c.o(.text)
		asm/overlays/rom_7b4558/ovl_30_b.o(.text)
		asm/overlays/rom_7b4558/ovl_30_c_b.o(.text)
		asm/overlays/rom_7b4558/ovl_30_c_c_a_a.o(.text)
		asm/overlays/rom_7b4558/ovl_30_c_c_a_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_a_a_a.o(.text)
		asm/overlays/rom_7b4558/ovl_30_c_c_a_c_a_a_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_a_b_9150.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_a_b_9244.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_a_b_9328.o(.text)
		asm/overlays/rom_7b4558/ovl_30_c_c_a_c_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_c_9454.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_c_9520.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_c_95d0.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_c_96f0.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_c_9818.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_a_c_c_9880.o(.text)
		asm/overlays/rom_7b4558/ovl_30_c_c_a_c_c.o(.text.after_9880)
		asm/overlays/rom_7b4558/ovl_30_c_c_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_c_a_9b84.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_c_a_9c34.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_c_a_9d04.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_c_a_9de0.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_c_a_9ef0.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_c_a_a004.o(.text)
		asm/overlays/rom_7b4558/ovl_30_c_c_c_a.o(.text.after_a004)
		asm/overlays/rom_7b4558/ovl_30_c_c_c_b_a.o(.text)
		asm/overlays/rom_7b4558/ovl_30_c_c_c_b_b_a.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_c_b_b_b.o(.text)
		src/overlays/rom_7b4558/ovl_30_c_c_c_b_b_c_ac0c.o(.text)
		src/overlays/rom_7b4558/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_7b4558/ovl_30_c_c_c_b_b_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
