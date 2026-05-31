	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20082a4
	push	{r5, lr}
	mov	r5, r0
	bl	OvlFunc_881_20082cc
	ldr	r0, =0x847
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2be
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
.L2be:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_20082a4

.thumb_func_start OvlFunc_881_20082cc
	ldr	r3, =iwram_3001e70
	mov	r1, #0x8d
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	ldr	r3, [r0, #0x50]
	ldrh	r2, [r2]
	ldr	r1, .L2e8	@ 0
	strh	r2, [r3, #0x1e]
	add	r3, #0x26
	strb	r1, [r3]
	mov	r0, #1
	bx	lr

	.align	2, 0
.L2e8:
	.word	0
.func_end OvlFunc_881_20082cc

.thumb_func_start OvlFunc_881_20082f0
	ldr	r3, =iwram_3001e70
	ldr	r4, [r0, #0x50]
	add	r0, #0x59
	ldrb	r2, [r0]
	ldr	r1, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r2, #0x8d
	lsl	r2, #1
	strb	r3, [r0]
	add	r3, r1, r2
	ldrh	r3, [r3]
	mov	r0, #1
	strh	r3, [r4, #0x1e]
	bx	lr
.func_end OvlFunc_881_20082f0

.thumb_func_start OvlFunc_881_2008314
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0xa
	bl	__Func_800c598
	mov	r3, r5
	add	r3, #0x59
	mov	r6, #0
	mov	r0, #0x8a
	strb	r6, [r3]
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L344
	ldr	r0, =0x2f1
	bl	__Func_8079358
	str	r6, [r5, #8]
	str	r6, [r5, #0xc]
.L344:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_2008314

.thumb_func_start OvlFunc_881_2008350
	push	{lr}
	add	r0, #0x54
	ldrb	r2, [r0]
	mov	r1, #1
	mov	r3, r1
	and	r3, r2
	cmp	r3, #0
	beq	.L370
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	and	r3, r1
	cmp	r3, #0
	beq	.L370
	mov	r3, #1
	eor	r3, r2
	strb	r3, [r0]
.L370:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_2008350

.thumb_func_start OvlFunc_881_200837c
	push	{lr}
	ldr	r3, =ewram_2000240
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
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L456
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L456
	ldr	r0, =.L6154
	b	.L45e
.L430:
	ldr	r0, =0x85a
	bl	__Func_8079338
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
	bl	__Func_8079358
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
	bl	__Func_8092054
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_8092054
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
	bl	__Func_80f9080
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20084a0

.thumb_func_start OvlFunc_881_20084f0
	push	{r5, r6, r7, lr}
	sub	r0, #0x64
	mov	r7, r1
	mov	r6, r2
	bl	__Func_8092054
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_8092054
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
	bl	__Func_80f9080
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20084f0

.thumb_func_start OvlFunc_881_2008540
	push	{lr}
	mov	r0, #0x82
	mov	r1, #6
	mov	r2, #0x2f
	bl	OvlFunc_881_20084a0
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008540

.thumb_func_start OvlFunc_881_2008550
	push	{lr}
	mov	r0, #0x96
	mov	r1, #0x2e
	mov	r2, #0xb
	bl	OvlFunc_881_20084f0
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008550

.thumb_func_start OvlFunc_881_2008560
	push	{lr}
	mov	r0, #0x74
	mov	r1, #0x38
	mov	r2, #0x15
	bl	OvlFunc_881_20084f0
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008560

.thumb_func_start OvlFunc_881_2008570
	push	{lr}
	mov	r0, #0x97
	mov	r1, #0x19
	mov	r2, #0x36
	bl	OvlFunc_881_20084f0
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008570

.thumb_func_start OvlFunc_881_2008580
	push	{lr}
	mov	r0, #0x7d
	mov	r1, #0x3b
	mov	r2, #0x1e
	bl	OvlFunc_881_20084f0
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008580

