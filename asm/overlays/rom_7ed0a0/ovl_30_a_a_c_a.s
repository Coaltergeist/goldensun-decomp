	.include "macros.inc"

.thumb_func_start OvlFunc_964_2008cd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r0
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r3, [r7]
	ldr	r1, =0xfff00000
	mov	r10, r3
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r5, #8]
	mov	r3, #0x80
	ldrh	r1, [r6, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #13
	mov	r2, r5
	bl	__vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	__TestCollision
	cmp	r0, #1
	beq	.Ldb4
	mov	r0, r6
	mov	r1, r8
	bl	__TestCollision
	cmp	r0, #0
	bne	.Ldb4
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r6
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r6
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r2, [r3, #8]
	asr	r1, #20
	asr	r2, #20
	lsl	r1, #4
	lsl	r2, #4
	add	r2, #8
	add	r1, #8
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r6
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r1, #1
	mov	r0, r6
	bl	__Actor_SetSpriteFlags
	mov	r0, #6
	bl	__WaitFrames
	mov	r3, r10
	strb	r3, [r7]
	bl	__CutsceneEnd
	mov	r0, #0
	b	.Ldb6
.Ldb4:
	mov	r0, #1
.Ldb6:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_2008cd0

.thumb_func_start OvlFunc_964_2008dc8
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r2, sp
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	mov	r1, #0x80
	ldr	r3, [r0, #0x10]
	lsl	r1, #14
	add	r3, r1
	str	r3, [r2, #8]
	mov	r0, r2
	bl	OvlFunc_964_2008cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2008dc8

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
