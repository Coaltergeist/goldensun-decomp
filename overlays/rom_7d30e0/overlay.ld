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
		src/overlays/rom_7d30e0/exports.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_a_a_a_b.o(.text)
		src/overlays/rom_7d30e0/ovl_30_a_a_a_c_a_a.o(.text)
		src/overlays/rom_7d30e0/ovl_30_a_a_a_c_a_b.o(.text)
		src/overlays/rom_7d30e0/ovl_30_a_a_a_c_a_c.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_a_a_a_c_b.o(.text)
		src/overlays/rom_7d30e0/ovl_30_a_a_a_c_c_834c.o(.text)
		src/overlays/rom_7d30e0/ovl_30_a_a_a_c_c_8474.o(.text)
		src/overlays/rom_7d30e0/ovl_30_a_a_a_c_c_8608.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_a_a_a_c_c.o(.text.after_8608)
		src/overlays/rom_7d30e0/ovl_30_a_a_a_c_c_88c0.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_a_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_a_c.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_a.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_b.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c_8ad0.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c.o(.text.after_8ad0)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c_8e50.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c_a.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_a.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_a_8fdc.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_a_9070.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_a_90b8.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_a.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_a.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_c_b.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_c_c_9308.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_c_c.o(.text.after_9308)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_c_c_938c.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_c_c_941c.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_c_c_949c.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_c_c.o(.text.after_941c)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_c_c_c.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_c_c_c_97ac.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_c_c_c_9838.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_c.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_a.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_a.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c_a_a.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c_a_b_9ac8.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c_a_b_9b60.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c_a_b_9bc4.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_b.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_a_c_a_a.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_c_a_b.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_a_c_a_c_9cf8.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_a_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_b.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_c_a_a.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_c_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_a_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c_b.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c_c.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c_c_9edc.o(.text)
		src/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c_c_9f78.o(.text)
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c_c.o(.text.after_9f78)
		src/overlays/rom_7d30e0/imports.o(.text)
		src/lib/call_via.o(.text)
	} > overlay

	.data : {
		asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c_c.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
