	.include "macros.inc"

.thumb_func_start Func_80aa460  @ 0x080aa460
	push	{lr}
	bl	_GetMoveInfo
	ldrb	r3, [r0, #1]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Laa476
	cmp	r2, #0xb
	beq	.Laa47c
	b	.Laa484
.Laa476:
	mov	r0, #0x7e
	bl	Func_80a2438
.Laa47c:
	mov	r0, #0x7e
	bl	Func_80a2438
	b	.Laa52a
.Laa484:
	ldrb	r3, [r0, #3]
	sub	r0, r3, #1
	cmp	r0, #0x1f
	bhi	.Laa524
	ldr	r2, =.Laa494
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Laa494:
	.word	.Laa52a
	.word	.Laa52a
	.word	.Laa51c
	.word	.Laa524
	.word	.Laa514
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa524
	.word	.Laa52a
	.word	.Laa52a
.Laa514:
	mov	r0, #0x52
	bl	Func_80a2438
	b	.Laa52a
.Laa51c:
	mov	r0, #0x54
	bl	Func_80a2438
	b	.Laa52a
.Laa524:
	mov	r0, #0x5b
	bl	Func_80a2438
.Laa52a:
	pop	{r0}
	bx	r0
.func_end Func_80aa460

