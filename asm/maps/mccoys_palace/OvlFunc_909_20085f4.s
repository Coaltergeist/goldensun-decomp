	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_909_20085f4
	push	{lr}
	ldr	r0, =0x84e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_6aa
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #0x13
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xbf
	mov	r0, #0x13
	ldr	r1, =0x26e
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xf0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x13
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	ldr	r0, =0x1749
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x13
	ldr	r1, =0x23a
	ldr	r2, =0x2f6
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #0x13
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x85e
	bl	__SetFlag
	ldr	r0, =0x333
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm909_6aa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20085f4

