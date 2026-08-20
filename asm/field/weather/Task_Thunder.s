	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_Thunder  @ 0x080949a8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ec8
	mov	r1, #0xfc
	ldr	r6, [r3]
	lsl	r1, #5
	add	r5, r6, r1
	ldr	r7, [r3, #8]
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	blt	.L94aa2
	mov	r0, #0xb3
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L949ce
	mov	r3, #0x80
	strh	r3, [r5]
.L949ce:
	ldrh	r3, [r5]
	sub	r2, r3, #1
	lsl	r3, #16
	asr	r3, #16
	strh	r2, [r5]
	cmp	r3, #0xb
	bhi	.L94aa2
	ldr	r2, =.L949e4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L949e4:
	.word	.L94a14
	.word	.L94a86
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94a62
	.word	.L94a86
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94a62
	.word	.L94a86
.L94a14:
	ldr	r1, =0x1f82
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L94a62
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r2, #0x64
	mul	r2, r0
	lsl	r3, r5, #1
	add	r3, r5
	lsl	r3, #3
	add	r3, r5
	lsl	r3, #4
	lsr	r2, #16
	lsr	r3, #16
	mov	r1, #0xfc
	sub	r3, r2
	lsl	r1, #5
	add	r2, r6, r1
	add	r3, #0x96
	strh	r3, [r2]
	ldr	r2, =0x1f84
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L94a5c
	mov	r0, #0xac
	bl	_PlaySound
	b	.L94a62
.L94a5c:
	mov	r0, #0xab
	bl	_PlaySound
.L94a62:
	mov	r0, r6
	mov	r1, #1
	bl	Func_8091200
	mov	r2, #0xa8
	lsl	r2, #5
	add	r0, r6, r2
	mov	r2, #0xc4
	lsl	r2, #5
	add	r1, r7, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x840002a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x2a01
	add	r2, r7, r3
	mov	r3, #0xc
	b	.L94a98
.L94a86:
	mov	r3, #0xa8
	lsl	r3, #4
	add	r0, r6, r3
	mov	r1, #1
	bl	Func_8091200
	ldr	r1, =0x2a01
	mov	r3, #1
	add	r2, r7, r1
.L94a98:
	strb	r3, [r2]
	ldr	r2, =0x2a02
	mov	r1, #0
	add	r3, r7, r2
	strb	r1, [r3]
.L94aa2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Thunder

