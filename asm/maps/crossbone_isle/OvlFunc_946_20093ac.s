	.include "macros.inc"
	.include "gba.inc"

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
	bne	.Lm946_145e
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
	bhi	.Lm946_1458
	ldr	r2, =.Lm946_13f4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm946_13f4:
	.word	.Lm946_1418
	.word	.Lm946_141c
	.word	.Lm946_1420
	.word	.Lm946_1424
	.word	.Lm946_1428
	.word	.Lm946_1432
	.word	.Lm946_143c
	.word	.Lm946_1446
	.word	.Lm946_1450
.Lm946_1418:
	mov	r0, #0x3f
	b	.Lm946_142a
.Lm946_141c:
	mov	r0, #0x3f
	b	.Lm946_1434
.Lm946_1420:
	mov	r0, #0x3f
	b	.Lm946_143e
.Lm946_1424:
	mov	r0, #0x3f
	b	.Lm946_1448
.Lm946_1428:
	mov	r0, #0x54
.Lm946_142a:
	mov	r1, #0
	bl	__StartMapBattle
	b	.Lm946_1458
.Lm946_1432:
	mov	r0, #0x54
.Lm946_1434:
	mov	r1, #1
	bl	__StartMapBattle
	b	.Lm946_1458
.Lm946_143c:
	mov	r0, #0x54
.Lm946_143e:
	mov	r1, #2
	bl	__StartMapBattle
	b	.Lm946_1458
.Lm946_1446:
	mov	r0, #0x54
.Lm946_1448:
	mov	r1, #3
	bl	__StartMapBattle
	b	.Lm946_1458
.Lm946_1450:
	mov	r0, #0x54
	mov	r1, #4
	bl	__StartMapBattle
.Lm946_1458:
	bl	__CutsceneEnd
	b	.Lm946_1474
.Lm946_145e:
	ldr	r0, =gOvl_0200b2bc
	mov	r1, #0x2c
	mov	r2, #7
	bl	__Func_8010560
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r0, #3
	bl	__Func_8091e9c
.Lm946_1474:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_20093ac

