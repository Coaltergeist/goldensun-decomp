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
	bge	.L4d2
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r7, [r3]
	b	.L4da
.L4d2:
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r6, [r3]
.L4da:
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
	bge	.L522
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r7, [r3]
	b	.L52a
.L522:
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r6, [r3]
.L52a:
	mov	r0, #0x7b
	bl	__PlaySound
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20084f0

