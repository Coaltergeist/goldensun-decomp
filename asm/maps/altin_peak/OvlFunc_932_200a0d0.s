	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200a0d0
	push	{r5, r6, lr}
	ldr	r0, =0x109
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_20f2
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.Lm932_20f2
	bl	OvlFunc_932_200ad58
.Lm932_20f2:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_210c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm932_2124
.Lm932_210c:
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm932_2124
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm932_2124:
	mov	r0, #9
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm932_213c
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm932_213c:
	ldr	r0, =0x8fd
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.Lm932_222c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	ldr	r0, =0x905
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm932_21c8
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_932_200ace0
	str	r3, [r0, #0x6c]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r2, #0xd
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #0xf0
	mov	r2, #0xd7
	lsl	r2, #16
	lsl	r1, #15
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #3
	strh	r5, [r0, #6]
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x82
	mov	r2, #0xa8
	lsl	r0, #16
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0
	bl	OvlFunc_932_200abb0
	b	.Lm932_22de
.Lm932_21c8:
	ldr	r0, =0x904
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm932_21d4
	b	.Lm932_22de
.Lm932_21d4:
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_932_200ace0
	str	r3, [r0, #0x6c]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r2, #0xd
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0x82
	mov	r2, #0xd7
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	ldr	r2, =gScript_932__0200bd34
	mov	r0, #0xa
	lsl	r1, #9
	bl	__Func_8092a1c
	b	.Lm932_22de
.Lm932_222c:
	ldr	r3, =iwram_3001e70
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	ldr	r5, [r3]
	bl	__MapActor_SetPos
	mov	r3, #3
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	ldrh	r2, [r5, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	mov	r0, #8
	strh	r3, [r5, #0x14]
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_229a
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #9
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	mov	r0, #7
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0xc]
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.Lm932_229a:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_22de
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x11
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x1d
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.Lm932_22de:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a0d0

