.include "macros.inc"
.include "gba.inc"

.thumb_func_start OvlFunc_887_20093e4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xf0
	mov	r2, #0xca
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x12
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0xa4
	mov	r2, #0x80
	mov	r3, #0xc3
	lsl	r1, #17
	lsl	r2, #10
	lsl	r3, #16
	mov	r0, #0x16
	bl	__CreateActor
	mov	r8, r0
	mov	r3, r8
	mov	r5, #0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r2, r8
	ldr	r6, [r2, #0x50]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r2, #0xc]
	mov	r3, r6
	add	r3, #0x27
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xe0
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf0
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r1, #0xd2
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_80921c4
	mov	r1, #0xa3
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xb9
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r1, =gScript_887__02009eac
	mov	r0, r8
	bl	__Actor_SetScript
	mov	r0, r8
	bl	__Actor_WaitScript
	ldr	r1, =gScript_887__02009ecc
	mov	r0, r8
	bl	__Actor_SetScript
	mov	r0, r8
	bl	__Actor_WaitScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r8
	bl	__DeleteActor
	mov	r0, #0x12
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x16
	bl	__Func_8091e9c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20093e4
