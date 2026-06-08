	.include "macros.inc"

.thumb_func_start OvlFunc_958_2009158
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	ble	.L11b4
	mov	r3, #0x6b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x11
	mov	r2, #1
	mov	r0, #0x6c
	bl	__Func_8010704
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xae
	mov	r2, #0x90
	lsl	r2, #17
	mov	r0, #0xa
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x9a
	bl	__PlaySound
	ldr	r0, =0x9a5
	bl	__SetFlag
.L11b4:
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2009158

