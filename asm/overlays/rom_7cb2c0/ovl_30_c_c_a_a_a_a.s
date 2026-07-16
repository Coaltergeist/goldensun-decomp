	.include "macros.inc"

.thumb_func_start OvlFunc_945_200837c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x17
	bls	.L392
	b	.L50a
.L392:
	ldr	r2, =.L39c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L39c:
	.word	.L3fc
	.word	.L3fc
	.word	.L50a
	.word	.L47c
	.word	.L4b2
	.word	.L50a
	.word	.L50a
	.word	.L50a
	.word	.L50a
	.word	.L506
	.word	.L3fc
	.word	.L47c
	.word	.L506
	.word	.L506
	.word	.L480
	.word	.L47c
	.word	.L480
	.word	.L47c
	.word	.L480
	.word	.L47c
	.word	.L47c
	.word	.L506
	.word	.L47c
	.word	.L47c
.L3fc:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L40a
.L406:
	ldr	r0, =.L6da8
	b	.L50c
.L40a:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L44e
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L44a
	ldr	r1, =.L6eb0
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
.L44a:
	ldr	r0, =.L6eb0
	b	.L50c
.L44e:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L478
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L406
	ldr	r2, =.L6da8
	mov	r1, r2
	mov	r3, #2
	add	r1, #0x76
	strb	r3, [r2, #0x16]
	strb	r3, [r1]
	add	r2, #0x5e
	sub	r1, #0x48
	strb	r3, [r1]
	strb	r3, [r2]
	b	.L406
.L478:
	ldr	r0, =.L6d78
	b	.L50c
.L47c:
	ldr	r0, =.L6fe8
	b	.L50c
.L480:
	ldr	r1, =.L6fe8
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
	b	.L50c
.L4b2:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4c0
	ldr	r0, =.L6d48
	b	.L50c
.L4c0:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L506
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.L50a
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4e8
	ldr	r3, =.L6c58
	mov	r2, #1
	add	r3, #0x2e
	strb	r2, [r3]
.L4e8:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L502
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L502
	ldr	r3, =.L6c58
	strb	r0, [r3, #0x16]
.L502:
	ldr	r0, =.L6c58
	b	.L50c
.L506:
	ldr	r0, =.L6bf8
	b	.L50c
.L50a:
	ldr	r0, =.L6be0
.L50c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200837c
