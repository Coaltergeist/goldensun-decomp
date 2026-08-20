	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_2008a3c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.Lm921_a5c
	mov	r0, #4
	mov	r1, #0x10
	bl	__Func_80b3284
	b	.Lm921_aa2
.Lm921_a5c:
	bl	__CutsceneStart
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__MapActor_Face
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_a84
	ldr	r0, =0x1653
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
	b	.Lm921_a92
.Lm921_a84:
	ldr	r0, =0x154b
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
.Lm921_a92:
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
.Lm921_aa2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008a3c

