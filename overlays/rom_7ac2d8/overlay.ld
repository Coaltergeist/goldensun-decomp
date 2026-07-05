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
		src/overlays/rom_7ac2d8/exports.o(.text)
		asm/overlays/common/common0.o(.text)
		asm/overlays/rom_7ac2d8/ovl_314_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_314_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_314_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_d58_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_d58_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_d58_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_c_c_c_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_c_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_1db4.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_2dcc.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_c_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_c.o(.text)
		src/overlays/rom_7ac2d8/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/overlays/common/common0.o(.data)
		asm/overlays/rom_7ac2d8/ovl_314_c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_35b8_c.o(.data)
		asm/overlays/common/common0.o(.data1)
		asm/overlays/rom_7ac2d8/ovl_2dcc.o(.data)
		asm/overlays/rom_7ac2d8/ovl_1db4.o(.data)
		asm/overlays/rom_7ac2d8/ovl_d58_c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_f84_c_c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
