	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801fda8  @ 0x0801fda8
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	ldr	r7, [r3]
	ldrh	r3, [r0, #0xc]
	add	r3, r1, r3
	add	r1, r3, #1
	ldrh	r3, [r0, #0xe]
	add	r3, r2, r3
	ldr	r5, [sp, #0x10]
	add	r2, r3, #1
	cmp	r1, #0
	bge	.L1fdc6
	add	r6, r1
	mov	r1, #0
.L1fdc6:
	add	r3, r1, r6
	cmp	r3, #0x1d
	ble	.L1fdd0
	mov	r3, #0x1e
	sub	r6, r3, r1
.L1fdd0:
	cmp	r2, #0
	bge	.L1fdd8
	add	r5, r2
	mov	r2, #0
.L1fdd8:
	add	r3, r2, r5
	cmp	r3, #0x1d
	ble	.L1fde2
	mov	r3, #0x14
	sub	r5, r3, r2
.L1fde2:
	cmp	r6, #0
	ble	.L1fe24
	cmp	r5, #0
	ble	.L1fe24
	lsl	r2, #6
	lsl	r3, r1, #1
	add	r1, r2, r3
.L1fdf0:
	mov	r0, r6
	add	r4, r1, r7
	cmp	r0, #0
	beq	.L1fe04
	ldr	r3, .L1fe18	@ 0xe006
.L1fdfa:
	sub	r0, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r0, #0
	bne	.L1fdfa
.L1fe04:
	sub	r5, #1
	add	r1, #0x40
	cmp	r5, #0
	bne	.L1fdf0
	ldr	r3, =0xea3
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
	b	.L1fe24
	.align	2, 0
.L1fe18:
	.word	0xe006
	.pool

.L1fe24:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801fda8

	.section .rodata
	.global .L371c4
	.global .L371b4

.L371b4:
	.incrom 0x371b4, 0x371c4
.L371c4:
	.incrom 0x371c4, 0x371e0
