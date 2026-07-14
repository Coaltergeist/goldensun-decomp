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
		src/overlays/rom_7db0c8/exports.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_a_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_a_a.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_a_b.o(.text)
		src/overlays/rom_7db0c8/ovl_30_c_c_a_a_a_c_a.o(.text)
		src/overlays/rom_7db0c8/ovl_30_c_c_a_a_a_c_b_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_a_c_b_c.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_c_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_c_c.o(.text)
		src/overlays/rom_7db0c8/ovl_30_c_c_a_a_c_c_842c.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_c_c.o(.text.after_842c)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_c_a.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_a_c_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_c_a.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_c_b.o(.text)
		asm/overlays/rom_7db0c8/ovl_30_c_c_c_c.o(.text)
		asm/overlays/common/common1_a_a_a_a_a.o(.text)
		src/overlays/common/common1_a_a_a_a_a_148.o(.text)
		asm/overlays/common/common1_a_a_a_a_a.o(.text.after_148)
		asm/overlays/common/common1_a_a_a_a_b.o(.text)
		asm/overlays/common/common1_a_a_a_a_c.o(.text)
		src/overlays/common/common1_a_a_a_a_c_588.o(.text)
		asm/overlays/common/common1_a_a_a_a_c.o(.text.after_8588)
		src/overlays/common/common1_a_a_a_a_c_850.o(.text)
		asm/overlays/common/common1_a_a_a_a_c.o(.text.after_850)
		asm/overlays/common/common1_a_a_a_b.o(.text)
		asm/overlays/common/common1_a_a_b.o(.text)
		asm/overlays/common/common1_a_a_c.o(.text)
		src/overlays/common/common1_a_a_c_1490.o(.text)
		asm/overlays/common/common1_a_b.o(.text)
		asm/overlays/common/common1_a_c_b.o(.text)
		src/overlays/common/common1_a_c_c_1578.o(.text)
		asm/overlays/common/common1_a_c_c.o(.text.between_1578_16cc)
		src/overlays/common/common1_a_c_c_15b8.o(.text)
		asm/overlays/common/common1_a_c_c.o(.text.after_15b8)
		src/overlays/common/common1_a_c_c_16cc.o(.text)
		asm/overlays/common/common1_b.o(.text)
		asm/overlays/common/common1_c_a_b.o(.text)
		asm/overlays/common/common1_c_a_c_b.o(.text)
		asm/overlays/common/common1_c_a_c_c.o(.text)
		src/overlays/common/common1_c_a_c_c_17c0.o(.text)
		asm/overlays/common/common1_c_a_c_c.o(.text.after_17c0)
		src/overlays/common/common1_c_a_c_c_1fb4.o(.text)
		asm/overlays/common/common1_c_b.o(.text)
		src/overlays/common/common1_c_c_2018.o(.text)
		asm/overlays/common/common1_c_c.o(.text.after_2018)
		src/overlays/rom_7db0c8/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/overlays/common/common1_c_c.o(.data)
		asm/overlays/rom_7db0c8/ovl_30_c_c_c_c.o(.data)
		asm/overlays/common/common1_c_c.o(.data1)
	} > overlay

	.bss : {
		asm/overlays/common/common1_c_c.o(.bss)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
