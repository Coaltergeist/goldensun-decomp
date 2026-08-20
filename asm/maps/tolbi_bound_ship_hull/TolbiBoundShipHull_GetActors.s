	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TolbiBoundShipHull_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x17
	bls	.Lm945_392
	b	.Lm945_50a
.Lm945_392:
	ldr	r2, =.Lm945_39c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm945_39c:
	.word	.Lm945_3fc
	.word	.Lm945_3fc
	.word	.Lm945_50a
	.word	.Lm945_47c
	.word	.Lm945_4b2
	.word	.Lm945_50a
	.word	.Lm945_50a
	.word	.Lm945_50a
	.word	.Lm945_50a
	.word	.Lm945_506
	.word	.Lm945_3fc
	.word	.Lm945_47c
	.word	.Lm945_506
	.word	.Lm945_506
	.word	.Lm945_480
	.word	.Lm945_47c
	.word	.Lm945_480
	.word	.Lm945_47c
	.word	.Lm945_480
	.word	.Lm945_47c
	.word	.Lm945_47c
	.word	.Lm945_506
	.word	.Lm945_47c
	.word	.Lm945_47c
.Lm945_3fc:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_40a
.Lm945_406:
	ldr	r0, =.Lm945_6da8
	b	.Lm945_50c
.Lm945_40a:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_44e
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_44a
	ldr	r1, =.Lm945_6eb0
	mov	r3, r1
	mov	r2, #2
	add	r3, #0x46
	strb	r2, [r1, #0x16]
	strb	r2, [r3]
	add	r3, #0x30
	strb	r2, [r3]
	add	r3, #0x18
	strb	r2, [r3]
	add	r3, #0x48
	strb	r2, [r3]
	mov	r0, r1
	sub	r3, #0x18
	strb	r2, [r3]
	add	r0, #0xa6
	mov	r3, #1
	strb	r3, [r0]
	mov	r3, r1
	add	r3, #0x5e
	strb	r2, [r3]
.Lm945_44a:
	ldr	r0, =.Lm945_6eb0
	b	.Lm945_50c
.Lm945_44e:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_478
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_406
	ldr	r2, =.Lm945_6da8
	mov	r1, r2
	mov	r3, #2
	add	r1, #0x76
	strb	r3, [r2, #0x16]
	strb	r3, [r1]
	add	r2, #0x5e
	sub	r1, #0x48
	strb	r3, [r1]
	strb	r3, [r2]
	b	.Lm945_406
.Lm945_478:
	ldr	r0, =.Lm945_6d78
	b	.Lm945_50c
.Lm945_47c:
	ldr	r0, =.Lm945_6fe8
	b	.Lm945_50c
.Lm945_480:
	ldr	r1, =.Lm945_6fe8
	mov	r2, r1
	mov	r3, #2
	add	r2, #0x2e
	mov	r0, r1
	strb	r3, [r1, #0x16]
	add	r0, #0x5e
	strb	r3, [r2]
	mov	r2, #1
	strb	r2, [r0]
	add	r0, #0x18
	strb	r3, [r0]
	add	r0, #0x18
	strb	r3, [r0]
	add	r0, #0x18
	strb	r3, [r0]
	add	r0, #0x18
	strb	r3, [r0]
	add	r0, #0x18
	strb	r2, [r0]
	mov	r2, r1
	add	r2, #0xee
	strb	r3, [r2]
	mov	r0, r1
	b	.Lm945_50c
.Lm945_4b2:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_4c0
	ldr	r0, =.Lm945_6d48
	b	.Lm945_50c
.Lm945_4c0:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_506
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_50a
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_4e8
	ldr	r3, =.Lm945_6c58
	mov	r2, #1
	add	r3, #0x2e
	strb	r2, [r3]
.Lm945_4e8:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_502
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_502
	ldr	r3, =.Lm945_6c58
	strb	r0, [r3, #0x16]
.Lm945_502:
	ldr	r0, =.Lm945_6c58
	b	.Lm945_50c
.Lm945_506:
	ldr	r0, =.Lm945_6bf8
	b	.Lm945_50c
.Lm945_50a:
	ldr	r0, =.Lm945_6be0
.Lm945_50c:
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipHull_GetActors

