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
		src/overlays/rom_7bdeb0/exports.o(.text)
		src/overlays/common/common0_func_0.o(.text)
		src/overlays/common/common0_func_70_d4.o(.text)
		src/overlays/common/common0_func_10c.o(.text)
		asm/overlays/rom_7bdeb0/ovl_314_a_a_a_b.o(.text)
		src/overlays/rom_7bdeb0/ovl_314_a_a_a_c_a.o(.text)
		src/overlays/rom_7bdeb0/ovl_314_a_a_a_c_b.o(.text)
		src/overlays/rom_7bdeb0/ovl_314_a_a_a_c_c.o(.text)
		asm/overlays/rom_7bdeb0/ovl_314_a_a_b.o(.text)
		src/overlays/rom_7bdeb0/ovl_314_a_a_c_8630.o(.text)
		src/overlays/rom_7bdeb0/ovl_314_a_a_c_8758.o(.text)
		src/overlays/rom_7bdeb0/ovl_314_a_a_c_88ec.o(.text)
		asm/overlays/rom_7bdeb0/ovl_314_a_a_c.o(.text.after_88ec)
		src/overlays/rom_7bdeb0/ovl_314_a_a_c_8ba4.o(.text)
		asm/overlays/rom_7bdeb0/ovl_314_a_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_314_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_314_c_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_314_c_c.o(.text)
		asm/overlays/rom_7bdeb0/ovl_d20_a.o(.text)
		asm/overlays/rom_7bdeb0/ovl_d20_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_d20_c_b.o(.text)
		src/overlays/rom_7bdeb0/ovl_d20_c_c_a_a.o(.text)
		src/overlays/rom_7bdeb0/ovl_d20_c_c_a_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_d20_c_c_a_c.o(.text)
		asm/overlays/rom_7bdeb0/ovl_d20_c_c_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_d20_c_c_c.o(.text)
		src/overlays/rom_7bdeb0/ovl_d20_c_c_c_91a0.o(.text)
		src/overlays/rom_7bdeb0/ovl_d20_c_c_c_9258.o(.text)
		src/overlays/rom_7bdeb0/ovl_1300_a_9300.o(.text)
		src/overlays/rom_7bdeb0/ovl_1300_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_1300_c.o(.text)
		asm/overlays/rom_7bdeb0/ovl_169c_a_a_a.o(.text)
		asm/overlays/rom_7bdeb0/ovl_169c_a_a_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_169c_a_a_c.o(.text)
		src/overlays/rom_7bdeb0/ovl_169c_a_a_c_9770.o(.text)
		src/overlays/rom_7bdeb0/ovl_169c_a_a_c_97d8.o(.text)
		asm/overlays/rom_7bdeb0/ovl_169c_a_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_169c_a_c_b.o(.text)
		src/overlays/rom_7bdeb0/ovl_169c_a_c_c_9938.o(.text)
		asm/overlays/rom_7bdeb0/ovl_169c_a_c_c.o(.text)
		asm/overlays/rom_7bdeb0/ovl_169c_b.o(.text)
		asm/overlays/rom_7bdeb0/ovl_169c_c.o(.text)
		src/overlays/rom_7bdeb0/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		src/overlays/common/common0_func_10c.o(.data)
		asm/overlays/rom_7bdeb0/ovl_314_c_c.o(.data)
		src/overlays/rom_7bdeb0/ovl_1300_a_9300.o(.data)
		asm/overlays/rom_7bdeb0/ovl_1300_c.o(.data)
		src/overlays/common/common0_func_10c.o(.data1)
		asm/overlays/rom_7bdeb0/ovl_d20_c_c_c.o(.data)
		asm/overlays/rom_7bdeb0/ovl_169c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
