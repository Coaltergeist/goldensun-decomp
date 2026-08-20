	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_911_2008230
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.Lm911_250
	mov	r0, #0x10
	bl	__UI_Sanctum
	b	.Lm911_25e
.Lm911_250:
	ldr	r0, =0x16b3
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
.Lm911_25e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008230

