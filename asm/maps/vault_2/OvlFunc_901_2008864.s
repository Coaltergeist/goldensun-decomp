	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_901_2008864
	push	{r5, lr}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__CutsceneStart
	ldr	r0, =0x1cc1
	bl	__MessageID
	mov	r0, #0xf
	bl	OvlFunc_901_20084b4
	bl	__CutsceneEnd
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x64
	strh	r5, [r0]
	b	.Lm901_8a0

	.pool_aligned

.Lm901_8a0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008864

