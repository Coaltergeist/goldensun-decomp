	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_2008974
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #6
	ldrsh	r5, [r0, r2]
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_9ce
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.Lm921_9a0
	mov	r0, #0xc
	mov	r1, #0xf
	bl	__Func_80b0278
	b	.Lm921_a1e
.Lm921_9a0:
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__MapActor_Face
	ldr	r0, =0x164f
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	b	.Lm921_a1e
.Lm921_9ce:
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.Lm921_9fa
	bl	__CutsceneStart
	ldr	r0, =0x1546
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe
	mov	r0, #0xc
	bl	__Func_80b0278
	bl	__CutsceneEnd
	b	.Lm921_a1e
.Lm921_9fa:
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xe
	bl	__MapActor_Face
	ldr	r0, =0x1547
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
.Lm921_a1e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008974

