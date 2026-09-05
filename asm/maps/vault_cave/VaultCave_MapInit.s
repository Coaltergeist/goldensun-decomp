	.include "macros.inc"

.thumb_func_start VaultCave_MapInit
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r6, =gState
	ldr	r3, =0x60
	ldrsh	r2, [r6, r2]
	sub	sp, #8
	cmp	r2, r3
	bne	.Lm935_d56
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xa
	beq	.Lm935_d50
	cmp	r3, #0xa
	bgt	.Lm935_cd8
	cmp	r3, #8
	bgt	.Lm935_d56
	cmp	r3, #5
	blt	.Lm935_d56
	b	.Lm935_cdc
.Lm935_cd8:
	cmp	r3, #0xd
	bne	.Lm935_d56
.Lm935_cdc:
	ldr	r0, =0x9a8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_cfc
	mov	r3, #0x15
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm935_d42
.Lm935_cfc:
	mov	r3, #0x5c
	str	r3, [sp]
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0x1b
	mov	r0, #0x6c
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x13
	mov	r2, #0x5b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x53
	mov	r2, #0xf
	mov	r3, #8
	mov	r0, #0x13
	bl	__Func_80105d4
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x19
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
.Lm935_d42:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r6, =gState
	b	.Lm935_d56
.Lm935_d50:
	ldr	r0, =0x9a8
	bl	__ClearFlag
.Lm935_d56:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x61
	cmp	r2, r3
	beq	.Lm935_d68
	b	.Lm935_f3e
.Lm935_d68:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_d80
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r0, #0x1c]
.Lm935_d80:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r2, r3, #1
	cmp	r2, #0xd
	bls	.Lm935_d92
	b	.Lm935_f08
.Lm935_d92:
	lsl	r3, r2, #2
	ldr	r2, =.Lm935_d9c
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm935_d9c:
	.word	.Lm935_dd4
	.word	.Lm935_dd4
	.word	.Lm935_dd4
	.word	.Lm935_dd4
	.word	.Lm935_f08
	.word	.Lm935_f08
	.word	.Lm935_f08
	.word	.Lm935_e1c
	.word	.Lm935_e1c
	.word	.Lm935_ee0
	.word	.Lm935_ee0
	.word	.Lm935_f08
	.word	.Lm935_f08
	.word	.Lm935_e1c
.Lm935_dd4:
	ldr	r0, =0x9a8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_df4
	mov	r3, #5
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #5
	mov	r1, #0x51
	mov	r2, #0xb
	mov	r3, #7
	bl	__Func_80105d4
	b	.Lm935_f08
.Lm935_df4:
	mov	r3, #6
	mov	r5, #0xc
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.Lm935_f08
.Lm935_e1c:
	bl	OvlFunc_935_2008c08
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_e38
	mov	r0, #0x10
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_200850c
.Lm935_e38:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_e4e
	mov	r0, #0x11
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_2008554
.Lm935_e4e:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_e64
	mov	r0, #0x12
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_20085a0
.Lm935_e64:
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_e7a
	mov	r0, #0x13
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_20085ec
.Lm935_e7a:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_e92
	mov	r0, #0x14
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_2008640
.Lm935_e92:
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_ea8
	mov	r0, #0x15
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_2008690
.Lm935_ea8:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_935_20086e4
	lsl	r1, #4
	bl	__StartTask
	b	.Lm935_f08

	.pool_aligned

.Lm935_ee0:
	ldr	r0, =0x9a9
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_efc
	bl	OvlFunc_935_2008398
	mov	r1, #0xf8
	mov	r2, #0xdb
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm935_efc:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
.Lm935_f08:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x59
	strb	r3, [r0]
	ldr	r6, =gState
.Lm935_f3e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.Lm935_1026
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_f68
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
.Lm935_f68:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x80
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r2, #0xe1
	lsl	r2, #1
	orr	r5, r3
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	strb	r5, [r0]
	cmp	r3, #6
	bgt	.Lm935_1026
	cmp	r3, #5
	blt	.Lm935_1026
	bl	OvlFunc_935_2008c50
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	ldr	r0, =0x9aa
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_1026
	bl	OvlFunc_935_2008410
	mov	r1, #0x84
	mov	r2, #0xcc
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
.Lm935_1026:
	ldr	r3, =0x242
	mov	r1, #0x90
	add	r2, r6, r3
	mov	r3, #0xa
	strh	r3, [r2]
	lsl	r1, #2
	ldr	r2, =0x60
	add	r3, r6, r1
	mov	r0, #0
	strh	r2, [r3]
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end VaultCave_MapInit

