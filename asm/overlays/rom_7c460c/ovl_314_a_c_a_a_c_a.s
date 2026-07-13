	.include "macros.inc"

.thumb_func_start OvlFunc_939_200849c
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L4b0
	ldr	r2, =0xfffff
	add	r3, r2
.L4b0:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L4bc
	ldr	r3, =0xfffff
	add	r0, r3
.L4bc:
	asr	r5, r0, #20
	ldr	r0, =0xf27
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4fc
	cmp	r6, #7
	bne	.L4da
	cmp	r5, #0x10
	bne	.L4da
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_8092304
.L4da:
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x66
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x1f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L4fc:
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	mov	r7, #0x2e
	str	r7, [sp]
	bl	__Func_80105d4
	mov	r3, #0xd
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #3
	mov	r0, #0x22
	mov	r1, #0x25
	str	r2, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xe8
	mov	r2, #0x90
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0xc]
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.L57c
	mov	r6, #1
	mov	r5, #0xe
	mov	r0, #0x29
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x21
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_80105d4
	b	.L5be
.L57c:
	mov	r1, #0xe0
	mov	r2, #0x86
	lsl	r1, #14
	lsl	r2, #17
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L5be
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #8
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r0, #0xc]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0x13333
	str	r3, [r0, #0x18]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r0, #0x1c]
.L5be:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_939_2008468
	bl	__StartTask
	ldr	r0, =0x201
	bl	__ClearFlag
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_200849c

.thumb_func_start OvlFunc_939_20085f0
	push	{lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #0x2e
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, #0xd
	str	r3, [sp]
	mov	r2, #3
	mov	r0, #0x25
	mov	r1, #0x25
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xe
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #8
	mov	r1, #0x10
	mov	r2, #1
	bl	__Func_8010704
	mov	r0, #0x66
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r3, #1
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r2, #3
	mov	r1, #0x2a
	mov	r0, #0x20
	bl	__Func_80105d4
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetColorswap
	ldr	r0, =OvlFunc_939_2008468
	bl	__StopTask
	ldr	r0, =0x201
	bl	__SetFlag
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20085f0
