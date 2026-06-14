	.include "macros.inc"

.thumb_func_start OvlFunc_945_2008728
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L768
	ldr	r0, =0x1eb2
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.L7cc
.L768:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L782
	ldr	r0, =0x1e06
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L7cc
.L782:
	ldr	r0, =0x921
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7be
	ldr	r0, =0x1dcd
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	bne	.L7cc
	ldr	r0, =0x924
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7cc
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
	b	.L7cc
.L7be:
	ldr	r0, =0x1d30
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L7cc:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008728

.thumb_func_start OvlFunc_945_20087f8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L880
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e13
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L85a
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L88e
.L85a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	b	.L88e
.L880:
	ldr	r0, =0x1d4e
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L88e:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_20087f8

