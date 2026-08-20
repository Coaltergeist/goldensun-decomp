	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TolbiBoundShipHull_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x16
	bhi	.Lm945_62c
	ldr	r2, =.Lm945_568
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm945_568:
	.word	.Lm945_5c4
	.word	.Lm945_5c4
	.word	.Lm945_62c
	.word	.Lm945_5f0
	.word	.Lm945_602
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_624
	.word	.Lm945_62c
	.word	.Lm945_624
	.word	.Lm945_62c
	.word	.Lm945_624
	.word	.Lm945_62c
	.word	.Lm945_628
	.word	.Lm945_62c
	.word	.Lm945_5f0
.Lm945_5c4:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_5d4
	ldr	r0, =.Lm945_76fc
	b	.Lm945_62e
.Lm945_5d4:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_5ec
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_5ec
	ldr	r0, =.Lm945_7570
	b	.Lm945_62e
.Lm945_5ec:
	ldr	r0, =.Lm945_7444
	b	.Lm945_62e
.Lm945_5f0:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_5fe
	ldr	r0, =.Lm945_7edc
	b	.Lm945_62e
.Lm945_5fe:
	ldr	r0, =.Lm945_79c0
	b	.Lm945_62e
.Lm945_602:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_612
	ldr	r0, =.Lm945_7930
	b	.Lm945_62e
.Lm945_612:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_620
	ldr	r0, =.Lm945_7984
	b	.Lm945_62e
.Lm945_620:
	ldr	r0, =.Lm945_781c
	b	.Lm945_62e
.Lm945_624:
	ldr	r0, =.Lm945_7b58
	b	.Lm945_62e
.Lm945_628:
	ldr	r0, =.Lm945_7d44
	b	.Lm945_62e
.Lm945_62c:
	ldr	r0, =.Lm945_7420
.Lm945_62e:
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipHull_GetEvents

