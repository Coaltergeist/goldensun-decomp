	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_908_2008124
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.Lm908_146
	mov	r0, #8
	mov	r1, #0x11
	bl	__Func_80b0278
	b	.Lm908_18a
.Lm908_146:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm908_17c
	ldr	r0, =0x13e5
	bl	__MessageID
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8093054
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	b	.Lm908_18a
.Lm908_17c:
	ldr	r0, =0x16f7
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
.Lm908_18a:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_2008124

