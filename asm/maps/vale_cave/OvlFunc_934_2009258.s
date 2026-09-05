	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_934_2009258
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm934_12f0
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm934_12f0
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r0, =0x302
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xbe
	mov	r2, #0x8c
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xbe
	mov	r2, #0x9c
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc6
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_934_2008cf8
	str	r3, [r0, #0x6c]
	bl	__CutsceneEnd
.Lm934_12f0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009258

