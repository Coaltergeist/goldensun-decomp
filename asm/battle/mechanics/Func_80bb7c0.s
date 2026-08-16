	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bb7c0  @ 0x080bb7c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0
	sub	sp, #0x14
	mov	r6, r1
	bl	_Func_8021bc8
	mov	r11, r0
	str	r5, [sp]
	str	r6, [sp, #4]
	b	.Lbb7e8
.Lbb7e2:
	mov	r0, #1
	bl	WaitFrames
.Lbb7e8:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lbb7e2
	mov	r0, #0x80
	add	r5, sp, #8
	bl	AllocUploadSpriteGFX
	mov	r2, sp
	ldrh	r2, [r2]
	ldr	r3, =iwram_3001e40
	mov	r9, r2
	ldr	r7, =REG_WINOUT
	mov	r2, #4
	mov	r6, r0
	mov	r10, r3
	mov	r8, r2
.Lbb80a:
	mov	r0, r7
	mov	r1, #4
	bl	Func_80039fc
	mov	r0, r7
	mov	r1, #0x10
	bl	Func_800393c
	mov	r2, #0x10
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #23
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	mov	r1, r11
	mov	r0, r6
	bl	UploadSprite2
	ldr	r3, .Lbb868	@ 0x3ff
	ldr	r2, .Lbb86c	@ 0xfffffc00
	and	r0, r3
	ldrh	r3, [r5, #8]
	and	r3, r2
	orr	r3, r0
	mov	r2, r10
	strh	r3, [r5, #8]
	ldr	r3, [r2]
	mov	r2, r8
	and	r3, r2
	lsr	r3, #1
	ldr	r2, =0xfffc
	add	r3, r9
	add	r3, r2
	ldr	r2, .Lbb870	@ 0x1ff
	ldr	r1, .Lbb874	@ 0xfffffe00
	and	r3, r2
	ldrh	r2, [r5, #6]
	and	r2, r1
	orr	r2, r3
	strh	r2, [r5, #6]
	mov	r2, r10
	ldr	r3, [r2]
	mov	r2, r8
	b	.Lbb888

	.align	2, 0
.Lbb868:
	.word	0x3ff
.Lbb86c:
	.word	0xfffffc00
.Lbb870:
	.word	0x1ff
.Lbb874:
	.word	0xfffffe00
	.pool

.Lbb888:
	and	r3, r2
	ldr	r2, [sp, #4]
	lsr	r3, #2
	sub	r3, r2, r3
	add	r3, #0xf8
	strb	r3, [r5, #4]
	mov	r0, r5
	mov	r1, #0xf0
	bl	Func_8003dec
	ldr	r3, =gKeyPress
	ldr	r2, =0x303
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	bne	.Lbb8b0
	mov	r0, #1
	bl	WaitFrames
	b	.Lbb80a
.Lbb8b0:
	mov	r0, r6
	bl	Func_8003f3c
	mov	r0, #1
	bl	WaitFrames
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bb7c0
