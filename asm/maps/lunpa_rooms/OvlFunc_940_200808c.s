	.include "macros.inc"

.thumb_func_start OvlFunc_940_200808c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.Lm940_b4
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm940_b4
	mov	r0, #8
	mov	r1, #0x11
	bl	__Func_80b3284
	b	.Lm940_e4
.Lm940_b4:
	bl	__CutsceneStart
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm940_d2
	ldr	r0, =0x24fb
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093054
	b	.Lm940_e0
.Lm940_d2:
	ldr	r0, =0x1bd0
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093054
.Lm940_e0:
	bl	__CutsceneEnd
.Lm940_e4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_200808c

