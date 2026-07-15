	.include "macros.inc"

	.section .text.after_a410, "ax", %progbits

	.section .text.after_a52c, "ax", %progbits

.thumb_func_start OvlFunc_964_200a59c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r5, =gState
	ldr	r6, =0xac
	ldrsh	r2, [r5, r2]
	sub	sp, #8
	cmp	r2, r6
	beq	.L25c2
	ldr	r3, =0xad
	cmp	r2, r3
	bne	.L25d8
.L25c2:
	mov	r0, #0
	bl	__Func_8091494
	ldr	r2, =0x242
	mov	r1, #0x90
	add	r3, r5, r2
	lsl	r1, #2
	mov	r2, #1
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r6, [r3]
.L25d8:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, r6
	beq	.L25e8
	b	.L2a30
.L25e8:
	add	r2, #2
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r2, r3, #1
	cmp	r2, #0xc
	bls	.L25fa
	bl	.L2fda
.L25fa:
	lsl	r3, r2, #2
	ldr	r2, =.L2604
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2604:
	.word	.L2638
	.word	.L2638
	.word	.L270e
	.word	.L270e
	.word	.L274e
	.word	.L274e
	.word	.L274e
	.word	.L2792
	.word	.L2792
	.word	.L27d2
	.word	.L27d2
	.word	.L29a8
	.word	.L29a8
.L2638:
	ldr	r0, =0x982
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2694
	mov	r3, #5
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #9
	bl	__CopyMapTiles
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x49
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x12
	mov	r1, #0x51
	mov	r2, #9
	mov	r3, #0x4b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x4d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x4f
	b	.L26e2
.L2694:
	ldr	r0, =0x983
	bl	__GetFlag
	cmp	r0, #0
	bne	.L26a2
	bl	.L2fda
.L26a2:
	mov	r3, #5
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0xd
	mov	r2, #0x4a
	mov	r3, #9
	bl	__CopyMapTiles
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x12
	mov	r1, #0x55
	mov	r2, #0xb
	mov	r3, #0x4a
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xd
	mov	r3, #0x4b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x12
	mov	r1, #0x55
	mov	r2, #0xb
	mov	r3, #0x4c
.L26e2:
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xb
	mov	r3, #0x4e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xd
	mov	r3, #0x4f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	bl	.L2fda
.L270e:
	bl	OvlFunc_964_200a3a0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #9
	b	.L2a1e
.L274e:
	ldr	r0, =0x982
	bl	__GetFlag
	cmp	r0, #0
	beq	.L276c
	mov	r3, #0x1e
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
.L276c:
	ldr	r0, =0x983
	bl	__GetFlag
	cmp	r0, #0
	bne	.L277a
	bl	.L2fda
.L277a:
	mov	r3, #0x20
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
	bl	.L2fda
.L2792:
	bl	OvlFunc_964_200a410
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #0xb
	b	.L2a1e
.L27d2:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #2
	mov	r0, #0x12
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #0xf
	bl	__Func_8092950
	ldr	r0, =0x971
	bl	__GetFlag
	cmp	r0, #0
	beq	.L289c
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x31
	mov	r3, #8
	bl	__CopyMapTiles
	mov	r3, #0x31
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #8
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x12
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_SetAnim
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xba
	mov	r2, #0x88
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =0xfff00000
	mov	r1, #0xba
	mov	r2, #0x88
	str	r3, [r0, #0xc]
	lsl	r1, #18
	mov	r0, #0x14
	lsl	r2, #16
	bl	__MapActor_SetPos
.L289c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L28b8
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #5
	bl	__MapActor_SetAnim
.L28b8:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.L28ca
	mov	r0, #0x13
	mov	r1, #2
	bl	__MapActor_SetAnim
.L28ca:
	ldr	r0, =0x972
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2952
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x2d
	mov	r3, #0xe
	bl	__CopyMapTiles
	mov	r3, #0x2d
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0xe
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r3, #0x30
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xc2
	mov	r2, #0xe8
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, =0xfff00000
	mov	r1, #0xc2
	mov	r2, #0xe8
	str	r3, [r0, #0xc]
	lsl	r1, #18
	mov	r0, #0x15
	lsl	r2, #16
	bl	__MapActor_SetPos
	ldr	r0, =0x202
	bl	__SetFlag
.L2952:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.L295e
	b	.L2fda
.L295e:
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.L2fda

	.pool_aligned

.L29a8:
	bl	OvlFunc_964_200a480
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
.L2a1e:
	bl	__MapActor_GetActor
	mov	r1, #0xc8
	str	r5, [r0, #0x6c]
	lsl	r1, #4
	ldr	r0, =OvlFunc_964_2008e20
	bl	__StartTask
	b	.L2fda
.L2a30:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x11
	bls	.L2a40
	b	.L2fda
.L2a40:
	ldr	r2, =.L2a48
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2a48:
	.word	.L2fda
	.word	.L2a90
	.word	.L2a90
	.word	.L2a90
	.word	.L2bac
	.word	.L2bac
	.word	.L2aee
	.word	.L2aee
	.word	.L2db2
	.word	.L2db2
	.word	.L2db2
	.word	.L2db2
	.word	.L2df6
	.word	.L2e1a
	.word	.L2e1a
	.word	.L2fda
	.word	.L2fda
	.word	.L2fc2
.L2a90:
	ldr	r3, =0x242
	mov	r1, #0x90
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	lsl	r1, #2
	ldr	r2, =0xb0
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r0, =0x12f
	bl	__ClearFlag
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	ldr	r0, =0x974
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2ad0
	mov	r1, #0xb6
	mov	r2, #0x9c
	mov	r0, #0x11
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
.L2ad0:
	ldr	r0, =0x975
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2ae8
	mov	r1, #0xba
	mov	r2, #0x9c
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
.L2ae8:
	bl	OvlFunc_964_200a52c
	b	.L2fda
.L2aee:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_8092b08
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #0xf
	mov	r0, #9
	bl	__Func_8092950
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2b42
	b	.L2fda
.L2b42:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #5
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	b	.L2fda

	.pool_aligned

.L2bac:
	ldr	r0, =0x109
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	beq	.L2bba
	b	.L2daa
.L2bba:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r7, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r7, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r5, =0xffd00000
	str	r5, [r0, #0xc]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r2, #2
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r1, r8
	orr	r3, r1
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #3
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r5, [r0]
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_8092b08
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_8092b08
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r6, .L2c8c	@ 0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	b	.L2c98

	.align	2, 0
.L2c8c:
	.word	0
	.pool

.L2c98:
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	add	r0, #0x64
	strh	r7, [r0]
	cmp	r3, #5
	beq	.L2ccc
	b	.L2fda
.L2ccc:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, =0xffe00000
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, =0xffc00000
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #4
	add	r0, #0x64
	mov	r1, #0xc8
	mov	r2, #0x98
	lsl	r1, #16
	lsl	r2, #16
	strh	r3, [r0]
	mov	r0, #0xc
	bl	__MapActor_SetPos
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0xb
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_964_2009a98
	str	r5, [r0, #0x6c]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r8
	orr	r3, r1
	mov	r2, #0x98
	mov	r1, #0xc8
	lsl	r1, #16
	lsl	r2, #16
	strb	r3, [r0]
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #0xc
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	mov	r1, #0x88
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r1, #16
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r8
	orr	r3, r1
	strb	r3, [r0]
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r0, =0x202
	bl	__SetFlag
.L2daa:
	mov	r0, #0
	bl	OvlFunc_964_2009abc
	b	.L2fda
.L2db2:
	ldr	r0, =0x982
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2dd0
	mov	r3, #0x10
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
.L2dd0:
	ldr	r0, =0x983
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2dee
	mov	r3, #0x16
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
.L2dee:
	ldr	r0, =0x973
	bl	__SetFlag
	b	.L2fda
.L2df6:
	mov	r3, #8
	mov	r2, #0x71
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #8
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_964_2009fdc
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_964_2008e20
	lsl	r1, #4
	bl	__StartTask
	b	.L2fda
.L2e1a:
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, =0x984
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2e84
	mov	r3, #0x20
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x18
	mov	r1, #0x3b
	mov	r2, #1
	bl	__Func_80105d4
	mov	r1, #0xcc
	mov	r2, #0xc6
	mov	r0, #0x13
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xbc
	mov	r2, #0xc6
	mov	r0, #0x14
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xcc
	mov	r2, #0xbe
	mov	r0, #0x15
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xbc
	mov	r2, #0xbe
	mov	r0, #0x16
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc4
	mov	r2, #0xc2
	mov	r0, #0x17
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
.L2e84:
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0x16
	mov	r1, #0xa
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #0x17
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	asr	r5, #20
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.L2fda
.L2fc2:
	mov	r3, #0x31
	mov	r2, #0x6b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_964_2009fdc
.L2fda:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_200a59c

	.section .data
	.global .L33ec
	.global .L340c
	.global .L3350
	.global .L31f0
	.global .L3230
	.global .L3248
	.global .L336c
	.global gScript_964__0200b3b8
	.global .L342c
	.global .L3474
	.global .L3654
	.global gScript_888__0200b81c
	.global gOvl_0200b85c
	.global gScript_925__0200b8f4
	.global .L3a74

.L31f0:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x31f0, (0x3230-0x31f0)
.L3230:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3230, (0x3248-0x3230)
.L3248:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3248, (0x3350-0x3248)
.L3350:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3350, (0x336c-0x3350)
.L336c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x336c, (0x33b8-0x336c)
gScript_964__0200b3b8:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x33b8, (0x33ec-0x33b8)
.L33ec:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x33ec, (0x340c-0x33ec)
.L340c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x340c, (0x342c-0x340c)
.L342c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x342c, (0x3474-0x342c)
.L3474:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3474, (0x3654-0x3474)
.L3654:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3654, (0x381c-0x3654)
gScript_888__0200b81c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x381c, (0x385c-0x381c)
gOvl_0200b85c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x385c, (0x38f4-0x385c)
gScript_925__0200b8f4:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x38f4, (0x3a74-0x38f4)
.L3a74:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3a74, (0x3c0c-0x3a74)
.L3c0c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3c0c, (0x3ef4-0x3c0c)
.L3ef4:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3ef4
