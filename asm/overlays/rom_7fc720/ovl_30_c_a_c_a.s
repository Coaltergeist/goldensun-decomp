	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_973_200804c
	push	{lr}
	ldr	r0, =0x23cd
	bl	__MessageID
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_973_200804c

.thumb_func_start OvlFunc_973_2008070
	push	{lr}
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_Emote
	ldr	r0, =0x23cd
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_973_2008070

