	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_4cc
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r0
	bl	__Func_808e118
	mov	r1, #5
	mov	r0, r5
	bl	__Func_8019908
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8f
	cmp	r2, r3
	bne	.Lc1_4f4
	ldr	r0, =0x2076
	b	.Lc1_500
.Lc1_4f4:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.Lc1_4fe
	ldr	r0, =0x2078
	b	.Lc1_500
.Lc1_4fe:
	ldr	r0, =0x207a
.Lc1_500:
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x80
	lsl	r2, #2
	add	r0, r5, r2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lc1_534
	mov	r3, #0x82
	lsl	r3, #2
	add	r5, r3
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc1_548
	mov	r0, #0
	bl	__Func_802106c
	cmp	r0, #1
	bne	.Lc1_538
.Lc1_534:
	mov	r0, #2
	b	.Lc1_564
.Lc1_538:
	cmp	r0, #2
	beq	.Lc1_544
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.Lc1_564
.Lc1_544:
	mov	r0, #3
	b	.Lc1_564
.Lc1_548:
	mov	r0, r5
	bl	__SetFlag
	ldr	r0, =0x207c
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
.Lc1_564:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_common1_4cc

