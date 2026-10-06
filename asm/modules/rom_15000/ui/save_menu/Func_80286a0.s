	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80286a0  @ 0x080286a0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f38
	ldr	r6, [r3]
	mov	r5, r6
	mov	r2, #1
	mov	r3, #0xc
	add	r5, #0x8c
	mov	r7, r1
	mov	r9, r2
	mov	r10, r3
	strh	r0, [r5]
	cmp	r7, r0
	bge	.L286ca
	sub	r2, #2
	mov	r9, r2
.L286ca:
	mov	r8, r0
	mov	r3, #0x92
	add	r3, r6
	mov	r11, r3
	b	.L286e6
.L286d4:
	ldrh	r3, [r5]
	add	r3, r9
	strh	r3, [r5]
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #0
	mov	r10, r2
	add	r8, r9
.L286e6:
	ldr	r0, [r6, #0x78]
	bl	Func_8016478
	mov	r2, r11
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	cmp	r0, #0
	beq	.L286fe
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	add	r0, r3
	b	.L2870a
.L286fe:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	add	r3, #0x84
	ldrb	r2, [r6, r3]
	ldr	r3, =0x1f
	add	r0, r2, r3
.L2870a:
	mov	r3, #0
	ldr	r1, [r6, #0x78]
	mov	r2, #0
	bl	Func_801e7c0
	mov	r3, #0
	ldrsh	r1, [r5, r3]
	sub	r3, r1, r7
	ldr	r0, =.L373ef
	mov	r2, r3
	cmp	r3, #0
	bge	.L28724
	sub	r2, r7, r1
.L28724:
	ldrb	r0, [r0, r2]
	add	r0, r10
	bl	WaitFrames
	cmp	r8, r7
	bne	.L286d4
	mov	r0, #0x30
	bl	WaitFrames
	mov	r0, #0x70
	bl	_PlaySound
	mov	r0, r7
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80286a0
