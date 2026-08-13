	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8099678  @ 0x08099678
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r5, =iwram_3001ebc
	ldr	r0, [r3]
	ldr	r6, [r5]
	bl	GetFieldActor
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r5, #0x4c
	ldr	r5, [r5]
	cmp	r3, #3
	bne	.L996c8
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L996a8
	ldr	r2, =0x1fffff
	add	r3, r2
.L996a8:
	ldr	r0, [r0, #0x10]
	asr	r2, r3, #21
	mov	r1, #0x1f
	and	r2, r1
	cmp	r0, #0
	bge	.L996b8
	ldr	r3, =0x1fffff
	add	r0, r3
.L996b8:
	asr	r3, r0, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r2, =ewram_2020000
	lsl	r3, #2
	add	r5, r3, r2
	b	.L99706
.L996c8:
	mov	r2, r0
	add	r2, #0x22
	ldrb	r3, [r2]
	cmp	r3, #2
	bhi	.L996e4
	mov	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r3, #4
	lsl	r2, #1
	add	r3, r2
	ldr	r5, [r5, r3]
	b	.L996e6
.L996e4:
	ldr	r5, =gBuffer
.L996e6:
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L996f0
	ldr	r2, =0xfffff
	add	r3, r2
.L996f0:
	ldr	r0, [r0, #0x10]
	asr	r2, r3, #20
	cmp	r0, #0
	bge	.L996fc
	ldr	r3, =0xfffff
	add	r0, r3
.L996fc:
	asr	r3, r0, #20
	lsl	r3, #7
	add	r3, r2, r3
	lsl	r3, #2
	add	r5, r3
.L99706:
	ldrb	r3, [r5, #2]
	cmp	r3, #0xfb
	beq	.L99716
	mov	r3, #0xbf
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, =0x2092
	strh	r3, [r2]
.L99716:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8099678
