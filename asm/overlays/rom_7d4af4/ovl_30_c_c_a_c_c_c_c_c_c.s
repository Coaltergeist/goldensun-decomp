	.include "macros.inc"

.section .text.after_86e8, "ax", %progbits

.thumb_func_start OvlFunc_949_2008728
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r1, #0xb0
	mov	r2, #0xb0
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__MapActor_SetPos
	ldr	r1, =gScript_949__02008ec0
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, #1
	ldr	r5, =OvlFunc_949_2008170
	add	r2, #0x64
	strh	r3, [r2]
	mov	r1, #0xb8
	mov	r2, #0xa0
	lsl	r2, #17
	str	r5, [r0, #0x6c]
	lsl	r1, #17
	mov	r0, #0x11
	bl	__MapActor_SetPos
	ldr	r1, =gScript_949__02008f90
	mov	r0, #0x11
	bl	__MapActor_SetBehavior
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x64
	mov	r6, #0
	strh	r6, [r3]
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_949_20086e8
	str	r3, [r0, #0x6c]
	ldr	r0, =0x8c1
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7a8
	mov	r1, #0x9e
	mov	r2, #0xa4
	mov	r0, #0x1c
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
.L7a8:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7b6
	bl	OvlFunc_949_2008ca8
.L7b6:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7ce
	bl	OvlFunc_949_2008224
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
.L7ce:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L83e
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x14
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x18
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x1a
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x1b
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.L86a
.L83e:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L86a
	mov	r1, #0x8c
	mov	r2, #0xa0
	mov	r0, #0x1b
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x1b
	mov	r1, #1
	bl	__MapActor_SetAnim
.L86a:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_949_2008728

.thumb_func_start OvlFunc_949_2008894
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0x98
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x1c
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xe3d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x1c
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L936
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x1c
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1c
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xa0
	mov	r2, #0x98
	mov	r0, #0x1c
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x9e
	mov	r2, #0xa4
	mov	r0, #0x1c
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r0, =0x8c1
	bl	__SetFlag
	b	.L93e
.L936:
	mov	r0, #0x1c
	mov	r1, #0
	bl	__ActorMessage
.L93e:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008894
