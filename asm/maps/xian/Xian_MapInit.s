	.include "macros.inc"

.thumb_func_start Xian_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r2, #0x80
	add	r3, r0
	lsl	r2, #1
	str	r2, [r3]
	mov	r0, #0xa9
	sub	sp, #8
	bl	__Func_8091ff0
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #9
	ble	.Lm928_117c
	ldr	r0, =0x12f
	bl	__ClearFlag
.Lm928_117c:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm928_11be
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x92
	mov	r2, #0x9c
	mov	r0, #0xe
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm928_11be
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm928_11be:
	mov	r0, #0x8b
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm928_11d4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm928_11d4:
	mov	r2, #0
	mov	r6, #0
	mov	r8, r2
.Lm928_11da:
	mov	r0, r6
	add	r0, #0x17
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r2, [r1, #9]
	neg	r0, r0
	mov	r3, r0
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	mov	r3, r5
	strb	r2, [r1, #9]
	add	r3, #0x55
	mov	r2, r5
	mov	r7, #0
	add	r2, #0x59
	strb	r7, [r3]
	mov	r3, #8
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #0xf
	add	r5, #0x23
	bl	__Func_80929d8
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #2
	orr	r3, r2
	add	r6, #1
	strb	r3, [r5]
	cmp	r6, #2
	bls	.Lm928_11da
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm928_124c
	mov	r1, #0x92
	mov	r2, #0x9c
	mov	r0, #0xe
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.Lm928_124c:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm928_128c
	mov	r1, #5
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x11
	asr	r5, #20
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_928_2008324
	lsl	r1, #4
	bl	__StartTask
.Lm928_128c:
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_8092950
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_928_2008500
	str	r3, [r0, #0x6c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	ldr	r3, =0x8ccc
	str	r3, [r0, #0x18]
	ldr	r3, =0x6666
	ldr	r2, [r0, #0x50]
	str	r3, [r0, #0x1c]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, .Lm928_12f4	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	str	r7, [r0, #0xc]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	add	sp, #8
	mov	r0, #0
	b	.Lm928_1324

	.align	2, 0
.Lm928_12f4:
	.word	0
	.pool

.Lm928_1324:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Xian_MapInit

