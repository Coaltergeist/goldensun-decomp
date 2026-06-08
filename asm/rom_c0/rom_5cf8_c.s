	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_TransferTest
	push	{r5, r6, lr}
	mov	r0, #3
	sub	sp, #4
	bl	_PlaySound
	bl	Func_8005d10
	ldr	r2, =0x6002426
	ldr	r3, =0xfffff093
	mov	r1, #0x13
.L67b0:
	sub	r1, #1
	strh	r3, [r2]
	sub	r2, #2
	sub	r3, #1
	cmp	r1, #0
	bge	.L67b0
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	ldr	r1, =gBuffer
	ldr	r2, =0x5000100
	bl	Func_8006864
	mov	r0, #3
	bl	Func_8006384
.L67d0:
	ldr	r0, =gBuffer
	bl	Func_8006408
	ldr	r6, =gKeyHeld
.L67d8:
	ldr	r3, [r6]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L67ee
	mov	r0, #0x80
	mov	r1, #0xa0
	lsl	r0, #20
	lsl	r1, #2
	bl	Func_80063bc
.L67ee:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L6802
	mov	r1, #0xa0
	ldr	r0, =0x8001000
	lsl	r1, #2
	bl	Func_80063bc
.L6802:
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L6818
	ldr	r5, =0x270f
.L680e:
	sub	r5, #1
	bl	Func_8006798
	cmp	r5, #0
	bge	.L680e
.L6818:
	ldr	r3, =ewram_20023ac
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L682e
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =gBuffer
	ldr	r1, =0x6001000
	ldr	r2, =0x840000a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.L67d0
.L682e:
	mov	r0, #1
	bl	WaitFrames
	b	.L67d8
.func_end Debug_TransferTest
