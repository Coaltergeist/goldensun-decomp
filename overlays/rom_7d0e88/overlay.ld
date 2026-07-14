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
		src/overlays/rom_7d0e88/exports.o(.text)
		src/overlays/common/common0_func_0.o(.text)
		src/overlays/common/common0_func_70_d4.o(.text)
		src/overlays/common/common0_func_10c.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_a_b.o(.text)
		src/overlays/rom_7d0e88/ovl_314_a_c_a_a.o(.text)
		src/overlays/rom_7d0e88/ovl_314_a_c_a_b.o(.text)
		src/overlays/rom_7d0e88/ovl_314_a_c_a_c.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_a_c_b.o(.text)
		src/overlays/rom_7d0e88/ovl_314_a_c_c_8630.o(.text)
		src/overlays/rom_7d0e88/ovl_314_a_c_c_8758.o(.text)
		src/overlays/rom_7d0e88/ovl_314_a_c_c_88ec.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_a_c_c.o(.text.after_88ec)
		src/overlays/rom_7d0e88/ovl_314_a_c_c_8ba4.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_a_c_c.o(.text.after_8ba4)
		asm/overlays/rom_7d0e88/ovl_314_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_a_a.o(.text)
		src/overlays/rom_7d0e88/ovl_314_c_a_a_8fcc.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_a_a.o(.text.after_8fcc)
		src/overlays/rom_7d0e88/ovl_314_c_a_a_901c.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_a_a.o(.text.after_901c)
		asm/overlays/rom_7d0e88/ovl_314_c_a_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_a_c.o(.text)
		src/overlays/rom_7d0e88/ovl_314_c_a_c_93b0.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_314_c_c.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_c_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1440_c_c_c.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_a_a_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_a_a_c_a.o(.text)
		src/overlays/rom_7d0e88/ovl_1528_a_a_a_c.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_a_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_a_c.o(.text)
		src/overlays/rom_7d0e88/ovl_1528_a_a_c_9fd4.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_c_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_a_c_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_c_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_c_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_c_c_b.o(.text)
		src/overlays/rom_7d0e88/ovl_1528_c_c_c_a15c.o(.text)
		asm/overlays/rom_7d0e88/ovl_1528_c_c_c.o(.text.before)
		src/overlays/rom_7d0e88/ovl_1528_c_c_c_a498.o(.text)
		src/overlays/rom_7d0e88/ovl_1528_c_c_c_a4cc.o(.text)
		src/overlays/rom_7d0e88/ovl_1528_c_c_c_a53c.o(.text)
		asm/overlays/rom_7d0e88/ovl_2580_a_a.o(.text)
		asm/overlays/rom_7d0e88/ovl_2580_a.o(.text)
		src/overlays/rom_7d0e88/ovl_2580_a_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_2580_b.o(.text)
		asm/overlays/rom_7d0e88/ovl_2580_c.o(.text)
		src/overlays/rom_7d0e88/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		src/overlays/common/common0_func_10c.o(.data)
		asm/overlays/rom_7d0e88/ovl_314_c_c.o(.data)
		src/overlays/common/common0_func_10c.o(.data1)
		asm/overlays/rom_7d0e88/ovl_2d64.o(.data)
		asm/overlays/rom_7d0e88/ovl_1528_c_c_c.o(.data)
		asm/overlays/rom_7d0e88/ovl_1440_c_c_c.o(.data)
		asm/overlays/rom_7d0e88/ovl_2580_c.o(.data)
	} > overlay

	.bss : {
		asm/overlays/rom_7d0e88/ovl_1528_c_c_c.o(.bss)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
