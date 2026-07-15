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
		src/overlays/rom_7c7b9c/exports.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_a_a_a.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_a_a_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_a_a_c.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_a_a_c_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_a_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_a_c.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_c_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_a_c_c.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_a.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_b.o(.text)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_a_8a48.o(.text)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_a_8af0.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_b.o(.text)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_b.o(.text)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c_8c28.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c.o(.text)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c_93d4.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c.o(.text.after_93d4)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c_9920.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c.o(.text.after_9920)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c_9d0c.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c.o(.text.after_9d0c)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c_b150.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c.o(.text.after_b150)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c_b380.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c.o(.text.after_b3b8)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c_b464.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c_c.o(.text.after_b464)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_b.o(.text)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_c_a_b558.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_c_a.o(.text.after_b558)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_c_a_b950.o(.text)
		src/overlays/rom_7c7b9c/ovl_30_c_a_a_c_c_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_a_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_b.o(.text)
		asm/overlays/rom_7c7b9c/ovl_30_c_c.o(.text)
		src/overlays/rom_7c7b9c/ovl_30_c_c_c218.o(.text)
		src/overlays/rom_7c7b9c/imports.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_7c7b9c/ovl_30_c_c.o(.data)
	} > overlay

	.bss : {
		asm/overlays/rom_7c7b9c/ovl_30_c_c.o(.bss)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
