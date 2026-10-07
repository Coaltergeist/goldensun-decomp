	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5864  @ 0x080b5864
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e80
	mov	r2, r3
	ldr	r6, [r3]
	sub	r3, #0xc
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0x44
	ldrb	r3, [r3]
	add	r2, #0x80
	sub	sp, #0x10
	ldr	r7, [r2]
	cmp	r3, #0
	beq	.Lb58ca
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb58a8
	mov	r2, r1
	add	r2, #0x51
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r2, #0xc0
	lsl	r3, #24
	lsl	r2, #21
	cmp	r3, r2
	bls	.Lb58ca
	mov	r2, r1
	add	r2, #0x52
	mov	r3, #1
	b	.Lb58c8
.Lb58a8:
	ldr	r3, =REG_SIOCNT
	mov	r2, r1
	ldr	r3, [r3]
	add	r2, #0x50
	lsl	r3, #26
	ldrb	r2, [r2]
	lsr	r3, #30
	cmp	r2, r3
	beq	.Lb58c2
	mov	r2, r1
	add	r2, #0x52
	mov	r3, #1
	strb	r3, [r2]
.Lb58c2:
	mov	r2, r1
	add	r2, #0x51
	mov	r3, #0
.Lb58c8:
	strb	r3, [r2]
.Lb58ca:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.Lb58ee
	ldr	r3, [r7]
	ldrh	r1, [r6, #0x36]
	sub	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r2, r3
	cmp	r3, #0
	bge	.Lb58e2
	add	r2, #0xf
.Lb58e2:
	asr	r3, r2, #4
	add	r3, r1, r3
	strh	r3, [r6, #0x36]
	ldr	r3, [r7, #4]
	sub	r3, #1
	str	r3, [r7, #4]
.Lb58ee:
	ldr	r3, [r6, #0x1c]
	mov	r5, r6
	add	r5, #0xc
	cmp	r3, #0
	beq	.Lb58fa
	mov	r5, r3
.Lb58fa:
	bl	InitMatrixStack
	mov	r0, r5
	bl	MatrixTranslatev
	mov	r3, #0x36
	ldrsh	r0, [r6, r3]
	bl	MatrixYaw
	mov	r2, #0x34
	ldrsh	r0, [r6, r2]
	bl	MatrixPitch
	mov	r3, #0
	add	r0, sp, #4
	str	r3, [r0]
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x20]
	mov	r1, r6
	str	r3, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	ldr	r3, [r7, #0x14]
	cmp	r3, #0
	bne	.Lb5942
	mov	r1, #0xf0
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r1, #15
	str	r3, [sp]
	mov	r0, r1
	mov	r2, #0
	mov	r3, #0
	bl	Func_80c0a24
.Lb5942:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b5864

