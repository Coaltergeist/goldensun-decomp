	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2008ad0
	push	{lr}
	ldr	r0, =0x9c8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_b5e
	ldr	r0, =0x9c8
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__MapActor_SetSpeed
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0x92
	mov	r2, #0xaa
	str	r3, [r0, #0x28]
	lsl	r1, #2
	mov	r0, #0xf
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__CutsceneEnd
.Lm948_b5e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008ad0

