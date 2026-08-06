	.include "macros.inc"

.thumb_func_start OvlFunc_945_200c8e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r1
	mov	r6, r2
.Lm945_48f6:
	cmp	r0, #0x19
	bls	.Lm945_48fc
	b	.Lm945_4f5c
.Lm945_48fc:
	ldr	r2, =.Lm945_4904
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm945_4904:
	.word	.Lm945_496c
	.word	.Lm945_4994
	.word	.Lm945_49be
	.word	.Lm945_49f0
	.word	.Lm945_4a20
	.word	.Lm945_4a3c
	.word	.Lm945_4a4c
	.word	.Lm945_4a6e
	.word	.Lm945_4a90
	.word	.Lm945_4ab2
	.word	.Lm945_4ac8
	.word	.Lm945_4b20
	.word	.Lm945_4c62
	.word	.Lm945_4c8a
	.word	.Lm945_4cc4
	.word	.Lm945_4cda
	.word	.Lm945_4d50
	.word	.Lm945_4d74
	.word	.Lm945_4d8a
	.word	.Lm945_4de0
	.word	.Lm945_4e86
	.word	.Lm945_4e9a
	.word	.Lm945_4ed0
	.word	.Lm945_4eea
	.word	.Lm945_4efe
	.word	.Lm945_4f26
.Lm945_496c:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	b	.Lm945_49b6
.Lm945_4994:
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r7
.Lm945_49b6:
	mov	r2, r6
	bl	__Func_8092adc
	b	.Lm945_4f5c
.Lm945_49be:
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	cmp	r7, #0
	beq	.Lm945_49e8
	mov	r0, #3
	bl	__Func_8092504
.Lm945_49e8:
	cmp	r6, #0
	bne	.Lm945_49ee
	b	.Lm945_4f5c
.Lm945_49ee:
	b	.Lm945_4a18
.Lm945_49f0:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
.Lm945_4a18:
	mov	r0, r6
	bl	__CutsceneWait
	b	.Lm945_4f5c
.Lm945_4a20:
	mov	r5, #0
	cmp	r5, r7
	bcc	.Lm945_4a28
	b	.Lm945_4f5c
.Lm945_4a28:
	mov	r0, r5
	add	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__MapActor_SetPos
	cmp	r5, r7
	bcc	.Lm945_4a28
	b	.Lm945_4f5c
.Lm945_4a3c:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r1, #5
	b	.Lm945_4a5e
.Lm945_4a4c:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	ldr	r3, =0xffff0000
	mov	r1, #5
	str	r3, [r0, #0x18]
.Lm945_4a5e:
	mov	r0, r7
	bl	__MapActor_SetAnim
	mov	r0, r7
	mov	r1, r6
	bl	__MapActor_SetAnimSpeed
	b	.Lm945_4f5c
.Lm945_4a6e:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, r7
	bl	OvlFunc_945_200c7cc
	cmp	r6, #0
	beq	.Lm945_4a86
	b	.Lm945_4f5c
.Lm945_4a86:
	mov	r0, r7
	mov	r1, #0
	bl	__MapActor_SetAnimSpeed
	b	.Lm945_4f5c
.Lm945_4a90:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	cmp	r7, #0
	beq	.Lm945_4aaa
	bl	__WaitMapTransition
.Lm945_4aaa:
	mov	r0, #0
	bl	__CutsceneWait
	b	.Lm945_4f5c
.Lm945_4ab2:
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	cmp	r7, #0
	bne	.Lm945_4ac0
	b	.Lm945_4f5c
.Lm945_4ac0:
	mov	r0, r7
	bl	__Func_8091e9c
	b	.Lm945_4f5c
.Lm945_4ac8:
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	OvlFunc_945_200c8e8
	mov	r5, #0x80
	mov	r0, #0
	bl	OvlFunc_945_200b7d8
	lsl	r5, #7
	mov	r1, #0xd8
	lsl	r1, #1
	mov	r0, #0
	mov	r2, #0xa8
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xe0
	lsl	r1, #1
	mov	r0, #1
	mov	r2, #0xa8
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xd4
	lsl	r1, #1
	mov	r0, #2
	mov	r2, #0x98
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xe5
	lsl	r1, #1
	mov	r0, #3
	mov	r2, #0x98
	mov	r3, r5
	bl	OvlFunc_945_200c890
	b	.Lm945_4f5c
.Lm945_4b20:
	cmp	r7, #0
	beq	.Lm945_4b44
	mov	r1, #1
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
.Lm945_4b44:
	mov	r1, #1
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #1
	mov	r0, #0xf
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r10, r3
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	mov	r1, #1
	str	r5, [r0, #0x18]
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, r8
	strh	r3, [r0, #6]
	mov	r1, #1
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0xcd
	mov	r2, #0xae
	str	r5, [r0, #0x18]
	lsl	r1, #17
	mov	r0, #0x1c
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xeb
	mov	r2, #0xae
	mov	r0, #0x1d
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xcd
	mov	r2, #0xce
	mov	r0, #0x1e
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xeb
	mov	r2, #0xce
	mov	r0, #0x1f
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xcd
	mov	r2, #0x8f
	mov	r0, #0x20
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xeb
	mov	r2, #0x8f
	mov	r0, #0x21
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xcd
	mov	r2, #0x9e
	mov	r0, #0x22
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xeb
	mov	r2, #0x9e
	mov	r0, #0x23
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	cmp	r7, #0
	beq	.Lm945_4c32
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lm945_4c32:
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, #0x11
	bl	OvlFunc_945_200c880
	b	.Lm945_4f5c
.Lm945_4c62:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r1, #1
	mov	r5, r0
	mov	r0, r7
	bl	__MapActor_SetAnim
	cmp	r6, #0
	beq	.Lm945_4c7c
	mov	r3, #0xc0
	lsl	r3, #6
	b	.Lm945_4c80
.Lm945_4c7c:
	mov	r3, #0xa0
	lsl	r3, #7
.Lm945_4c80:
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x18]
	b	.Lm945_4f5c
.Lm945_4c8a:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	b	.Lm945_4cd0

	.pool_aligned

.Lm945_4cc4:
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
.Lm945_4cd0:
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm945_4f5c
.Lm945_4cda:
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xde
	mov	r3, #0xd0
	lsl	r1, #1
	ldr	r2, =0x266
	mov	r0, #8
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	cmp	r7, #0
	beq	.Lm945_4d1a
	bl	OvlFunc_945_200c5d0
.Lm945_4d1a:
	mov	r0, #0xe0
	mov	r1, #0x80
	mov	r2, #0x9c
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #18
	ldr	r3, =0x1000001
	bl	OvlFunc_945_200c8ac
	cmp	r6, #0
	bne	.Lm945_4d32
	b	.Lm945_4f5c
.Lm945_4d32:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	b	.Lm945_4f5c
.Lm945_4d50:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xdb
	mov	r2, #0x98
	mov	r0, #0x1b
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	b	.Lm945_4f5c
.Lm945_4d74:
	mov	r5, #0
.Lm945_4d76:
	mov	r0, r5
	add	r0, #0x1c
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__MapActor_SetPos
	cmp	r5, #7
	bls	.Lm945_4d76
	b	.Lm945_4f5c
.Lm945_4d8a:
	mov	r2, #0x85
	mov	r3, #0xb0
	lsl	r2, #2
	lsl	r3, #8
	mov	r0, #0xc
	mov	r1, #0x98
	mov	r5, #0xf5
	bl	OvlFunc_945_200c890
	lsl	r5, #1
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r2, r5
	mov	r0, #8
	mov	r1, #0x86
	mov	r8, r3
	bl	OvlFunc_945_200c890
	mov	r3, #0xa0
	mov	r2, r5
	mov	r0, #9
	mov	r1, #0xa6
	lsl	r3, #7
	bl	OvlFunc_945_200c890
	add	r5, #0xe
	mov	r3, #0xa0
	mov	r0, #0xa
	mov	r1, #0xb6
	mov	r2, r5
	lsl	r3, #7
	bl	OvlFunc_945_200c890
	mov	r0, #0xb
	mov	r1, #0x76
	mov	r2, r5
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r7, #0
	mov	r0, #0xe
	mov	r6, #0
	b	.Lm945_48f6
.Lm945_4de0:
	mov	r1, #0xd0
	mov	r2, #0xa4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #8
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r10, r2
	mov	r3, #0xd0
	lsl	r3, #8
	sub	r2, #0x60
	mov	r0, #9
	mov	r1, r10
	mov	r9, r3
	bl	OvlFunc_945_200c890
	mov	r2, #0xc0
	lsl	r2, #6
	mov	r8, r2
	mov	r1, #0xe3
	lsl	r1, #1
	mov	r0, #0xa
	mov	r2, #0xf8
	mov	r3, r8
	mov	r5, #0xcc
	bl	OvlFunc_945_200c890
	lsl	r5, #1
	mov	r2, #0x91
	mov	r1, r5
	lsl	r2, #1
	mov	r0, r7
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xab
	mov	r1, r5
	lsl	r2, #1
	mov	r0, r6
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r1, #0xd2
	mov	r2, #0xb2
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	mov	r3, r9
	bl	OvlFunc_945_200c890
	mov	r2, #0x98
	mov	r1, r5
	lsl	r2, #1
	mov	r0, #0xe
	mov	r3, #0
	bl	OvlFunc_945_200c890
	sub	r5, #0x1e
	mov	r1, #0xd1
	lsl	r1, #1
	mov	r0, #0xf
	mov	r2, r5
	mov	r3, r9
	bl	OvlFunc_945_200c890
	mov	r1, #0xdc
	mov	r2, #0x83
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x10
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r0, #0x11
	mov	r1, r10
	mov	r2, r5
	mov	r3, r9
	bl	OvlFunc_945_200c890
	b	.Lm945_4f5c
.Lm945_4e86:
	mov	r5, r7
	cmp	r7, r6
	bhi	.Lm945_4f5c
.Lm945_4e8c:
	mov	r0, r5
	add	r5, #1
	bl	__ClearFlag
	cmp	r5, r6
	bls	.Lm945_4e8c
	b	.Lm945_4f5c
.Lm945_4e9a:
	ldr	r1, =0x92c
	ldr	r2, =0x93d
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	ldr	r1, =0x917
	ldr	r2, =0x91f
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r1, #0x99
	lsl	r1, #4
	ldr	r2, =0x998
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x301
	bl	__ClearFlag
	ldr	r0, =0x302
	bl	__ClearFlag
	b	.Lm945_4f5c
.Lm945_4ed0:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r1, =gScript_945__0200e840
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	b	.Lm945_4f5c
.Lm945_4eea:
	mov	r0, #1
	bl	__DeleteFieldActor
	mov	r0, #2
	bl	__DeleteFieldActor
	mov	r0, #3
	bl	__DeleteFieldActor
	b	.Lm945_4f5c
.Lm945_4efe:
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	cmp	r7, #0
	beq	.Lm945_4f5c
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	b	.Lm945_4f5c
.Lm945_4f26:
	ldr	r0, =.Lm945_72a0
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	cmp	r7, #1
	bne	.Lm945_4f3a
	ldr	r0, =.Lm945_7300
	b	.Lm945_4f40
.Lm945_4f3a:
	cmp	r7, #2
	bne	.Lm945_4f4c
	ldr	r0, =.Lm945_7360
.Lm945_4f40:
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm945_4f5c
.Lm945_4f4c:
	cmp	r7, #3
	bne	.Lm945_4f5c
	ldr	r0, =.Lm945_73c0
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
.Lm945_4f5c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c8e8

.thumb_func_start OvlFunc_945_200cfa8
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #8
	cmp	r1, #0
	bne	.Lm945_4fb4
	mov	r7, #0x12
.Lm945_4fb4:
	cmp	r0, #1
	beq	.Lm945_4fca
	cmp	r0, #1
	bcc	.Lm945_4fc6
	cmp	r0, #2
	beq	.Lm945_4fce
	cmp	r0, #3
	beq	.Lm945_4fd6
	b	.Lm945_4fda
.Lm945_4fc6:
	ldr	r6, =0x92c
	b	.Lm945_4fda
.Lm945_4fca:
	ldr	r6, =0x935
	b	.Lm945_4fda
.Lm945_4fce:
	ldr	r6, =0x917
	b	.Lm945_4fda
.Lm945_4fd2:
	mov	r0, r7
	b	.Lm945_4ff2
.Lm945_4fd6:
	mov	r6, #0x99
	lsl	r6, #4
.Lm945_4fda:
	mov	r5, #0
.Lm945_4fdc:
	mov	r0, r6
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_4fd2
	add	r5, #1
	add	r6, #1
	add	r7, #1
	cmp	r5, #8
	bls	.Lm945_4fdc
	mov	r0, #0
.Lm945_4ff2:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200cfa8

