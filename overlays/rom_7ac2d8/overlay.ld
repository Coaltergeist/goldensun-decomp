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
		src/overlays/common/common0_func_0.o(.text)
		src/overlays/common/common0_func_70_d4.o(.text)
		src/overlays/common/common0_func_10c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_314_a_b.o(.text)
		src/overlays/rom_7ac2d8/ovl_314_a_c_a_a.o(.text)
		src/overlays/rom_7ac2d8/ovl_314_a_c_a_b.o(.text)
		src/overlays/rom_7ac2d8/ovl_314_a_c_a_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_314_a_c_b.o(.text)
		src/overlays/rom_7ac2d8/ovl_314_a_c_c_8630.o(.text)
		src/overlays/rom_7ac2d8/ovl_314_a_c_c_8758.o(.text)
		src/overlays/rom_7ac2d8/ovl_314_a_c_c_88ec.o(.text)
		asm/overlays/rom_7ac2d8/ovl_314_a_c_c.o(.text.after_88ec)
		src/overlays/rom_7ac2d8/ovl_314_a_c_c_8ba4.o(.text)
		asm/overlays/rom_7ac2d8/ovl_314_b.o(.text)
		src/overlays/rom_7ac2d8/ovl_314_c_8cd0.o(.text)
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
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_c_c_c_c_c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_c.o(.text)
		src/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_c_9568.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_c.o(.text.after_9568)
		asm/overlays/rom_7ac2d8/ovl_f84_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_f84_c_c.o(.text)
		src/overlays/rom_7ac2d8/ovl_f84_c_c_9d3c.o(.text)
		asm/overlays/rom_7ac2d8/ovl_1db4.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_b.o(.text)
		src/overlays/rom_7ac2d8/ovl_22c4_c_c_c_a_a648.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_a.o(.text.after_a648)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_b.o(.text)
		src/overlays/rom_7ac2d8/ovl_22c4_c_c_c_c_a844.o(.text)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_c.o(.text.after_a844)
		src/overlays/rom_7ac2d8/ovl_2dcc_adcc.o(.text)
		asm/overlays/rom_7ac2d8/ovl_2dcc.o(.text.after_adcc)
		src/overlays/rom_7ac2d8/ovl_2dcc_ae08.o(.text)
		asm/overlays/rom_7ac2d8/ovl_2dcc.o(.text.after_ae08)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_a_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_a_c.o(.text)
		src/overlays/rom_7ac2d8/ovl_35b8_a_a_c_b788.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_a_c.o(.text.after_b788)
		src/overlays/rom_7ac2d8/ovl_35b8_a_a_c_cf44_cf90.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_a_c.o(.text.after_cf90)
		src/overlays/rom_7ac2d8/ovl_35b8_a_a_c_d158.o(.text)
		src/overlays/rom_7ac2d8/ovl_35b8_a_a_c_d1b0.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_c_a.o(.text)
		src/overlays/rom_7ac2d8/ovl_35b8_a_c_a_d458.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_c_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_a_c_c.o(.text)
		src/overlays/rom_7ac2d8/ovl_35b8_a_c_c_d900.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_b.o(.text)
		asm/overlays/rom_7ac2d8/ovl_35b8_c.o(.text)
		src/overlays/rom_7ac2d8/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		src/overlays/common/common0_func_10c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_314_c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_35b8_c.o(.data)
		src/overlays/common/common0_func_10c.o(.data1)
		asm/overlays/rom_7ac2d8/ovl_2dcc.o(.data)
		asm/overlays/rom_7ac2d8/ovl_1db4.o(.data)
		asm/overlays/rom_7ac2d8/ovl_d58_c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_f84_c_c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_c.o(.data)
		asm/overlays/rom_7ac2d8/ovl_e20_c_c_c_c_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
