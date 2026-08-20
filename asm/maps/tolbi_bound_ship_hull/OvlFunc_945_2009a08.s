	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2009a08
	push	{lr}
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_1a4c
	bl	__CutsceneStart
	mov	r0, #8
	bl	__Func_8093304
	ldr	r0, =0x1e48
	mov	r1, #1
	mov	r2, #8
	bl	__Func_8019aa0
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x86
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_945_200c880
	bl	__CutsceneEnd
.Lm945_1a4c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009a08

