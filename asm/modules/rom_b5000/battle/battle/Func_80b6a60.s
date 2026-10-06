	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6a60  @ 0x080b6a60
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x44
	ldrb	r3, [r3]
	sub	sp, #4
	mov	r5, r0
	mov	r6, #4
	cmp	r3, #0
	beq	.Lb6a7a
	mov	r6, #3
.Lb6a7a:
	bl	_GetPartySize
	mov	r7, r0
	cmp	r7, r6
	ble	.Lb6a86
	mov	r7, r6
.Lb6a86:
	cmp	r7, #0
	ble	.Lb6abc
	ldr	r3, =gState
	mov	r1, #0xfc
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r8, r3
	mov	r6, r7
.Lb6a98:
	ldrb	r0, [r2]
	add	r2, #1
	cmp	r5, #0
	beq	.Lb6aa4
	strh	r0, [r5]
	add	r5, #2
.Lb6aa4:
	str	r2, [sp]
	bl	_GetUnit
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r0, r1
	sub	r6, #1
	mov	r1, r8
	strb	r1, [r3]
	ldr	r2, [sp]
	cmp	r6, #0
	bne	.Lb6a98
.Lb6abc:
	cmp	r5, #0
	beq	.Lb6ac4
	ldr	r3, .Lb6ad4	@ 0xff
	strh	r3, [r5]
.Lb6ac4:
	mov	r0, r7
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb6ad4:
	.word	0xff
.func_end Func_80b6a60

