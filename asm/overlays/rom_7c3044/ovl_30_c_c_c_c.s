	.include "macros.inc"

.thumb_func_start OvlFunc_937_200818c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff9fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L1ac
	mov	r0, #7
	mov	r1, #8
	bl	__Func_80b3284
	b	.L1e4
.L1ac:
	bl	__CutsceneStart
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1ca
	ldr	r0, =0x1afb
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L1e0
.L1ca:
	ldr	r0, =0x1ad7
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093054
	mov	r0, #0x91
	lsl	r0, #4
	bl	__SetFlag
.L1e0:
	bl	__CutsceneEnd
.L1e4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_937_200818c
