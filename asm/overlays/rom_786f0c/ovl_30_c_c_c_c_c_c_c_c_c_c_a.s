	.include "macros.inc"

.thumb_func_start OvlFunc_886_2008368
	push	{r5, lr}
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.L43c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r0, #0x16
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__StartThunder
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
.L43c:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L474
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.L464
	ldr	r0, =0x81d
	bl	__GetFlag
	cmp	r0, #0
	bne	.L464
	bl	OvlFunc_886_2008658
.L464:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r0]
.L474:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L4b6
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4b6
	mov	r1, #0xe3
	mov	r2, #0x96
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #4
	bl	__Func_80118a8
.L4b6:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_886_2008368
