	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9b30  @ 0x080b9b30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r0
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	mov	r2, #0
	sub	sp, #0x20
	mov	r10, r1
	mov	r9, r2
	cmp	r0, #0xff
	bne	.Lb9b50
	mov	r0, #0
	b	.Lb9d02
.Lb9b50:
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.Lb9b62
	mov	r0, #1
	neg	r0, r0
	b	.Lb9d02
.Lb9b62:
	ldr	r2, =0x129
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9b74
	mov	r0, r8
	mov	r1, #1
	bl	LoadEnemy
.Lb9b74:
	ldr	r2, =iwram_3001f00
	ldr	r7, [r2]
	mov	r3, #0x3c
	str	r3, [r7, #4]
	mov	r3, r2
	sub	r3, #0x8c
	ldr	r6, [r3]
	mov	r3, r9
	str	r3, [r7, #0x14]
	ldr	r3, =0x644
	sub	r2, #0x80
	add	r1, r6, r3
	mov	r3, #0x80
	ldr	r5, [r2]
	lsl	r3, #9
	str	r3, [r1]
	bl	InitMatrixStack
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	MatrixSetLook
	mov	r0, #0xff
	mov	r1, #0xc0
	ldr	r3, =Func_80008ac
	lsl	r1, #8
	lsl	r0, #17
	bl	_call_via_r3
	mov	r1, r0
	mov	r0, #0xff
	ldr	r2, =0x7fff0000
	lsl	r0, #17
	bl	Func_8005258
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb9bce
	mov	r3, #0x80
	lsl	r3, #6
	str	r3, [r7]
	mov	r0, r10
	bl	WaitFrames
.Lb9bce:
	mov	r2, r8
	ldrh	r3, [r2]
	add	r0, sp, #0x1c
	strh	r3, [r0]
	mov	r3, #0xff
	strh	r3, [r0, #2]
	mov	r1, #1
	bl	Func_80c10e8
	ldr	r3, =0x654
	mov	r0, r8
	add	r1, r6, r3
	bl	Func_80be378
	cmp	r0, #0
	bne	.Lb9c9c
	mov	r2, #0xd5
	lsl	r2, #3
	add	r3, r6, r2
	ldr	r3, [r3]
	sub	r3, #1
	cmp	r3, #8
	bhi	.Lb9cb6
	ldr	r2, =.Lb9c04
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lb9c04:
	.word	.Lb9c28
	.word	.Lb9c34
	.word	.Lb9c58
	.word	.Lb9c76
	.word	.Lb9c40
	.word	.Lb9c5e
	.word	.Lb9c84
	.word	.Lb9c6a
	.word	.Lb9c4c
.Lb9c28:
	ldr	r3, =0x654
	mov	r1, #0
	add	r0, r6, r3
	bl	Func_80ba27c
	b	.Lb9cb6
.Lb9c34:
	ldr	r2, =0x654
	mov	r1, #0
	add	r0, r6, r2
	bl	Func_80ba2c0
	b	.Lb9cb6
.Lb9c40:
	ldr	r3, =0x654
	mov	r1, #1
	add	r0, r6, r3
	bl	Func_80b9ec0
	b	.Lb9cb6
.Lb9c4c:
	ldr	r2, =0x654
	mov	r1, #0
	add	r0, r6, r2
	bl	Func_80b9ec0
	b	.Lb9cb6
.Lb9c58:
	ldr	r3, =0x654
	mov	r1, #0
	b	.Lb9c6e
.Lb9c5e:
	ldr	r2, =0x654
	mov	r1, #1
	add	r0, r6, r2
	bl	Func_80ba978
	b	.Lb9cb6
.Lb9c6a:
	ldr	r3, =0x654
	mov	r1, #2
.Lb9c6e:
	add	r0, r6, r3
	bl	Func_80ba978
	b	.Lb9cb6
.Lb9c76:
	ldr	r2, =0x654
	mov	r1, #0
	add	r0, r6, r2
	mov	r2, r8
	bl	Func_80ba6ac
	b	.Lb9cb6
.Lb9c84:
	ldr	r3, =0x654
	add	r0, r6, r3
	bl	Func_80b9dc4
	cmp	r0, #0
	beq	.Lb9c94
	mov	r2, #1
	mov	r9, r2
.Lb9c94:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lb9cb6
	b	.Lb9cec
.Lb9c9c:
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb9cae
	bl	WaitTextPrompt
	mov	r0, #3
	bl	WaitFrames
.Lb9cae:
	mov	r0, #0
	mov	r1, #0
	bl	Func_80c10e8
.Lb9cb6:
	bl	Func_80b7e7c
	ldr	r3, =0x654
	add	r0, r6, r3
	bl	Func_80bfba4
	bl	Func_80b6c90
	mov	r5, sp
	mov	r0, #3
	mov	r1, r5
	bl	Func_80b6c08
	cmp	r0, #0
	ble	.Lb9ce6
	mov	r6, r5
	mov	r5, r0
.Lb9cd8:
	ldrh	r0, [r6]
	sub	r5, #1
	add	r6, #2
	bl	Func_80b8000
	cmp	r5, #0
	bne	.Lb9cd8
.Lb9ce6:
	mov	r3, #0xff
	mov	r2, r8
	strh	r3, [r2]
.Lb9cec:
	ldr	r3, =iwram_3001e74
	mov	r2, #0xc9
	ldr	r3, [r3]
	lsl	r2, #3
	add	r3, r2
	mov	r0, #2
	ldrh	r1, [r3]
	mov	r2, #0
	bl	Func_80c0774
	mov	r0, r9
.Lb9d02:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9b30
