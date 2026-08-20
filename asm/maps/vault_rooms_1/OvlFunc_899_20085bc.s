	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_20085bc
	push	{r5, lr}
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_80925cc
	ldr	r0, =0x12ac
	bl	__MessageID
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #0x18
	bl	__MapActor_SetSpeed
	ldrh	r2, [r5, #6]
	mov	r3, #0xf0
	lsl	r3, #8
	ldr	r1, =0xffffb000
	and	r3, r2
	mov	r2, #0xc0
	add	r3, r1
	lsl	r2, #7
	cmp	r3, r2
	bhi	.Lm899_61e
	add	r5, #0x64
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #2
	bgt	.Lm899_648
	ldr	r2, =.Lm899_64a8
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	add	r3, #1
	b	.Lm899_658
.Lm899_61e:
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	ble	.Lm899_648
	ldr	r2, =.Lm899_64a8
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	add	r3, #1
	b	.Lm899_658

	.pool_aligned

.Lm899_648:
	ldr	r2, =.Lm899_64c0
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	sub	r3, #1
.Lm899_658:
	strh	r3, [r5]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #5
	ble	.Lm899_66a
	mov	r3, #0
	strh	r3, [r5]
	ldr	r2, .Lm899_678	@ 0
.Lm899_66a:
	lsl	r3, r2, #16
	cmp	r3, #0
	bge	.Lm899_680
	mov	r3, #5
	strh	r3, [r5]
	b	.Lm899_680

	.align	2, 0
.Lm899_678:
	.word	0
	.pool

.Lm899_680:
	mov	r0, #0x18
	bl	__MapActor_WaitScript
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20085bc

