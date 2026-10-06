	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_WarpMenu_UI  @ 0x08029094
	push	{r5, r6, r7, lr}
	ldr	r6, =gKeyRepeat
	mov	r7, r0
	mov	r0, r3
	ldr	r3, [r6]
	mov	r4, r2
	mov	r2, #1
	lsl	r1, #16
	and	r3, r2
	asr	r5, r1, #16
	cmp	r3, #0
	beq	.L290b2
	mov	r0, #1
	neg	r0, r0
	b	.L291dc
.L290b2:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L290c2
	mov	r0, #2
	neg	r0, r0
	b	.L291dc
.L290c2:
	ldr	r3, [r6]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	bne	.L290d6
	ldr	r1, [r6]
	mov	r3, #0x40
	and	r1, r3
	cmp	r1, #0
	beq	.L290e0
.L290d6:
	ldrh	r3, [r0]
	ldr	r2, .L290f8	@ 1
	eor	r3, r2
	strh	r3, [r0]
	b	.L291da
.L290e0:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L29114
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L29100
	add	r3, r5, #1
	b	.L29160

	.align	2, 0
.L290f8:
	.word	1
	.pool

.L29100:
	ldrh	r3, [r4]
	mov	r2, #0xc6
	add	r3, #1
	strh	r3, [r4]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	ble	.L29184
	strh	r1, [r4]
	b	.L29184
.L29114:
	ldr	r3, [r6]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L29146
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	bne	.L2912e
	sub	r3, r5, #1
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L2913e
.L2912e:
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	lsl	r3, #16
	cmp	r3, #0
	bge	.L2913e
	ldr	r3, =0x63
	strh	r3, [r4]
.L2913e:
	cmp	r5, #0
	bge	.L2918a
	mov	r5, #0xc8
	b	.L2918a
.L29146:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L29196
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L2916c
	strh	r3, [r4]
	mov	r3, r5
	add	r3, #0xa
.L29160:
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L29184

	.pool_aligned

.L2916c:
	ldrh	r2, [r4]
	mov	r3, r2
	add	r3, #0xa
	mov	r1, #0xc6
	strh	r3, [r4]
	lsl	r1, #15
	lsl	r3, #16
	cmp	r3, r1
	ble	.L29184
	mov	r3, r2
	sub	r3, #0x59
	strh	r3, [r4]
.L29184:
	cmp	r5, #0xc8
	ble	.L2918a
	mov	r5, #0
.L2918a:
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	Func_8028ef0
	b	.L291da
.L29196:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L291da
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L291b6
	strh	r3, [r4]
	mov	r3, r5
	sub	r3, #0xa
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L291ca
.L291b6:
	ldrh	r2, [r4]
	mov	r3, r2
	sub	r3, #0xa
	strh	r3, [r4]
	lsl	r3, #16
	cmp	r3, #0
	bge	.L291ca
	mov	r3, r2
	add	r3, #0x59
	strh	r3, [r4]
.L291ca:
	cmp	r5, #0
	bge	.L291d0
	mov	r5, #0xc8
.L291d0:
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	Func_8028ef0
.L291da:
	mov	r0, r5
.L291dc:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_WarpMenu_UI
