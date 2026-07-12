	.include "macros.inc"

.thumb_func_start OvlFunc_906_2008414
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r3, #2
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r1, =gState
	ldrsh	r2, [r1, r2]
	ldr	r3, =0x1c
	sub	sp, #8
	cmp	r2, r3
	bne	.L4a6
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	bne	.L446
	ldr	r0, =0x12f
	bl	__ClearFlag
	b	.L4a6
.L446:
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x864
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4a6
	mov	r1, #0xad
	mov	r2, #0x92
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r3, #0x13
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x4a
	mov	r2, #9
	mov	r3, #3
	bl	__Func_8010704
.L4a6:
	mov	r0, #0
	add	sp, #8
	pop	{r1}
	bx	r1
.func_end OvlFunc_906_2008414
