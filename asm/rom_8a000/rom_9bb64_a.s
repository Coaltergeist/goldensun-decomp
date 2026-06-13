	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809bb64  @ 0x0809bb64
	push	{r5, r6, r7, lr}
	mov	r0, #0x20
	sub	sp, #0xc
	bl	Func_8004970
	ldr	r7, =gBuffer
	mov	r1, r7
	add	r1, #0x20
	ldr	r3, =gState
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	MapActor_GetActor
	mov	r6, r0
	bl	AllocSpriteSlot
	mov	r3, #0
	strh	r0, [r7]
	add	r0, sp, #8
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xff
	str	r3, [r5]
	ldr	r3, =0x1ff
	str	r3, [r5, #4]
	mov	r3, #0x44
	str	r3, [r5, #0x20]
	mov	r3, #0xa2
	lsl	r3, #1
	str	r3, [r5, #0x24]
	mov	r3, #0x77
	str	r3, [r5, #0x40]
	ldr	r3, =0x177
	str	r3, [r5, #0x44]
	mov	r3, #0xff
	lsl	r3, #4
	str	r3, [r5, #0x60]
	ldr	r3, =0xffff
	str	r3, [r5, #0x64]
	ldr	r3, =0x1ffff
	str	r3, [r5, #0x68]
	ldr	r3, =0x11ff0
	mov	r2, #0x88
	str	r3, [r5, #0x6c]
	mov	r3, #0x88
	lsl	r2, #1
	lsl	r3, #5
	str	r2, [r5, #8]
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x48]
	str	r3, [r5, #0x70]
	mov	r1, #0x80
	mov	r2, r5
	ldrh	r0, [r7]
	bl	UploadSpriteGFX
	mov	r3, #0x80
	lsl	r3, #3
	orr	r0, r3
	ldr	r3, [sp, #4]
	mov	r2, #0
	mov	r1, #0
.L9bbf0:
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #8]
	ldr	r4, [sp, #4]
	add	r2, #1
	add	r4, #0xc
	add	r3, #0xc
	str	r4, [sp, #4]
	cmp	r2, #0x41
	bls	.L9bbf0
	mov	r0, r5
	bl	free
	mov	r0, #0x8e
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L9bc22
	mov	r3, #0xf0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r3, #0xa0
	lsl	r3, #15
	b	.L9bc56
.L9bc22:
	ldr	r2, [r6, #8]
	mov	r1, #0xf0
	lsl	r1, #24
	add	r2, r1
	asr	r2, #16
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #4
	cmp	r3, #0
	bge	.L9bc3a
	ldr	r2, =0xfff
	add	r3, r2
.L9bc3a:
	asr	r3, #12
	lsl	r3, #16
	str	r3, [r7, #4]
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r0, r3, #5
	cmp	r0, #0
	bge	.L9bc52
	ldr	r4, =0xfff
	add	r0, r4
.L9bc52:
	asr	r3, r0, #12
	lsl	r3, #16
.L9bc56:
	str	r3, [r7, #8]
	bl	_Func_80209b0
	strh	r0, [r7, #2]
	ldrh	r3, [r7, #2]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r5, [r3, #2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	mov	r0, #0
	bl	_CreateUIBox
	ldr	r3, =0xffff
	strh	r3, [r7, #0x12]
	add	r3, #1
	str	r3, [r7, #0x18]
	str	r0, [r7, #0x1c]
	ldr	r2, [sp, #4]
	mov	r6, #0
	stmia	r2!, {r6}
	mov	r3, #0x80
	mov	r1, r2
	lsl	r3, #23
	str	r1, [sp, #4]
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsr	r5, #5
	lsl	r3, #3
	mov	r4, r2
	orr	r3, r5
	str	r4, [sp, #4]
	str	r3, [r2]
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809bb64

