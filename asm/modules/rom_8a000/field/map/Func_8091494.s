	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8091494  @ 0x08091494
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r1, #0x1c
	mov	r0, #0x24
	sub	sp, #4
	bl	galloc_ewram
	mov	r1, #0x80
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #0xe
	bl	galloc_iwram
	ldr	r3, =0x11111111
	mov	r4, r0
	mov	r5, sp
	str	r3, [r5]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x85000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	mov	r2, r4
	lsl	r1, #2
	mov	r0, #0x5e
	bl	UploadSpriteGFX
	mov	r0, #0xe
	bl	gfree
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80912b8
	bl	StartTask
	ldr	r2, =0x3f9e
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r2, #0x10
	add	r3, #2
	strh	r2, [r3]
	mov	r2, #0x1f
	add	r3, #2
	strh	r2, [r3]
	mov	r3, #0
	str	r3, [r5]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	mov	r1, r7
	ldr	r2, =0x85000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	cmp	r6, #0
	bne	.L91514
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r6, r0
.L91514:
	str	r6, [r7, #0x18]
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8091494

