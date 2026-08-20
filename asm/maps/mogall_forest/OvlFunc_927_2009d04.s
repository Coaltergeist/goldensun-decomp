	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_2009d04
	push	{r5, r6, lr}
	mov	r0, #0xf
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #0x80
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_927_2008ea8
	lsl	r6, #12
	mov	r1, #0xec
	mov	r3, r6
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0xf
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	add	r2, r6
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xf
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xf
	bl	__MapActor_Emote
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r1, r5
	mov	r0, #0xf
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x307
	bl	__SetFlag
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #0
	bl	__StartMapBattle
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009d04

