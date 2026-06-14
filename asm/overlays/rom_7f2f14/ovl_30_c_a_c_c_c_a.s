	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20099f0
	push	{lr}
	bl	__CutsceneStart
	bl	OvlFunc_968_2008cc8
	cmp	r0, #0
	bne	.L1a0a
	bl	OvlFunc_968_200999c
	bl	OvlFunc_968_2008374
	bl	OvlFunc_968_20099c0
.L1a0a:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20099f0

.thumb_func_start OvlFunc_968_2009a14
	push	{lr}
	mov	r2, #0x23
	add	r2, r0
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #2
	orr	r3, r2
	mov	r2, r12
	strb	r3, [r2]
	mov	r3, r0
	mov	r1, #0
	add	r3, #0x55
	strb	r1, [r3]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	sub	sp, #8
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009a14

.thumb_func_start OvlFunc_968_2009a50
	push	{r5, r6, r7, lr}
	mov	r7, r0
	ldr	r1, [r7, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.L1a92
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r5, #0
	mov	r2, #0x80
	lsl	r2, #18
	mov	r1, #0
	mov	r3, #0xdf
	str	r5, [r7, #0x44]
	ldr	r0, [r7, #8]
	bl	OvlFunc_968_2008058
	mov	r6, r0
	mov	r0, r7
	bl	OvlFunc_968_200894c
	str	r5, [r7, #8]
	str	r5, [r7, #0x10]
	mov	r0, r6
	bl	__DeleteActor
	b	.L1a96
.L1a92:
	bl	OvlFunc_968_20099c0
.L1a96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009a50

