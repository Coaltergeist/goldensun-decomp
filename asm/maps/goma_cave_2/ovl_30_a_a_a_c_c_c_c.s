	.include "macros.inc"

.thumb_func_start OvlFunc_905_20088c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #0x20
	mov	r10, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r1, =.Lm905_1594
	mov	r5, #0
	ldr	r3, [r1, r5]
	cmp	r2, r3
	bne	.Lm905_8ea
	add	r7, sp, #8
	b	.Lm905_90c
.Lm905_8ea:
	add	r7, sp, #8
	mov	r12, r7
	mov	r6, #7
	mov	r4, r1
.Lm905_8f2:
	mov	r3, r12
	add	r5, #1
	str	r6, [r3]
	cmp	r5, #5
	bhi	.Lm905_90e
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	add	r4, #4
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, [r4]
	cmp	r2, r3
	bne	.Lm905_8f2
.Lm905_90c:
	str	r5, [r7]
.Lm905_90e:
	ldr	r2, [r7]
	cmp	r2, #6
	bls	.Lm905_918
	mov	r0, #0
	b	.Lm905_9c2
.Lm905_918:
	ldr	r3, [r0, #8]
	str	r3, [r7, #8]
	mov	r12, r3
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #0xc]
	ldr	r0, [r0, #0x10]
	lsl	r1, r2, #4
	str	r0, [r7, #0x10]
	ldr	r4, =.Lm905_15ac
	add	r5, r1, #4
	ldr	r2, [r4, r5]
	mov	r14, r0
	cmp	r2, #0
	bge	.Lm905_936
	neg	r2, r2
.Lm905_936:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.Lm905_942
	neg	r3, r3
.Lm905_942:
	add	r3, r2, r3
	ldr	r0, [r4, r1]
	asr	r3, #4
	mov	r8, r3
	mov	r6, r0
	cmp	r0, #0
	bge	.Lm905_952
	neg	r6, r0
.Lm905_952:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.Lm905_95e
	neg	r3, r3
.Lm905_95e:
	lsl	r0, #16
	add	r0, r12
	str	r0, [r7, #8]
	ldr	r1, [r4, r5]
	lsl	r1, #16
	add	r1, r14
	asr	r0, #20
	asr	r1, #20
	add	r6, r3
	mov	r3, #0x9e
	str	r0, [r7, #8]
	str	r1, [r7, #0x10]
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	asr	r5, r3, #20
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	asr	r3, #20
	add	r2, r5, r0
	add	r3, r1
	asr	r6, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r6
	mov	r3, r8
	bl	__Func_8010704
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r5, #0xff
	str	r3, [sp]
	mov	r0, #0
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_905_2008244
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r0, #2
	str	r3, [sp]
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_905_2008244
	mov	r0, #1
.Lm905_9c2:
	add	sp, #0x20
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_905_20088c0

.thumb_func_start OvlFunc_905_20089dc
	push	{lr}
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0xc
	mov	r1, #0x28
	bl	__Func_8091f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_20089dc

.thumb_func_start OvlFunc_905_2008a00
	push	{lr}
	mov	r3, r0
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.Lm905_a34
	cmp	r3, #1
	bgt	.Lm905_a18
	cmp	r3, #0
	beq	.Lm905_a1e
	b	.Lm905_a54
.Lm905_a18:
	cmp	r3, #2
	beq	.Lm905_a40
	b	.Lm905_a54
.Lm905_a1e:
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #8]
	str	r3, [r0, #0x38]
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	b	.Lm905_a54
.Lm905_a34:
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #8]
	str	r3, [r0, #0x38]
	b	.Lm905_a4a
.Lm905_a40:
	ldr	r3, [r0, #0xc]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
.Lm905_a4a:
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	str	r3, [r0, #0x40]
.Lm905_a54:
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_2008a00

