	.include "macros.inc"

.thumb_func_start OvlFunc_909_2008150
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x1764
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008150

.thumb_func_start OvlFunc_909_20081b4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1750
	bl	__MessageID
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1d0
	ldr	r0, =0x1768
	bl	__MessageID
.L1d0:
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	ldr	r0, =0x302
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20081b4

