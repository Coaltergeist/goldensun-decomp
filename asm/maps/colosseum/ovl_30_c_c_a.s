	.include "macros.inc"

.thumb_func_start Colosseum_GetActors
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x8c
	cmp	r2, r3
	beq	.Lm953_92
	b	.Lm953_1cc
.Lm953_92:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	sub	r3, #5
	cmp	r3, #0x41
	bls	.Lm953_a4
	b	.Lm953_1c8
.Lm953_a4:
	ldr	r2, =.Lm953_ac
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm953_ac:
	.word	.Lm953_1b4
	.word	.Lm953_1c8
	.word	.Lm953_1b8
	.word	.Lm953_1bc
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c0
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1bc
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1bc
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1c8
	.word	.Lm953_1bc
	.word	.Lm953_1bc
	.word	.Lm953_1c4
	.word	.Lm953_1bc
	.word	.Lm953_1c4
	.word	.Lm953_1b4
	.word	.Lm953_1b8
.Lm953_1b4:
	ldr	r0, =.Lm953_339c
	b	.Lm953_1f6
.Lm953_1b8:
	ldr	r0, =.Lm953_35f4
	b	.Lm953_1f6
.Lm953_1bc:
	ldr	r0, =.Lm953_37bc
	b	.Lm953_1f6
.Lm953_1c0:
	ldr	r0, =.Lm953_387c
	b	.Lm953_1f6
.Lm953_1c4:
	ldr	r0, =.Lm953_399c
	b	.Lm953_1f6
.Lm953_1c8:
	ldr	r0, =.Lm953_375c
	b	.Lm953_1f6
.Lm953_1cc:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.Lm953_1f4
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_1e2
	ldr	r0, =.Lm953_3e1c
	b	.Lm953_1f6
.Lm953_1e2:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_1f0
	ldr	r0, =.Lm953_3bdc
	b	.Lm953_1f6
.Lm953_1f0:
	ldr	r0, =.Lm953_3a44
	b	.Lm953_1f6
.Lm953_1f4:
	ldr	r0, =.Lm953_3324
.Lm953_1f6:
	pop	{r1}
	bx	r1
.func_end Colosseum_GetActors

.thumb_func_start Colosseum_GetEvents
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x8d
	cmp	r2, r3
	bne	.Lm953_250
	ldr	r0, =.Lm953_3e70
	b	.Lm953_278
.Lm953_250:
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.Lm953_26c
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xc
	bne	.Lm953_268
	ldr	r0, =.Lm953_4110
	b	.Lm953_278
.Lm953_268:
	ldr	r0, =.Lm953_3e94
	b	.Lm953_278
.Lm953_26c:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.Lm953_276
	ldr	r0, =.Lm953_3f60
	b	.Lm953_278
.Lm953_276:
	ldr	r0, =.Lm953_3e64
.Lm953_278:
	pop	{r1}
	bx	r1
.func_end Colosseum_GetEvents

