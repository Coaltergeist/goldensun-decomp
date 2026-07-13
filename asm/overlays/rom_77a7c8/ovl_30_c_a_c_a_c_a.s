	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200837c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0x31
	cmp	r3, #0x1f
	bhi	.L456
	ldr	r2, =.L398
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L398:
	.word	.L418
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L430
	.word	.L43e
	.word	.L44e
	.word	.L44e
	.word	.L44e
	.word	.L44e
	.word	.L43e
	.word	.L442
	.word	.L446
	.word	.L44a
	.word	.L456
	.word	.L44e
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L456
	.word	.L452
.L418:
	ldr	r0, =0x94f
	bl	__GetFlag
	cmp	r0, #0
	bne	.L456
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L456
	ldr	r0, =.L6154
	b	.L45e
.L430:
	ldr	r0, =0x85a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L456
	ldr	r0, =.L604c
	b	.L45e
.L43e:
	ldr	r0, =.L61e4
	b	.L45e
.L442:
	ldr	r0, =.L628c
	b	.L45e
.L446:
	ldr	r0, =.L6394
	b	.L45e
.L44a:
	ldr	r0, =.L63c4
	b	.L45e
.L44e:
	ldr	r0, =.L625c
	b	.L45e
.L452:
	ldr	r0, =.L62ec
	b	.L45e
.L456:
	ldr	r0, =0x235
	bl	__SetFlag
	ldr	r0, =.L5b84
.L45e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_200837c
