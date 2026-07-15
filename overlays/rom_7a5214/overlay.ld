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
		src/overlays/rom_7a5214/exports.o(.text)
		src/overlays/common/common0_func_0.o(.text)
		src/overlays/common/common0_func_70_d4.o(.text)
		src/overlays/common/common0_func_10c.o(.text)
		asm/overlays/rom_7a5214/ovl_314_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_a.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_c_a.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_c_b.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_c_c.o(.text)
		src/overlays/rom_7a5214/ovl_314_c_c_c_95ac.o(.text)
		asm/overlays/rom_7a5214/ovl_314_c_c_c.o(.text.after_95ac)
		asm/overlays/rom_7a5214/ovl_17ec_a.o(.text)
		asm/overlays/rom_7a5214/ovl_17ec_b.o(.text)
		src/overlays/rom_7a5214/ovl_17ec_c_985c.o(.text)
		asm/overlays/rom_7a5214/ovl_17ec_c.o(.text)
		src/overlays/rom_7a5214/imports.o(.text)
	} > overlay

	.data : {
		src/overlays/common/common0_func_10c.o(.data)
		asm/overlays/rom_7a5214/ovl_17ec_c.o(.data)
		src/overlays/common/common0_func_10c.o(.data1)
		asm/overlays/rom_7a5214/ovl_314_c_c_c.o(.data)
	} > overlay

	.bss : {
		asm/overlays/rom_7a5214/ovl_314_c_c_c.o(.bss)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
