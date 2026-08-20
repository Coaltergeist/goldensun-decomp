	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200cfcc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r9, r0
	mov	r1, #4
	mov	r0, #0x23
	sub	sp, #4
	bl	__galloc_ewram
	mov	r2, r8
	str	r2, [r0]
	ldr	r0, =0x109
	bl	__GetFlag
	mov	r3, r0
	cmp	r3, #0
	bne	.Lm924_500a
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r8
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r9
	mov	r0, r8
	str	r3, [r0, #4]
	b	.Lm924_5146
.Lm924_500a:
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__GetFieldActor
	mov	r7, r0
	ldr	r4, [r7, #0x10]
	mov	r3, r4
	cmp	r4, #0
	bge	.Lm924_5026
	ldr	r0, =0xfffff
	add	r3, r4, r0
.Lm924_5026:
	ldr	r1, [r7, #8]
	asr	r3, #20
	lsl	r2, r3, #7
	mov	r3, r1
	cmp	r1, #0
	bge	.Lm924_5036
	ldr	r0, =0xfffff
	add	r3, r1, r0
.Lm924_5036:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r2, =gBuffer
	lsl	r3, #2
	mov	r0, r8
	add	r2, r3
	ldr	r3, [r0]
	mov	r10, r2
	cmp	r3, #0
	beq	.Lm924_50b0
	ldr	r3, [r0, #0x14]
	cmp	r3, #0
	beq	.Lm924_50b0
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r0, #0x1a
	mov	r3, r4
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm924_50b6
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_924__0200de38
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r6, #0
	beq	.Lm924_50aa
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #6
	sub	r1, r3
	mov	r0, r6
	bl	__Sprite_SetAnim
	mov	r2, r6
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	ldrb	r2, [r6, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.Lm924_50aa:
	mov	r3, r8
	str	r5, [r3, #0x14]
	b	.Lm924_50b6
.Lm924_50b0:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x14]
.Lm924_50b6:
	mov	r2, r10
	ldrb	r3, [r2, #2]
	cmp	r3, r9
	bne	.Lm924_5140
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	beq	.Lm924_5140
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm924_5146
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_924__0200de20
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	cmp	r6, #0
	beq	.Lm924_5112
	mov	r0, r6
	mov	r1, #6
	bl	__Sprite_SetAnim
	mov	r2, r6
	ldr	r3, .Lm924_5118	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.Lm924_5112:
	mov	r2, r8
	str	r5, [r2, #0x18]
	b	.Lm924_5146

	.align	2, 0
.Lm924_5118:
	.word	0
	.pool

.Lm924_5140:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x18]
.Lm924_5146:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200cfcc

