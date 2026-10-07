	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8019d0c  @ 0x08019d0c
	ldr	r3, =iwram_3001e8c
	ldr	r0, =0x12ec
	ldr	r3, [r3]
	ldr	r2, .L19d20	@ 0x3e7
	add	r1, r3, r0
	add	r0, #2
	strh	r2, [r1]
	add	r1, r3, r0
	strh	r2, [r1]
	bx	lr
	.align	2, 0
.L19d20:
	.word	0x3e7
.func_end Func_8019d0c

	.section .rodata.rom_1908c_c_c
	.global .L33e60
	.global .L33eb0
	.global .L33ee8

.L33e60:
	.incrom 0x33e60, 0x33eb0
.L33eb0:
	.incrom 0x33eb0, 0x33ee8
.L33ee8:
	.incrom 0x33ee8, 0x33ef8
