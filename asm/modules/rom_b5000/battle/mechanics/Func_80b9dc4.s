	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9dc4  @ 0x080b9dc4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f00
	ldr	r1, [r3]
	sub	r3, #0x8c
	ldr	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #6
	str	r3, [r1]
	mov	r3, #1
	str	r3, [r1, #0x10]
	mov	r5, r0
	mov	r8, r1
	mov	r0, #0
	mov	r1, #0
	sub	sp, #0x20
	bl	Func_80c10e8
	ldrb	r3, [r5]
	mov	r7, #0
	cmp	r3, #7
	bhi	.Lb9e64
	mov	r3, r6
	add	r3, #0x45
	ldrb	r3, [r3]
	mov	r2, r7
	cmp	r3, #2
	beq	.Lb9e00
	mov	r2, #1
.Lb9e00:
	cmp	r2, #0
	bne	.Lb9e10
	ldr	r0, =0x847
	bl	_Func_80175a0
	bl	WaitTextPrompt
	b	.Lb9ea0
.Lb9e10:
	add	r7, sp, #4
	mov	r0, #1
	mov	r1, r7
	bl	Func_80b6b40
	mov	r2, #1
	sub	r6, r0, #1
	neg	r2, r2
	cmp	r6, r2
	beq	.Lb9e5a
	lsl	r5, r6, #1
.Lb9e26:
	ldrsh	r0, [r7, r5]
	bl	_GetUnit
	ldr	r1, =0x13b
	mov	r2, r0
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9e4e
	add	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9e4e
	ldrsh	r0, [r5, r7]
	bl	Func_80b8064
	mov	r0, #8
	bl	WaitFrames
.Lb9e4e:
	mov	r3, #1
	sub	r6, #1
	neg	r3, r3
	sub	r5, #2
	cmp	r6, r3
	bne	.Lb9e26
.Lb9e5a:
	mov	r0, #0x16
	bl	WaitFrames
	mov	r7, #1
	b	.Lb9ea0
.Lb9e64:
	bl	Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	cmp	r3, #6
	bhi	.Lb9e96
	ldrb	r0, [r5]
	mov	r2, sp
	mov	r3, #0xff
	strh	r0, [r2]
	strh	r3, [r2, #2]
	bl	Func_80b8064
	mov	r0, #8
	bl	WaitFrames
	ldrb	r0, [r5]
	bl	Func_80bac6c
	ldrb	r0, [r5]
	bl	Func_80b7e60
	b	.Lb9ea0
.Lb9e96:
	ldr	r0, =0x847
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lb9ea0:
	mov	r3, #0
	mov	r1, r8
	mov	r0, r7
	str	r3, [r1, #0x10]
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9dc4
