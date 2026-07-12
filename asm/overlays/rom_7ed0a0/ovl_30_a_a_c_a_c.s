	.include "macros.inc"
.thumb_func_start OvlFunc_964_2008df4
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r2, sp
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r1, =0xffe00000
	ldr	r3, [r0, #0x10]
	add	r3, r1
	str	r3, [r2, #8]
	mov	r0, r2
	bl	OvlFunc_964_2008cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2008df4

.thumb_func_start OvlFunc_964_2008e20
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ee0
	ldr	r1, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	ldr	r5, [r3]
	add	r3, r1, r2
	mov	r6, #0
	ldrsh	r2, [r3, r6]
	ldr	r3, =0xac
	mov	r4, #0
	cmp	r2, r3
	bne	.Le90
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r6, #0
	ldrsh	r3, [r3, r6]
	sub	r3, #3
	cmp	r3, #0xa
	bhi	.Lea0
	ldr	r2, =.Le58
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Le58:
	.word	.Le84
	.word	.Le84
	.word	.Lea0
	.word	.Lea0
	.word	.Lea0
	.word	.Le88
	.word	.Le88
	.word	.Lea0
	.word	.Lea0
	.word	.Le8c
	.word	.Le8c
.Le84:
	mov	r4, #0x5e
	b	.Lea0
.Le88:
	mov	r4, #0x4a
	b	.Lea0
.Le8c:
	mov	r4, #0x76
	b	.Lea0
.Le90:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r6, #0
	ldrsh	r3, [r3, r6]
	cmp	r3, #0xc
	bne	.Lea0
	mov	r4, #0x5d
.Lea0:
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, r4
	bgt	.Leae
	mov	r3, #0
	str	r3, [r5, #0x18]
	b	.Leb0
.Leae:
	str	r0, [r5, #0x18]
.Leb0:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2008e20
