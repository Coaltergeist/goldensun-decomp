	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a8578  @ 0x080a8578
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r8, r0
	mov	r7, r1
	ldr	r3, [r3]
	cmp	r2, #0
	bne	.La8590
	cmp	r7, #3
	ble	.La8590
	add	r7, #1
.La8590:
	cmp	r7, #1
	bne	.La85c4
	ldr	r2, =0x21a
	add	r6, r3, r2
	ldrb	r0, [r6]
	bl	_GetUnit
	mov	r5, r0
	ldrb	r3, [r5, #0xf]
	cmp	r3, #0x63
	bne	.La85aa
	mov	r7, #8
	b	.La85c4
.La85aa:
	ldrb	r1, [r5, #0xf]
	ldrb	r0, [r6]
	add	r1, #1
	bl	_GetPCStatGrowth
	mov	r2, #0x92
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r3, [r3]
	mov	r1, #5
	sub	r0, r3
	bl	_Func_8019908
.La85c4:
	mov	r0, #0x80
	lsl	r0, #1
	bl	alloc_iwram
	mov	r5, r0
	ldr	r0, =0xbe6
	mov	r1, r5
	add	r0, r7, r0
	mov	r2, #0x80
	bl	_Func_801965c
	mov	r3, #1
	mov	r0, r5
	neg	r3, r3
	mov	r1, r8
	mov	r2, #0
	bl	_Func_8017aa4
	mov	r0, r5
	bl	free
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a8578

	.section .rodata.rom_a7380
.Laf2fc:
	.incrom 0xaf2fc, 0xaf304
