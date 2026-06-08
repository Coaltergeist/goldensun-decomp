	.include "macros.inc"

.thumb_func_start Func_801c9c8  @ 0x0801c9c8
	mov	r1, #0x80
	lsl	r1, #3
	mov	r2, #0
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x3c
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r0, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r0, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r0, r1
	strh	r2, [r3]
	ldr	r3, =0x57c
	add	r0, r3
	strh	r2, [r0]
	bx	lr
.func_end Func_801c9c8

	.section .rodata
	.global .L342f8
	.global .L33ef8
	.global .L342f8

.L33ef8:
	.incrom 0x33ef8, 0x342f8
.L342f8:
	.incrom 0x342f8, 0x346f8
