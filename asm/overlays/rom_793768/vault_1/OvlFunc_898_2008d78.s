	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_898_2008d78
	push	{lr}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm898_dac
	ldr	r0, =0x123d
	bl	__MessageID
	b	.Lm898_db2

	.pool_aligned

.Lm898_dac:
	ldr	r0, =0x134b
	bl	__MessageID
.Lm898_db2:
	mov	r0, #0xf
	bl	OvlFunc_898_2008938
	bl	__CutsceneEnd
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008d78

