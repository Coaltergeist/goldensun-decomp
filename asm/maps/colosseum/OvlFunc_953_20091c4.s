	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_20091c4
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x8a4
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm953_11fa
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__MapActor_TurnToFaceActor
	ldr	r0, =0x206f
	bl	__MessageID
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.Lm953_1272
.Lm953_11fa:
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_809259c
	ldr	r0, =0x206d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x11
	bl	__ActorMessage
	bl	__Func_8093554
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0x87
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x8a3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_126c
	mov	r0, #0x46
	bl	__Func_8091e9c
	b	.Lm953_1272
.Lm953_126c:
	mov	r0, #7
	bl	__Func_8091e9c
.Lm953_1272:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20091c4

