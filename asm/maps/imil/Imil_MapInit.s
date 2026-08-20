	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Imil_MapInit
	push	{r5, r6, lr}
	ldr	r6, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x32
	sub	sp, #8
	cmp	r2, r3
	bne	.Lm921_c14
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	mov	r5, r0
	str	r2, [r3]
	mov	r0, #0xa
	mov	r1, #9
	bl	__MapActor_SetAnim
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_bbc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x201
	bl	__ClearFlag
.Lm921_bbc:
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	mov	r1, #0xc8
	add	r3, #2
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_921_2009794
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_921_20098c4
	bl	__StartTask
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_bf2
	bl	OvlFunc_921_2009960
.Lm921_bf2:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_bfe
	b	.Lm921_f78
.Lm921_bfe:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	beq	.Lm921_c0e
	b	.Lm921_f78
.Lm921_c0e:
	bl	OvlFunc_921_20099bc
	b	.Lm921_f78
.Lm921_c14:
	ldr	r3, =0x33
	cmp	r2, r3
	beq	.Lm921_c1c
	b	.Lm921_f78
.Lm921_c1c:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r5, [r3, r1]
	cmp	r5, #1
	beq	.Lm921_c38
	b	.Lm921_d84
.Lm921_c38:
	mov	r1, #0xf
	mov	r0, #0x15
	bl	__Func_8092950
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_8092b08
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_ca6
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #9
	mov	r1, #0x7d
	mov	r3, #0x45
	mov	r0, #3
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm921_f78
.Lm921_ca6:
	ldr	r0, =0x82c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_d14
	ldr	r0, =0x82a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_d14
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xae
	mov	r2, #0xa4
	lsl	r2, #16
	lsl	r1, #16
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xa8
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, =0x82b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_d0e
	b	.Lm921_f78
.Lm921_d0e:
	bl	OvlFunc_921_2008f90
	b	.Lm921_f78
.Lm921_d14:
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x7d
	mov	r2, #9
	mov	r3, #0x45
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x82c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_d7a
	mov	r1, #0x95
	mov	r2, #0xe8
	lsl	r1, #16
	lsl	r2, #15
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	strh	r5, [r0, #6]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x66
	strh	r5, [r0]
	ldr	r1, =gScript_921__0200a4f4
	mov	r0, #9
	bl	__MapActor_SetBehavior
	b	.Lm921_f78
.Lm921_d7a:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetBehavior
	b	.Lm921_f78
.Lm921_d84:
	cmp	r5, #2
	bne	.Lm921_daa
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_d94
	b	.Lm921_f78
.Lm921_d94:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x66
	strh	r3, [r0]
	ldr	r1, =gScript_921__0200a4f4
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	b	.Lm921_f78
.Lm921_daa:
	cmp	r5, #4
	bne	.Lm921_e48
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_e1a
	mov	r1, #0xb6
	ldr	r2, =0x2420000
	mov	r0, #0xc
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_8092b08
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r6, #4
	orr	r3, r6
	strb	r3, [r0]
	mov	r5, #3
	mov	r3, #0x58
	mov	r0, #6
	mov	r1, #0x7d
	mov	r2, #0x16
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0xf6
	ldr	r2, =0x2420000
	mov	r0, #0xd
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_8092b08
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r1, #0x7d
	mov	r0, #9
	mov	r2, #0x1c
	mov	r3, #0x58
	b	.Lm921_e9e
.Lm921_e1a:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #5
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	b	.Lm921_ee6
.Lm921_e48:
	cmp	r5, #3
	bne	.Lm921_f34
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_ea8
	mov	r1, #0xe6
	mov	r2, #0x81
	lsl	r2, #17
	mov	r0, #0xf
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_8092b08
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	mov	r1, #0xcc
	mov	r2, #0x84
	strb	r3, [r0]
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r0, #6]
	mov	r1, #0x7d
	mov	r0, #0xc
	mov	r2, #0x1a
	mov	r3, #0x46
.Lm921_e9e:
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm921_f78
.Lm921_ea8:
	mov	r1, #0xe6
	mov	r2, #0x81
	lsl	r2, #17
	mov	r0, #0xe
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_8092b08
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xf
.Lm921_ee6:
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.Lm921_f78

	.pool_aligned

.Lm921_f34:
	cmp	r5, #7
	bne	.Lm921_f78
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_f78
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, =0x82e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm921_f6a
	mov	r2, #0xa1
	mov	r0, #0x14
	ldr	r1, =0x28a0000
	lsl	r2, #16
	bl	__MapActor_SetPos
	bl	OvlFunc_921_20099e8
	b	.Lm921_f78
.Lm921_f6a:
	mov	r1, #0xa1
	mov	r2, #0xa6
	mov	r0, #0x14
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
.Lm921_f78:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Imil_MapInit

