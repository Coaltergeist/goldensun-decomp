	.include "macros.inc"

.thumb_func_start OvlFunc_946_20093ac
	push	{r5, r6, r7, lr}
	ldr	r6, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r5, r6, r2
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	ldr	r7, =0x7e
	ldr	r3, =0x8c8
	sub	r3, r7
	add	r0, r3
	bl	__GetFlag
	cmp	r0, #0
	bne	.L145e
	bl	__CutsceneStart
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	mov	r1, #5
	bl	__Func_8091f90
	ldr	r3, =0x22b
	add	r2, r6, r3
	mov	r3, #3
	strb	r3, [r2]
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	sub	r3, r7
	cmp	r3, #8
	bhi	.L1458
	ldr	r2, =.L13f4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L13f4:
	.word	.L1418
	.word	.L141c
	.word	.L1420
	.word	.L1424
	.word	.L1428
	.word	.L1432
	.word	.L143c
	.word	.L1446
	.word	.L1450
.L1418:
	mov	r0, #0x3f
	b	.L142a
.L141c:
	mov	r0, #0x3f
	b	.L1434
.L1420:
	mov	r0, #0x3f
	b	.L143e
.L1424:
	mov	r0, #0x3f
	b	.L1448
.L1428:
	mov	r0, #0x54
.L142a:
	mov	r1, #0
	bl	__Func_8091eb0
	b	.L1458
.L1432:
	mov	r0, #0x54
.L1434:
	mov	r1, #1
	bl	__Func_8091eb0
	b	.L1458
.L143c:
	mov	r0, #0x54
.L143e:
	mov	r1, #2
	bl	__Func_8091eb0
	b	.L1458
.L1446:
	mov	r0, #0x54
.L1448:
	mov	r1, #3
	bl	__Func_8091eb0
	b	.L1458
.L1450:
	mov	r0, #0x54
	mov	r1, #4
	bl	__Func_8091eb0
.L1458:
	bl	__CutsceneEnd
	b	.L1474
.L145e:
	ldr	r0, =gOvl_0200b2bc
	mov	r1, #0x2c
	mov	r2, #7
	bl	__Func_8010560
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r0, #3
	bl	__Func_8091e9c
.L1474:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_20093ac
