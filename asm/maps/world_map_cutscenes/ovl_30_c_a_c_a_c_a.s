	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start WorldMapCutscenes_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0x31
	cmp	r3, #0x1f
	bhi	.Lm881_456
	ldr	r2, =.Lm881_398
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm881_398:
	.word	.Lm881_418
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_430
	.word	.Lm881_43e
	.word	.Lm881_44e
	.word	.Lm881_44e
	.word	.Lm881_44e
	.word	.Lm881_44e
	.word	.Lm881_43e
	.word	.Lm881_442
	.word	.Lm881_446
	.word	.Lm881_44a
	.word	.Lm881_456
	.word	.Lm881_44e
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_456
	.word	.Lm881_452
.Lm881_418:
	ldr	r0, =0x94f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_456
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm881_456
	ldr	r0, =.Lm881_6154
	b	.Lm881_45e
.Lm881_430:
	ldr	r0, =0x85a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_456
	ldr	r0, =.Lm881_604c
	b	.Lm881_45e
.Lm881_43e:
	ldr	r0, =.Lm881_61e4
	b	.Lm881_45e
.Lm881_442:
	ldr	r0, =.Lm881_628c
	b	.Lm881_45e
.Lm881_446:
	ldr	r0, =.Lm881_6394
	b	.Lm881_45e
.Lm881_44a:
	ldr	r0, =.Lm881_63c4
	b	.Lm881_45e
.Lm881_44e:
	ldr	r0, =.Lm881_625c
	b	.Lm881_45e
.Lm881_452:
	ldr	r0, =.Lm881_62ec
	b	.Lm881_45e
.Lm881_456:
	ldr	r0, =0x235
	bl	__SetFlag
	ldr	r0, =.Lm881_5b84
.Lm881_45e:
	pop	{r1}
	bx	r1
.func_end WorldMapCutscenes_GetActors

.thumb_func_start OvlFunc_881_20084a0
	push	{r5, r6, r7, lr}
	sub	r0, #0x64
	mov	r7, r1
	mov	r6, r2
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r0, #8]
	ldr	r1, [r3]
	ldr	r3, [r5, #8]
	cmp	r2, r3
	bge	.Lm881_4d2
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r7, [r3]
	b	.Lm881_4da
.Lm881_4d2:
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r6, [r3]
.Lm881_4da:
	mov	r0, #0x7b
	bl	__PlaySound
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20084a0

.thumb_func_start OvlFunc_881_20084f0
	push	{r5, r6, r7, lr}
	sub	r0, #0x64
	mov	r7, r1
	mov	r6, r2
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r0, #0x10]
	ldr	r1, [r3]
	ldr	r3, [r5, #0x10]
	cmp	r2, r3
	bge	.Lm881_522
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r7, [r3]
	b	.Lm881_52a
.Lm881_522:
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r6, [r3]
.Lm881_52a:
	mov	r0, #0x7b
	bl	__PlaySound
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20084f0

