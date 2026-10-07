	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8090488  @ 0x08090488
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ecc
	ldr	r1, =0x53c
	ldr	r6, [r3]
	add	r4, r6, r1
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	sub	r3, #0x5c
	ldr	r7, [r3]
	cmp	r2, #0
	beq	.L904f6
	ldr	r3, =0x53d
	add	r1, r6, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L904c2
	mov	r3, #0
	strb	r3, [r4]
	ldr	r0, =Func_8090488
	bl	StopTask
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	SetIntrHandler
	b	.L9057c
.L904c2:
	ldr	r2, =0x53b
	add	r3, r6, r2
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0x53a
	add	r5, r6, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =divsi3_RAM
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldr	r1, =0x52a
	add	r3, r0
	add	r2, r6, r1
	strh	r3, [r2]
.L904f6:
	ldr	r2, =0x52a
	add	r3, r6, r2
	ldrh	r5, [r3]
	cmp	r5, #0x4f
	bls	.L90514
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0xc8
	strh	r2, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0xfa
	b	.L9057a
.L90514:
	cmp	r5, #0
	beq	.L90568
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L90568
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, r5
	add	r3, r7, r1
	add	r2, #0x50
	strh	r2, [r3]
	ldr	r3, .L90540	@ 0x50
	mov	r2, #0x81
	lsl	r2, #1
	sub	r3, r5
	add	r1, r7, r2
	strh	r3, [r1]
	b	.L9057c

	.align	2, 0
.L90540:
	.word	0x50
	.pool

.L90568:
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0
	strh	r2, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x9f
.L9057a:
	strh	r3, [r2]
.L9057c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8090488

