	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_2009c08
	push	{lr}
	bl	__Func_808c4c0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #6
	bl	__Func_80936a0
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0xc66
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x6f
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0
	bl	__Func_802899c
	ldr	r0, =0x16f
	bl	__ClearFlag
	ldr	r0, =0x171
	bl	__ClearFlag
	bl	__Func_80aa56c
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_Jump
	ldr	r0, =0xc67
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	ldr	r0, =0x16f
	bl	__ClearFlag
	ldr	r0, =0x171
	bl	__SetFlag
	bl	__Func_80aa56c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #6
	bl	__StartMapBattle
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009c08

