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
		src/overlays/rom_77a7c8/exports.o(.text)
		src/overlays/rom_77a7c8/ovl_30_a_a_a_a.o(.text)
		src/overlays/rom_77a7c8/ovl_30_a_a_a_a_808c_80d4.o(.text)
		src/overlays/rom_77a7c8/ovl_30_a_a_a_b.o(.text)
		src/overlays/rom_77a7c8/ovl_30_a_a_a_c_813c.o(.text)
		src/overlays/rom_77a7c8/ovl_30_a_a_a_c_81c4.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_a_a_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_a_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_a_b.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_a_a_c_a_82cc.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_a_a_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_a_c_c.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_c_a.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_a_c_a_84a0.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_c_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_c_c_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_c_c_c_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_a_a.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_a_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_97a4.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a.o(.text.after_97a4)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_97fc.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_9888.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_9938.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_99e8.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a.o(.text.after_99e8)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_9b5c.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_9c08.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a.o(.text.after_9c08)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_a768.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a.o(.text.after_a768)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_a7dc.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_c_a.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_c_c.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_b.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_c_b448.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_c.o(.text.after_b448)
		src/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_c_b678.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_c.o(.text.after_b678)
		asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_c_a.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_c_a_b7d8.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_c_a.o(.text.after_b7d8)
		src/overlays/rom_77a7c8/ovl_30_c_c_a_b8fc.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_c_a_b95c.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_c_a.o(.text.after_b95c)
		asm/overlays/rom_77a7c8/ovl_30_c_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_c_c_a_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_c_c_b.o(.text)
		asm/overlays/rom_77a7c8/ovl_30_c_c_c_c.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_c_c_c_a.o(.text)
		src/overlays/rom_77a7c8/ovl_30_c_c_c_c_c058.o(.text)
		src/overlays/rom_77a7c8/imports.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_77a7c8/ovl_30_c_c_c_c.o(.data)
	} > overlay

	.bss : {
		asm/overlays/rom_77a7c8/ovl_30_c_c_c_c.o(.bss)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
