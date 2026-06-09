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

.thumb_func_start OvlFunc_964_2008ec8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x23
	add	r2, r5
	mov	r12, r2
	mov	r3, #2
	ldrb	r2, [r2]
	mov	r1, r3
	orr	r1, r2
	mov	r3, r12
	strb	r1, [r3]
	ldr	r2, [r0, #0x10]
	ldr	r3, [r5, #0x10]
	cmp	r2, r3
	bge	.Lf06
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	add	r3, r2
	ldr	r2, [r5, #0xc]
	add	r2, r3
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	bgt	.Lf06
	mov	r3, #0xfd
	and	r1, r3
	mov	r3, r12
	strb	r1, [r3]
.Lf06:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_2008ec8

.thumb_func_start OvlFunc_964_2008f10
	push	{r5, r6, lr}
	mov	r5, r1
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	cmp	r2, r3
	bgt	.Lf46
	ldr	r3, [r0, #8]
	ldr	r2, [r6, #8]
	str	r3, [r6, #8]
	str	r2, [r0, #8]
	ldr	r3, [r0, #0xc]
	ldr	r2, [r6, #0xc]
	str	r3, [r6, #0xc]
	str	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	str	r3, [r6, #0x10]
	str	r2, [r0, #0x10]
	mov	r0, #1
	bl	__WaitFrames
.Lf46:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2008f10

.thumb_func_start OvlFunc_964_2008f4c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	sub	sp, #0x38
	mov	r8, r0
	cmp	r3, #0
	beq	.Lf6a
	mov	r1, #1
	bl	__Actor_SetAnim
	b	.Lf72
.Lf6a:
	mov	r0, r8
	mov	r1, #2
	bl	__Actor_SetAnim
.Lf72:
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #3
	and	r7, r3
	mov	r0, #0
	cmp	r7, #0
	bne	.Lfd0
	ldr	r3, =0x4ccc
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #5
	str	r3, [r6, #4]
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	mov	r1, r8
	lsr	r3, #16
	ldr	r5, [r1, #8]
	sub	r3, #3
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	mov	r1, r8
	lsr	r3, #16
	ldr	r2, [r1, #0x10]
	sub	r3, #3
	lsl	r3, #16
	ldr	r1, [r1, #0xc]
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #13
	add	r1, r3
	ldr	r3, =0x90001
	mov	r0, r5
	str	r3, [sp, #8]
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_964_2008ae8
	mov	r0, #0
.Lfd0:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_2008f4c

.thumb_func_start OvlFunc_964_2008fe8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffd00000
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	ble	.L1020
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xa
	bne	.L1020
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	ldr	r3, =0xffe00000
	mov	r0, #8
	str	r3, [r5, #0xc]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	b	.L1026
.L1020:
	mov	r3, #0
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
.L1026:
	str	r3, [r5, #0x10]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_2008fe8

.thumb_func_start OvlFunc_964_2009038
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, #0x3c
.L103e:
	cmp	r6, #0
	beq	.L1054
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	sub	r6, #1
	cmp	r3, r2
	bgt	.L103e
	b	.L1056
.L1054:
	ldr	r2, [r5, #0x14]
.L1056:
	mov	r3, #0
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x3c]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009038

.thumb_func_start OvlFunc_964_2009068
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, [r6, #0x44]
	ldr	r3, [r6, #8]
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, [r6, #0x48]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r7, [r6, #0x4c]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	add	r3, r7
	mov	r1, #0x12
	str	r3, [r6, #0x10]
	bl	_divsi3_RAM
	sub	r5, r0
	str	r5, [r6, #0x44]
	mov	r3, r7
	cmp	r7, #0
	bge	.L1098
	add	r3, #0xf
.L1098:
	asr	r3, #4
	sub	r3, r7, r3
	str	r3, [r6, #0x4c]
	ldr	r2, [r6, #0x30]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r2, [r6, #0x34]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldr	r1, [r6, #0x50]
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r2]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009068

.thumb_func_start OvlFunc_964_20090c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r6
	bl	__Actor_SetAnim
	mov	r0, #0
	bl	__Func_8092504
	mov	r0, r6
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r1, #0
	mov	r0, r6
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x55
	add	r0, r6
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r10, r0
	mov	r0, #0x98
	bl	__PlaySound
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r0, #0xc0
	ldr	r3, [r6, #0x10]
	lsl	r0, #12
	add	r3, r0
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, #6
	bl	__WaitFrames
	add	r3, sp, #0x10
	mov	r8, r3
	ldr	r3, =OvlFunc_964_2009068
	mov	r2, r10
	mov	r0, r8
	mov	r5, #0
	strb	r5, [r2]
	str	r3, [r0, #0x24]
	mov	r0, #0x7f
	bl	__PlaySound
	mov	r7, #0
.L1142:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xfffe0000
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	and	r3, r7
	cmp	r3, #0
	beq	.L11a6
	bl	__Random
	mov	r1, #0xa
	bl	_umodsi3_RAM
	ldr	r3, =0x3332
	sub	r0, #5
	mov	r5, r0
	mul	r5, r3
	bl	__Random
	mov	r1, #0xa
	bl	_umodsi3_RAM
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	add	r3, r0
	lsl	r4, r3, #6
	sub	r4, r3
	lsl	r4, #3
	add	r4, r0
	ldr	r3, =0xffff8003
	neg	r4, r4
	add	r4, r3
	mov	r3, #0
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	str	r3, [sp]
	ldr	r3, =0x1000001
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, r5
	str	r4, [sp, #4]
	bl	OvlFunc_964_2008ae8
.L11a6:
	add	r7, #1
	cmp	r7, #7
	bls	.L1142
	mov	r0, r6
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r3, #3
	mov	r0, r10
	strb	r3, [r0]
	bl	__CutsceneEnd
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20090c4

.thumb_func_start OvlFunc_964_20091e0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x44
	bl	__MapActor_GetActor
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #7
	str	r3, [r2, #4]
	ldr	r3, =OvlFunc_964_2009068
	str	r3, [r2, #0x24]
	mov	r3, #0
	mov	r10, r0
	mov	r9, r2
	mov	r8, r3
	add	r7, sp, #0x38
.L1208:
	mov	r2, r8
	lsl	r5, r2, #12
	mov	r0, r5
	bl	__cos
	mov	r3, #0
	str	r3, [r7, #4]
	str	r0, [r7]
	mov	r0, r5
	bl	__sin
	ldr	r5, [r7]
	mov	r6, r0
	mov	r1, #3
	mov	r0, r5
	str	r6, [r7, #8]
	bl	_divsi3_RAM
	add	r5, r0
	str	r5, [r7]
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	ldr	r3, =0x1030001
	str	r3, [sp, #8]
	mov	r3, r9
	str	r3, [sp, #0xc]
	mov	r3, r5
	str	r6, [sp, #4]
	bl	OvlFunc_964_2008ae8
	mov	r2, #2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x10
	bls	.L1208
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20091e0

.thumb_func_start OvlFunc_964_2009270
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.L1288
	ldr	r0, =.L3474
	b	.L1294
.L1288:
	ldr	r3, =0xad
	cmp	r2, r3
	bne	.L1292
	ldr	r0, =.L3654
	b	.L1294
.L1292:
	ldr	r0, =.L342c
.L1294:
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_2009270

.thumb_func_start OvlFunc_964_20092b0
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xad
	mov	r0, #0
	cmp	r2, r3
	bne	.L12c8
	ldr	r0, =gScript_888__0200b81c
.L12c8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_20092b0

