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
		build/usa/obj/asm/overlays/rom_7bdeb0/vale_cave/exports.o(.text)
		build/usa/obj/src/overlays/common/common0.o(.text)
		build/usa/obj/src/overlays/rom_7bdeb0/vale_cave.o(.text)
		build/usa/obj/asm/overlays/rom_7bdeb0/vale_cave/imports.o(.text)
		build/usa/obj/src/lib/call_via.o(.text)
	} > overlay

	.data : {
		build/usa/obj/src/overlays/common/common0.o(.data)
		build/usa/obj/src/overlays/rom_7bdeb0/vale_cave.o(.data)
		build/usa/obj/src/overlays/rom_7bdeb0/vale_cave.o(.mdata1)
		build/usa/obj/src/overlays/common/common0.o(.data1)
		build/usa/obj/src/overlays/rom_7bdeb0/vale_cave.o(.mdata2)
		build/usa/obj/src/overlays/rom_7bdeb0/vale_cave.o(.mdata3)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
