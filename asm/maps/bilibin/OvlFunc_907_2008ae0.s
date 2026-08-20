	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_907_2008ae0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x845
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm907_b8c
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
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x38
	mov	r1, #0xf
	mov	r2, #0x28
	mov	r3, #0xf
	bl	__CopyMapTiles
	mov	r3, #0xa
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldr	r0, =0x849
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm907_b72
	ldr	r0, =0x848
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm907_b68
	b	.Lm907_c92
.Lm907_b68:
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm907_b72:
	mov	r1, #0xd0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm907_c92
.Lm907_b8c:
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r6
	add	r2, #0x55
	strb	r5, [r2]
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm907_c80
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x10
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r1, #0x8e
	orr	r3, r5
	mov	r2, #0x9c
	strb	r3, [r0]
	lsl	r2, #16
	lsl	r1, #16
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x8e
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r2, #16
	lsl	r1, #16
	bl	__MapActor_SetPos
	ldr	r2, [r6, #0x50]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
	ldr	r2, =0xfff80000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r0, =0x848
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm907_c5c
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	b	.Lm907_c92
.Lm907_c5c:
	mov	r1, #0xb0
	mov	r2, #0xc4
	lsl	r2, #16
	mov	r0, #0xb
	lsl	r1, #15
	bl	__MapActor_SetPos
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092b08
	mov	r3, r7
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r1, #4
	orr	r2, r1
	strb	r2, [r3]
	b	.Lm907_c92
.Lm907_c80:
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r6, #0xc]
	mov	r3, r7
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xc0
	lsl	r3, #14
	str	r3, [r7, #0xc]
.Lm907_c92:
	bl	OvlFunc_907_2008cb4
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008ae0

