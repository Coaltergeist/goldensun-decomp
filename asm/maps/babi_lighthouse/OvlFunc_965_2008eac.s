	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_965_2008eac
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xcc
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =0xfffb0000
	str	r3, [r0, #0x28]
	mov	r0, #0
	bl	__MapActor_GetActor
	bl	OvlFunc_965_2008cd0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, r6
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2008eac

