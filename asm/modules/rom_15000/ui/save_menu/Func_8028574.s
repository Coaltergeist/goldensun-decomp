	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8028574  @ 0x08028574
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f38
	ldr	r3, [r3]
	mov	r1, #0x8c
	mov	r8, r3
	add	r1, r8
	mov	r10, r1
	mov	r2, r10
	mov	r3, #0x92
	add	r3, r8
	strh	r0, [r2]
	mov	r11, r3
.L28598:
	mov	r1, r8
	ldr	r0, [r1, #0x78]
	bl	Func_8016478
	mov	r3, r11
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.L285c0
	mov	r2, r10
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	add	r0, r3
	b	.L285d0
.L285b4:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, #1
	neg	r0, r0
	b	.L2867e
.L285c0:
	mov	r0, r10
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r1, r8
	add	r3, #0x84
	ldrb	r2, [r1, r3]
	ldr	r3, =0x1f
	add	r0, r2, r3
.L285d0:
	mov	r2, r8
	ldr	r1, [r2, #0x78]
	mov	r3, #0
	mov	r2, #0
	bl	Func_801e7c0
	mov	r3, #0x8e
	add	r3, r8
	ldr	r7, =gKeyPress
	mov	r6, r10
	mov	r9, r3
.L285e6:
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [r7]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L28672
	ldr	r2, [r7]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	bne	.L285b4
	ldr	r2, [r7]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	bne	.L285b4
	ldr	r1, =gKeyRepeat
	ldr	r2, [r1]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	bne	.L28620
	ldr	r5, [r1]
	mov	r3, #0x40
	and	r5, r3
	cmp	r5, #0
	beq	.L2863e
.L28620:
	mov	r0, #0x6f
	bl	_PlaySound
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
	lsl	r3, #16
	cmp	r3, #0
	bge	.L28598
	mov	r0, r9
	ldrh	r3, [r0]
	mov	r1, r10
	sub	r3, #1
	strh	r3, [r1]
	b	.L28598
.L2863e:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	bne	.L28652
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L285e6
.L28652:
	mov	r0, #0x6f
	bl	_PlaySound
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	mov	r1, r9
	lsl	r3, #16
	mov	r0, #0
	ldrsh	r2, [r1, r0]
	asr	r3, #16
	cmp	r3, r2
	blt	.L28598
	mov	r2, r10
	strh	r5, [r2]
	b	.L28598
.L28672:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r1, r10
	mov	r3, #0
	ldrsh	r0, [r1, r3]
.L2867e:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8028574
