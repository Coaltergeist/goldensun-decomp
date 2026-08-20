	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_898_2009238
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x64
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x867
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm898_12b2
	mov	r1, #0x81
	mov	r0, #0x17
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x17
	bl	__MapActor_Jump
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x17
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc4
	mov	r3, #0xe0
	lsl	r3, #11
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x17
	bl	OvlFunc_898_20091b0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xcc
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x68
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xcc
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x78
	bl	__MapActor_TravelToAnimWait
	ldr	r0, =0x867
	bl	__SetFlag
.Lm898_12b2:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009238

