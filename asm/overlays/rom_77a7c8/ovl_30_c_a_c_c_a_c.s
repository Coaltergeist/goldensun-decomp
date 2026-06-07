	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20086ec
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0x63
	bne	.L716
	mov	r0, #0xb0
	lsl	r0, #1
	bl	__Func_8079358
	ldr	r0, =0x161
	bl	__Func_8079358
	ldr	r0, =0x163
	bl	__Func_8079358
	ldrh	r2, [r5]
.L716:
	lsl	r3, r2, #16
	asr	r3, #16
	cmp	r3, #0x5a
	bne	.L72e
	mov	r0, #0
	bl	OvlFunc_881_200b9fc
	ldr	r0, =0x3a
	mov	r1, #1
	bl	__Func_8091e3c
	b	.La2c
.L72e:
	cmp	r3, #0x5b
	bne	.L742
	mov	r0, #1
	bl	OvlFunc_881_200b9fc
	ldr	r0, =0xbb
	mov	r1, #0x5d
	bl	__Func_8091e3c
	b	.La2c
.L742:
	cmp	r3, #0x4e
	bne	.L758
	bl	__Func_80916b0
	mov	r0, #0xf2
	bl	__Func_8078a08
	mov	r0, #0x70
	bl	__Func_8091e9c
	b	.La2c
.L758:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_8079358
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x80
	lsl	r3, #3
	str	r3, [r2]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #9
	lsl	r0, #12
	bl	__Func_80933d4
	ldr	r0, =0x12f
	bl	__Func_8079374
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_881_2008598
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x90a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L7b4
	mov	r1, #0x80
	mov	r0, #0x80
	lsl	r1, #1
	mov	r2, #0xb0
	mov	r3, #0x38
	bl	__Func_8010d48
.L7b4:
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	sub	r3, #1
	cmp	r3, #0x4f
	bls	.L7c0
	b	.La18
.L7c0:
	ldr	r2, =.L7c8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L7c8:
	.word	.L908
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.L922
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.L980
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.L99a
	.word	.L9aa
	.word	.L9b0
	.word	.L9b6
	.word	.L9bc
	.word	.L9c2
	.word	.L9c8
	.word	.L9ce
	.word	.L9d4
	.word	.L9da
	.word	.L9e0
	.word	.La0c
	.word	.L9e0
	.word	.L9e0
	.word	.La18
	.word	.La18
	.word	.La12
.L908:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L914
	b	.La2c
.L914:
	ldr	r0, =0x815
	bl	__Func_8079358
	ldr	r0, =0x85c
	bl	__Func_8079358
	b	.La2c
.L922:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L966
	ldr	r0, =0x85d
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La2c
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La2c
	ldr	r5, =.L679c
	mov	r3, #0x37
	str	r3, [r5]
	mov	r0, #0x37
	ldr	r1, =0x17940000
	ldr	r2, =0xd480000
	bl	__Func_80923e4
	ldr	r0, [r5]
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, [r5]
	bl	OvlFunc_881_200a768
	b	.La2c
.L966:
	ldr	r0, =0x85d
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La2c
	ldr	r0, =0x9b8
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La2c
	bl	OvlFunc_881_200a4a8
	b	.La2c
.L980:
	ldr	r0, =0x94f
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La2c
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La2c
	bl	OvlFunc_881_2008a8c
	b	.La2c
.L99a:
	ldr	r0, =0x85a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La2c
	bl	OvlFunc_881_2008c28
	b	.La2c
.L9aa:
	bl	OvlFunc_881_20097fc
	b	.La2c
.L9b0:
	bl	OvlFunc_881_2009888
	b	.La2c
.L9b6:
	bl	OvlFunc_881_2009938
	b	.La2c
.L9bc:
	bl	OvlFunc_881_20099e8
	b	.La2c
.L9c2:
	bl	OvlFunc_881_2009a98
	b	.La2c
.L9c8:
	bl	OvlFunc_881_2009b5c
	b	.La2c
.L9ce:
	bl	OvlFunc_881_200a274
	b	.La2c
.L9d4:
	bl	OvlFunc_881_200b57c
	b	.La2c
.L9da:
	bl	OvlFunc_881_200b130
	b	.La2c
.L9e0:
	mov	r0, #0x8e
	lsl	r0, #1
	bl	__Func_8079358
	mov	r0, #0xbe
	lsl	r0, #2
	bl	__Func_80793b8
	cmp	r0, #0
	beq	.La2c
	ldr	r3, =ewram_2000240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r1, #0xc8
	strb	r3, [r2]
	ldr	r0, =OvlFunc_881_200b678
	lsl	r1, #4
	bl	__StartTask
	b	.La2c
.La0c:
	bl	OvlFunc_881_200b2f0
	b	.La2c
.La12:
	bl	OvlFunc_881_200acb4
	b	.La2c
.La18:
	mov	r0, #0x35
	bl	__MapActor_GetActor
	mov	r5, #0xa0
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0x35
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
.La2c:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_20086ec

.thumb_func_start OvlFunc_881_2008a8c
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	bl	__Func_808c44c
	ldr	r0, =0x94f
	bl	__Func_8079358
	mov	r1, #0xb7
	mov	r0, #0xb
	lsl	r1, #21
	ldr	r2, =0x49c0000
	bl	__Func_80923e4
	mov	r1, #0x18
	mov	r2, #8
	mov	r0, #0xb
	bl	__Func_809228c
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xb7
	mov	r0, #0xc
	lsl	r1, #21
	ldr	r2, =0x49c0000
	bl	__Func_80923e4
	mov	r1, #0xc
	mov	r2, #0x18
	mov	r0, #0xc
	bl	__Func_809228c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r2, #0x97
	ldr	r1, =0x16f80000
	lsl	r2, #19
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb48
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__Func_8092128
.Lb48:
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80923e4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb7e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_8092128
.Lb7e:
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_80923e4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lbb4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0
	bl	__Func_8092128
.Lbb4:
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x38
	mov	r2, #8
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #8
	bl	__Func_80923c4
	mov	r1, #0x28
	mov	r2, #0x28
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #8
	bl	__Func_80923c4
	mov	r1, #8
	mov	r2, #0x58
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #8
	bl	__Func_80923c4
	bl	__Func_8091df4
	mov	r0, #0x6c
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008a8c

.thumb_func_start OvlFunc_881_2008c28
	push	{r5, r6, lr}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__Func_80916b0
	mov	r0, #0xa0
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #4
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	bl	__Func_808c44c
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r2, #0xc5
	mov	r0, #0
	ldr	r1, =0x16fc
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xc5
	lsl	r2, #19
	ldr	r1, =0x16d80000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	ldr	r1, =0x19999
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0xc
	ldr	r1, =0x19999
	ldr	r2, =0x6666
	bl	__Func_8092064
	ldr	r2, =0x6666
	ldr	r1, =0x19999
	mov	r0, #0xd
	bl	__Func_8092064
	mov	r0, #0x8d
	bl	__Func_80f9080
	ldr	r1, =.L49e4
	mov	r0, #0xa
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L4b50
	mov	r0, #0xb
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L4c74
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L4d98
	mov	r0, #0xd
	bl	__Func_80920fc
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Ld36
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.Ld36:
	mov	r2, #0xc8
	mov	r0, #1
	ldr	r1, =0x1704
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0xc7
	ldr	r1, =0x16d80000
	lsl	r2, #19
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x1215
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x8d
	bl	__Func_80f9080
	ldr	r1, =.L4a78
	mov	r0, #0xa
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L4be4
	mov	r0, #0xb
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L4d08
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r1, =.L4e2c
	mov	r0, #0xd
	bl	__Func_80920fc
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_808c4c0
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #1
	mov	r2, #0xdf
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #19
	ldr	r0, =0x16080000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_808c44c
	mov	r2, #0xdb
	ldr	r1, =0x16080000
	lsl	r2, #19
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #9
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x1608
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x15f8
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xdf
	lsl	r2, #3
	ldr	r1, =0x15f8
	mov	r0, #9
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0xdf
	lsl	r2, #19
	ldr	r1, =0x16180000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xdf
	lsl	r2, #3
	ldr	r1, =0x1608
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	ldr	r0, =0x2008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0xa
	ldr	r0, =0x2008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	bl	__Func_808c4c0
	mov	r0, #0x6b
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_80933d4
	bl	OvlFunc_881_200955c
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	b	.L10c8

	.pool_aligned

.L10c8:
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xd9
	mov	r3, #1
	ldr	r0, =0x15e80000
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r2, #0xd5
	ldr	r1, =0x15a80000
	lsl	r2, #19
	mov	r0, #0xe
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r2, =0x2666
	mov	r0, #0xe
	ldr	r1, =0x4ccc
	bl	__Func_8092064
	ldr	r1, =.L4ebc
	mov	r0, #0xe
	bl	__Func_809207c
	mov	r0, #0xa0
	bl	__Func_809163c
	ldr	r3, =0x1999
	str	r3, [r6, #0x48]
	str	r3, [r6, #0x44]
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r5, r6
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #15
	ldr	r2, [r6, #0x50]
	str	r3, [r6, #0xc]
	mov	r3, #0xf0
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #2
	mov	r0, r6
	bl	__Func_800c300
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_881_20097a4
	lsl	r1, #4
	bl	__StartTask
.L117a:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L117a
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #11
	str	r5, [r0, #0x28]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0x28]
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_80933d4
	bl	OvlFunc_881_2009680
	bl	OvlFunc_881_2009680
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xdf
	mov	r3, #1
	lsl	r2, #19
	ldr	r0, =0x16080000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__Func_808c44c
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r0, =OvlFunc_881_20097a4
	bl	__StopTask
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_8092560
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x2008
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xdf
	mov	r0, #8
	ldr	r1, =0x1618
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x15f8
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x1608
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xdb
	mov	r0, #9
	ldr	r1, =0x1608
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x8d
	bl	__Func_80f9080
	ldr	r1, =.L4ac4
	mov	r0, #0xa
	bl	__Func_809207c
	ldr	r1, =.L4c30
	mov	r0, #0xb
	bl	__Func_809207c
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r1, =.L4d54
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r1, =.L4e78
	mov	r0, #0xd
	bl	__Func_80920fc
	bl	__Func_808c4c0
	mov	r2, #0xc5
	mov	r0, #0
	ldr	r1, =0x170c0000
	lsl	r2, #19
	bl	__Func_80923e4
	mov	r2, #0xc8
	lsl	r2, #19
	mov	r0, #1
	ldr	r1, =0x17140000
	bl	__Func_80923e4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc9
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x16d80000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r5, =.L4af4
	mov	r0, #0xa
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc1
	mov	r3, #1
	lsl	r2, #19
	ldr	r0, =0x16d80000
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, r5
	mov	r0, #0xb
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0xd
	bl	__Func_809207c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xd
	bl	__Func_80920e8
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc9
	mov	r3, #1
	ldr	r0, =0x16f80000
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1490
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L1490:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80923e4
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc9
	mov	r3, #1
	ldr	r0, =0x16d80000
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xc5
	ldr	r1, =0x16d8
	lsl	r2, #3
	mov	r0, #0
	bl	__Func_80921c4
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x85a
	bl	__Func_8079358
	mov	r0, #3
	bl	__Func_8091e9c
	b	.L1550

	.pool_aligned

.L1550:
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008c28

.thumb_func_start OvlFunc_881_200955c
	push	{lr}
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fc0000
	mov	r3, #1
	ldr	r0, =0x16040000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f40000
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fc0000
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f40000
	mov	r3, #1
	ldr	r0, =0x16040000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x16080000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fa0000
	mov	r3, #1
	ldr	r0, =0x16060000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f60000
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fa0000
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f60000
	mov	r3, #1
	ldr	r0, =0x16060000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	mov	r2, #0xdf
	ldr	r0, =0x16080000
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200955c

.thumb_func_start OvlFunc_881_2009680
	push	{lr}
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6cc0000
	mov	r3, #1
	ldr	r0, =0x15e40000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c40000
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6cc0000
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c40000
	mov	r3, #1
	ldr	r0, =0x15e40000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15e80000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6ca0000
	mov	r3, #1
	ldr	r0, =0x15e60000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c60000
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6ca0000
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c60000
	mov	r3, #1
	ldr	r0, =0x15e60000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	mov	r2, #0xd9
	ldr	r0, =0x15e80000
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #4
	bl	__Func_80030f8
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009680

.thumb_func_start OvlFunc_881_20097a4
	push	{r5, lr}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	ldr	r3, [r0, #0x10]
	mov	r2, #0xa0
	str	r3, [r5, #0x10]
	ldr	r3, [r5, #0xc]
	lsl	r2, #12
	cmp	r3, r2
	bge	.L17f6
	mov	r3, #0xa0
	lsl	r3, #12
	mov	r0, #0x80
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L17f6
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, r5
	mov	r1, #3
	bl	__Func_800c300
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	mov	r2, r5
	add	r2, #0x64
	mov	r3, #1
	strh	r3, [r2]
.L17f6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20097a4

.thumb_func_start OvlFunc_881_20097fc
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_80923e4
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809335c
	bl	__Func_8091dc8
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	ldr	r1, =0x14a8
	ldr	r2, =0x918
	mov	r0, #8
	bl	__Func_80921c4
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x927
	bl	__Func_8079358
	mov	r0, #0x66
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20097fc

.thumb_func_start OvlFunc_881_2009888
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809335c
	bl	__Func_8091dc8
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	ldr	r1, =.L5158
	mov	r0, #8
	bl	__Func_809207c
.L18f6:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L18f6
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x927
	bl	__Func_8079358
	mov	r0, #0x67
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009888

.thumb_func_start OvlFunc_881_2009938
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809335c
	bl	__Func_8091dc8
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	ldr	r1, =.L5158
	mov	r0, #8
	bl	__Func_809207c
.L19a6:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L19a6
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x927
	bl	__Func_8079358
	mov	r0, #0x68
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009938

.thumb_func_start OvlFunc_881_20099e8
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809335c
	bl	__Func_8091dc8
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	ldr	r1, =.L5158
	mov	r0, #8
	bl	__Func_809207c
.L1a56:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L1a56
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x927
	bl	__Func_8079358
	mov	r0, #0x69
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20099e8

.thumb_func_start OvlFunc_881_2009a98
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809335c
	bl	__Func_8091dc8
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	bl	OvlFunc_881_200b41c
	cmp	r0, #0xb
	bne	.L1b10
	ldr	r1, =.L51b8
	mov	r0, #8
	bl	__Func_809207c
	b	.L1b18
.L1b10:
	ldr	r1, =.L5158
	mov	r0, #8
	bl	__Func_809207c
.L1b18:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L1b18
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x927
	bl	__Func_8079358
	mov	r0, #0x6a
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009a98

.thumb_func_start OvlFunc_881_2009b5c
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r2, =0x9180000
	ldr	r1, =0x13e80000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809335c
	bl	__Func_8091dc8
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	ldr	r1, =0x13c8
	ldr	r2, =0x918
	mov	r0, #8
	bl	__Func_80921c4
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x93e
	bl	__Func_8079358
	ldr	r0, =0x927
	bl	__Func_8079374
	mov	r0, #0x6b
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009b5c

.thumb_func_start OvlFunc_881_2009c08
	push	{lr}
	bl	__Func_808c4c0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #6
	bl	__Func_80936a0
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0xc66
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x6f
	bl	__Func_80f9080
	mov	r1, #2
	mov	r0, #0
	bl	__Func_802899c
	ldr	r0, =0x16f
	bl	__Func_8079374
	ldr	r0, =0x171
	bl	__Func_8079374
	bl	__Func_80aa56c
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092560
	ldr	r0, =0xc67
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	ldr	r0, =0x16f
	bl	__Func_8079374
	ldr	r0, =0x171
	bl	__Func_8079358
	bl	__Func_80aa56c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #6
	bl	__Func_8091eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009c08

.thumb_func_start OvlFunc_881_2009ca4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0xea300000
	ldr	r3, [r0, #8]
	add	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	ldr	r2, =0x15d00000
	asr	r3, #1
	mov	r11, r2
	add	r3, r11
	mov	r9, r3
	ldr	r1, =0xfad00000
	ldr	r3, [r0, #0x10]
	add	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	mov	r7, #0xa6
	asr	r3, #1
	lsl	r7, #19
	mov	r0, #0xb7
	add	r3, r7
	lsl	r0, #1
	mov	r5, #0
	mov	r10, r3
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1cf8
	b	.L2080
.L1cf8:
	mov	r0, #1
	bl	__Func_807808c
	mov	r0, #0xb7
	lsl	r0, #1
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1d1e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__Func_80923e4
.L1d1e:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_807a1b4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_807a458
	bl	__Func_808c44c
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, r6
	mov	r3, #1
	add	r2, #0x66
	strh	r3, [r2]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x10
	bl	__Func_80030f8
	ldr	r0, =0xc4f
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_808c4c0
	ldr	r0, =0x13333
	mov	r1, #6
	bl	__Func_80936a0
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r2, #0x55
	add	r2, r6
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x48]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	str	r5, [r6, #0x28]
	str	r5, [r6, #0x14]
	mov	r3, r7
	mov	r8, r2
	mov	r0, r6
	mov	r1, r11
	mov	r2, #0
	bl	__Func_800d14c
	mov	r7, #0x80
	lsl	r7, #4
	mov	r5, #0xf
.L1db8:
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_80030f8
	cmp	r5, #0
	bge	.L1db8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x10
	bl	__Func_80030f8
	mov	r3, #0
	str	r3, [r6, #0x6c]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_800c598
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x48]
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x83
	bl	__Func_80f9080
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_8096fb0
	ldr	r7, =iwram_3001e40
	mov	r5, #0x3b
.L1e16:
	ldr	r3, [r7]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1e48
	mov	r0, r6
	mov	r1, #7
	bl	__Func_800c598
	b	.L1e50

	.pool_aligned

.L1e48:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_800c598
.L1e50:
	ldr	r3, [r7]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L1e60
	mov	r0, r6
	bl	OvlFunc_881_200c058
.L1e60:
	mov	r0, #1
	sub	r5, #1
	bl	__Func_80030f8
	cmp	r5, #0
	bge	.L1e16
	bl	__Func_8097194
	mov	r0, r6
	mov	r1, #0
	bl	__Func_800c598
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__Func_80937b8
	mov	r3, r9
	asr	r1, r3, #16
	mov	r3, r10
	asr	r2, r3, #16
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_80924d4
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #0x96
	lsl	r0, #1
	mov	r1, #4
	bl	__Func_8019908
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r5, #0
	mov	r1, r8
	mov	r2, #0x80
	strb	r5, [r1]
	mov	r0, r6
	mov	r1, r9
	lsl	r2, #13
	mov	r3, r10
	bl	__Func_800d14c
	ldr	r7, .L1f6c	@ 0x1000
	mov	r5, #0xf
.L1f38:
	ldrh	r3, [r6, #6]
	add	r3, r7
	strh	r3, [r6, #6]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_80030f8
	cmp	r5, #0
	bge	.L1f38
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r2, #0
	mov	r3, #2
	mov	r1, r8
	strb	r3, [r1]
	ldr	r7, .L1f6c	@ 0x1000
	str	r2, [r6, #0x28]
	str	r2, [r6, #0x14]
	b	.L1f74

	.align	2, 0
.L1f6c:
	.word	0x1000
	.pool

.L1f74:
	mov	r5, #7
.L1f76:
	ldrh	r3, [r6, #6]
	add	r3, r7
	strh	r3, [r6, #6]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_80030f8
	cmp	r5, #0
	bge	.L1f76
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_80924d4
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_80937b8
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x1e
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
	mov	r5, #0
.L1fd2:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L201a
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	cmp	r5, #6
	bne	.L2006
	ldr	r0, =0xc62
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	b	.L2044
.L2006:
	ldr	r0, =0xc5c
	add	r0, r5, r0
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
	add	r5, #1
	b	.L1fd2
.L201a:
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_80924d4
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r1, #4
	mov	r0, #8
	mov	r2, #0x14
	bl	__Func_8092560
	ldr	r0, =0xc63
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
.L2044:
	mov	r0, #0x96
	mov	r1, #4
	lsl	r0, #1
	bl	__Func_8019908
	mov	r0, #0x51
	bl	__Func_80f9080
	ldr	r5, =0xc64
	mov	r1, #3
	mov	r0, r5
	add	r5, #1
	bl	__Func_801776c
	mov	r0, r5
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092560
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #9
	bl	__Func_80f9080
	b	.L21a6
.L2080:
	bl	__Func_80916b0
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2098
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__Func_80923e4
.L2098:
	mov	r3, #0xa0
	lsl	r3, #12
	mov	r1, r9
	mov	r2, #0
	str	r3, [r6, #0x28]
	mov	r0, r6
	mov	r3, r10
	bl	__Func_800d14c
	mov	r0, #0x1e
	bl	__Func_809163c
	bl	__Func_808c44c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #8
	bl	__Func_809280c
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r0, =0xc68
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x6f
	bl	__Func_80f9080
	mov	r1, #2
	mov	r0, #0
	bl	__Func_802899c
	ldr	r0, =0x16f
	bl	__Func_8079358
	ldr	r0, =0x171
	bl	__Func_8079374
	bl	__Func_80aa56c
	ldr	r0, =0xc6a
	bl	__Func_8092b94
	mov	r3, r7
	mov	r2, #0
	mov	r1, r11
	mov	r0, r6
	bl	__Func_800d14c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L21b0
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_80924d4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0xc6d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	beq	.L21b0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r3, r10
	mov	r2, r9
	asr	r1, r2, #16
	mov	r0, #8
	asr	r2, r3, #16
	bl	__Func_80921c4
.L21a6:
	bl	OvlFunc_881_2009c08
	bl	__Func_808c4c0
	b	.L223c
.L21b0:
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r0, =0xc6f
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092560
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	ldr	r0, =0x16f
	bl	__Func_8079358
	ldr	r0, =0x171
	bl	__Func_8079358
	bl	__Func_80aa56c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_808c4c0
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_80955b0
	mov	r0, #0x2a
	bl	__Func_80f9080
	bl	__Func_8091750
	mov	r0, #0xb7
	lsl	r0, #1
	bl	__Func_8079374
	ldr	r0, =0x16f
	bl	__Func_8079374
	ldr	r0, =0x171
	bl	__Func_8079374
.L223c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009ca4

.thumb_func_start OvlFunc_881_200a274
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r5, #6]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =0x15680000
	ldr	r2, =0x8380000
	mov	r0, #0xa
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x8d
	bl	__Func_80f9080
	ldr	r2, =0x6666
	mov	r0, #0xa
	ldr	r1, =0x19999
	bl	__Func_8092064
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
	ldr	r2, =0x858
	mov	r0, #0xa
	ldr	r1, =0x156d
	bl	__Func_8092158
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x15b80000
	neg	r1, r1
	ldr	r2, =0x8580000
	bl	__Func_80933f8
	mov	r0, #0xa
	ldr	r1, =0x159e
	ldr	r2, =0x858
	bl	__Func_8092158
	mov	r0, #0xa
	ldr	r1, =0x15a8
	ldr	r2, =0x86e
	bl	__Func_8092158
	ldr	r2, =0x878
	mov	r0, #0xa
	ldr	r1, =0x15e8
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80924d4
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =0x15d80000
	ldr	r2, =0x8780000
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0
	ldr	r1, =0x15c8
	ldr	r2, =0x878
	bl	__Func_80921c4
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xa
	ldr	r1, =0x15f8
	ldr	r2, =0x878
	bl	__Func_8092158
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x15f8
	ldr	r2, =0x838
	bl	__Func_8092158
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x15bd
	ldr	r2, =0x838
	bl	__Func_8092158
	mov	r0, #0xa
	ldr	r1, =0x15b8
	ldr	r2, =0x853
	bl	__Func_8092158
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x1572
	ldr	r2, =0x858
	bl	__Func_8092158
	mov	r0, #0xa
	ldr	r1, =0x1568
	ldr	r2, =0x838
	bl	__Func_8092158
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_80923e4
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x15d80000
	neg	r1, r1
	ldr	r2, =0x8580000
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	ldr	r1, =0x15d8
	ldr	r2, =0x858
	mov	r0, #0
	bl	__Func_80921c4
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a274

.thumb_func_start OvlFunc_881_200a4a8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__Func_80916b0
	ldr	r6, =.L679c
	mov	r3, #0x37
	str	r3, [r6]
	mov	r0, #0x37
	bl	OvlFunc_881_200a768
	bl	__Func_8091dc8
	bl	__Func_8091e20
	bl	__Func_808c44c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, r0
	cmp	r3, #0
	beq	.L24e0
	ldr	r0, [r6]
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #0x10]
	bl	__Func_80923e4
.L24e0:
	ldr	r0, [r6]
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	ldr	r0, [r6]
	ldr	r1, =0x1768
	ldr	r2, =0xd78
	bl	__Func_80921c4
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__Func_80937b8
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x263c
	bl	__Func_8092b94
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	bl	__Func_808c4c0
	ldr	r0, =0x16666
	mov	r1, #0xa
	bl	__Func_80936a0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #9
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r2, =0xd680000
	neg	r1, r1
	ldr	r0, =0x17880000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	bl	__Func_808c44c
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	mov	r5, #0xc0
	ldr	r0, [r6]
	lsl	r5, #6
	orr	r0, r5
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	ldr	r0, [r6]
	ldr	r1, =0x1768
	ldr	r2, =0xd48
	bl	__Func_80921c4
	ldr	r0, [r6]
	ldr	r1, =0x1794
	ldr	r2, =0xd48
	bl	__Func_80921c4
	ldr	r0, [r6]
	mov	r1, r5
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__Func_8092064
	ldr	r1, =.L4f20
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	b	.L25de
.L25d8:
	mov	r0, #1
	bl	__Func_80030f8
.L25de:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L25d8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r6, =.L679c
	mov	r1, #0x83
	ldr	r0, [r6]
	mov	r2, #0
	lsl	r1, #1
	bl	__Func_80937b8
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	ldr	r0, [r6]
	mov	r2, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x178c
	ldr	r2, =0xd48
	ldr	r0, [r6]
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r2, #1
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x1794
	ldr	r2, =0xd48
	ldr	r0, [r6]
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r2, r3
	strb	r2, [r0]
	mov	r1, #3
	mov	r0, #0xf2
	mov	r8, r2
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xf2
	bl	__Func_8091a58
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2642
	bl	__Func_8092b94
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0
	ldr	r0, [r6]
	lsl	r1, #6
	bl	__Func_8092adc
	bl	__Func_808c4c0
	mov	r0, #0x80
	mov	r1, #0xa
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x9bf
	bl	__Func_8079358
	ldr	r1, =ewram_2000240
	mov	r0, #0xe2
	ldr	r2, =2
	lsl	r0, #1
	add	r3, r1, r0
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x4e
	strh	r3, [r2]
	bl	__Func_8091750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a4a8

.thumb_func_start OvlFunc_881_200a768
	push	{r5, r6, r7, lr}
	ldr	r4, =.L63f4
	mov	r3, #1
	neg	r3, r3
	ldr	r6, =OvlFunc_881_200a858
	mov	r0, r4
	mov	r7, #2
	mov	r12, r4
	mov	r1, #4
	mov	r2, #0
	mov	r14, r3
.L277e:
	ldr	r3, [r2, r4]
	cmp	r3, #1
	bne	.L2792
	ldrsh	r3, [r0, r1]
	cmp	r3, #0x8a
	bne	.L2792
	add	r3, r1, #4
	str	r7, [r0, r2]
	str	r6, [r0, r3]
	mov	r0, r12
.L2792:
	ldr	r3, [r2, r4]
	cmp	r3, r14
	beq	.L279e
	add	r1, #0xc
	add	r2, #0xc
	b	.L277e
.L279e:
	ldr	r0, =.L5b84
	mov	r6, #0xc0
	mov	r2, r0
	ldr	r4, =0x17940000
	ldr	r5, =0xd480000
	lsl	r6, #6
	add	r2, #8
	mov	r1, #0
.L27ae:
	ldrsh	r3, [r1, r0]
	cmp	r3, #0x39
	bne	.L27c0
	str	r4, [r2]
	str	r5, [r2, #8]
	strh	r6, [r2, #0xc]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.L27c0:
	add	r2, #0x18
	add	r1, #0x18
	b	.L27ae
.func_end OvlFunc_881_200a768

.thumb_func_start OvlFunc_881_200a7dc
	push	{r5, r6, r7, lr}
	ldr	r0, =.L63f4
	mov	r3, #0x21
	mov	r4, #1
	mov	r7, r0
	mov	r6, #1
	add	r1, r0, #4
	mov	r2, #0
	mov	r12, r3
	neg	r4, r4
.L27f0:
	ldr	r3, [r2, r0]
	cmp	r3, #2
	bne	.L2806
	mov	r5, #0
	ldrsh	r3, [r1, r5]
	cmp	r3, #0x8a
	bne	.L2806
	mov	r3, r12
	str	r6, [r2, r7]
	str	r3, [r1, #4]
	b	.L2812
.L2806:
	ldr	r3, [r2, r0]
	cmp	r3, r4
	beq	.L2812
	add	r1, #0xc
	add	r2, #0xc
	b	.L27f0
.L2812:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a7dc

.thumb_func_start OvlFunc_881_200a81c
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x37
	bl	__Func_809280c
	ldr	r0, =0x2642
	bl	__Func_8092b94
	ldr	r3, =.L679c
	mov	r1, #0
	ldr	r0, [r3]
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r0, #0x37
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a81c

.thumb_func_start OvlFunc_881_200a858
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_808c44c
	ldr	r0, =0x2643
	bl	__Func_8092b94
	ldr	r3, =.L679c
	mov	r1, #0
	ldr	r0, [r3]
	bl	__Func_8092f84
	bl	__Func_808c4c0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0
	ldr	r1, =0x1778
	ldr	r2, =0xd48
	bl	__Func_80921c4
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a858

.thumb_func_start OvlFunc_881_200a8a8
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_808c44c
	ldr	r0, =0x264c
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L28d4
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.L28d4:
	bl	__Func_808c4c0
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a8a8

.thumb_func_start OvlFunc_881_200a8e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	bl	__Func_808c4c0
	ldr	r0, =0x16666
	mov	r1, #6
	bl	__Func_80936a0
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x17880000
	neg	r1, r1
	ldr	r2, =0xd680000
	bl	__Func_80933f8
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r3, r5
	add	r3, #0x5b
	mov	r7, #0
	strb	r7, [r3]
	mov	r0, r5
	bl	__Func_800c4ac
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xd680000
	cmp	r3, r2
	ble	.L2964
	ldr	r3, [r5, #8]
	ldr	r1, =0x176e0000
	cmp	r3, r1
	ble	.L297c
	mov	r0, r5
	ldr	r2, [r5, #0xc]
	ldr	r3, =0xd7d0000
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	b	.L297c
.L2964:
	ldr	r3, [r5, #8]
	ldr	r1, =0x177a0000
	cmp	r3, r1
	ble	.L297c
	mov	r0, r5
	ldr	r2, [r7, #0xc]
	ldr	r3, =0xd480000
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
.L297c:
	ldr	r3, =0xd680000
	mov	r2, #0
	ldr	r1, =0x17690000
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	bl	__Func_808c44c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0x1c
	bl	__Func_80924d4
	ldr	r1, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, #0x98
	add	r1, r3
	mov	r0, #0x16
	ldr	r3, [r5, #0x10]
	lsl	r2, #14
	bl	__Func_800c150
	mov	r7, r0
	cmp	r7, #0
	beq	.L2a30
	mov	r1, #0
	add	r0, #0x55
	strb	r1, [r0]
	ldr	r6, [r7, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r1, [r3]
	add	r3, #1
	strb	r1, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, #0xf2
	bl	__Func_801a370
	mov	r2, #0x80
	lsl	r2, #3
	add	r5, r2
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =OvlFunc_881_200813c
	mov	r0, #0x50
	str	r3, [r7, #0x6c]
	bl	__Func_809163c
.L2a30:
	ldr	r6, =.L679c
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #0x80
	mov	r2, #0
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	ldr	r0, [r6]
	bl	__Func_80925cc
	ldr	r3, =0x2644
	mov	r10, r3
	mov	r0, r10
	bl	__Func_8092b94
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8093040
	cmp	r7, #0
	beq	.L2a74
	mov	r0, r7
	bl	__Func_800c0f4
.L2a74:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, [r6]
	mov	r1, #6
	mov	r2, #0x28
	bl	__Func_8092560
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	ldr	r0, [r6]
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r5, #0x90
	ldr	r0, [r6]
	lsl	r5, #8
	mov	r2, #0x28
	orr	r0, r5
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, [r6]
	mov	r1, #4
	bl	__Func_8092548
	ldr	r0, [r6]
	mov	r1, #0
	orr	r0, r5
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, [r6]
	mov	r1, r8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	ldr	r2, =0x6666
	ldr	r0, [r6]
	ldr	r1, =0xcccc
	bl	__Func_8092064
	mov	r1, #2
	ldr	r0, [r6]
	bl	__Func_80924d4
	mov	r0, #0x37
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r2, [r7, #0xc]
	ldr	r1, =0x177a0000
	ldr	r3, =0xd480000
	bl	__Func_800d14c
	mov	r0, r7
	bl	__Func_800ca6c
	ldr	r3, =0xd580000
	mov	r2, #0
	ldr	r1, =0x17710000
	mov	r0, r7
	bl	__Func_800d14c
	mov	r0, r7
	bl	__Func_800ca6c
	mov	r0, #0x37
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xa0
	mov	r2, #0xa
	ldr	r0, [r6]
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	ldr	r0, [r6]
	bl	__Func_8092064
	mov	r0, #0x37
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x37
	bl	__Func_80924d4
	mov	r3, #0xd6
	mov	r2, #0
	lsl	r3, #20
	ldr	r1, =0x176d0000
	mov	r0, r7
	bl	__Func_800d14c
	mov	r0, r7
	bl	__Func_800ca6c
	mov	r1, #1
	mov	r0, #0x37
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x37
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0
	ldr	r3, =0xd580000
	ldr	r1, =0x17710000
	mov	r0, r7
	bl	__Func_800d14c
	mov	r0, r7
	bl	__Func_800ca6c
	mov	r0, #0x37
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r10
	mov	r1, #1
	add	r0, #6
	bl	__Func_801776c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xf2
	bl	__Func_8078a08
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, [r6]
	mov	r1, #4
	bl	__Func_80924d4
	mov	r2, #0xa
	ldr	r0, [r6]
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, [r6]
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2c20
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	ldr	r0, [r6]
	bl	__Func_8092128
.L2c20:
	ldr	r0, [r6]
	bl	__Func_80923c4
	mov	r2, #0
	ldr	r0, [r6]
	mov	r1, #0
	bl	__Func_80923e4
	bl	__Func_808c4c0
	mov	r0, #0x80
	mov	r1, #6
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #0x14
	bl	__Func_809163c
	bl	OvlFunc_881_200a7dc
	ldr	r0, [r6]
	bl	__Func_8092924
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x85d
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a8e8

.thumb_func_start OvlFunc_881_200acb4
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	ldr	r1, =0x205
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	sub	sp, #0x1c
	bl	__Func_801ccc0
	bl	__Func_80916b0
	mov	r0, #0x80
	mov	r1, #0x96
	lsl	r0, #9
	lsl	r1, #1
	bl	__Func_80936a0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r0, r0
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, #5
	mov	r1, #0x13
	bl	__Func_80924d4
	mov	r0, #8
	mov	r1, #5
	bl	__Func_80924d4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xc0
	lsl	r0, #9
	mov	r1, #0x10
	bl	__Func_80936a0
	ldr	r5, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r5]
	lsl	r1, #1
	mov	r2, #0x80
	add	r3, r1
	lsl	r2, #1
	mov	r1, #1
	ldr	r0, =0x10003
	str	r2, [r3]
	bl	__Func_8091200
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x2913
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #5
	ldr	r1, =0x107
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x64
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r2, #0x78
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_8093040
	mov	r0, #9
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r0, #9
	ldr	r1, =0x1ddc0000
	ldr	r2, =0xd840000
	bl	__Func_80923e4
	mov	r0, #9
	ldr	r1, =0x1d94
	ldr	r2, =0xd8c
	bl	__Func_80921c4
	mov	r2, #0xda
	ldr	r1, =0x1d88
	lsl	r2, #4
	mov	r0, #9
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x6009
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #5
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0
	ldr	r0, =0x6009
	bl	__Func_8092f84
	bl	__Func_801173c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L4f7c
	mov	r0, #9
	bl	__Func_809207c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0x3c
	bl	__Func_8092560
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	ldr	r2, =0x4ccc
	mov	r0, #5
	ldr	r1, =0x9999
	bl	__Func_8092064
	ldr	r1, =.L501c
	mov	r0, #8
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0xb333
	ldr	r1, =0x1666
	bl	__Func_80933d4
	mov	r1, #1
	ldr	r0, =0x1e380000
	neg	r1, r1
	ldr	r2, =0xdc80000
	mov	r3, #1
	bl	__Func_80933f8
	ldr	r1, =.L50a8
	mov	r0, #5
	bl	__Func_809207c
.L2f4a:
	mov	r0, #0xa
	mov	r1, #6
	bl	__Func_80924d4
	mov	r1, #8
	mov	r0, #6
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #5
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	beq	.L2f4a
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #5
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	bl	__Func_808c44c
	mov	r3, #4
	mov	r2, #0xc
	mov	r1, #8
	mov	r0, #9
	mov	r4, #3
	str	r2, [sp]
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x10]
	mov	r2, #0xd
	mov	r3, #2
	mov	r1, #7
	mov	r5, #0
	mov	r0, #5
	str	r4, [sp, #0x14]
	str	r5, [sp, #0x18]
	bl	__Func_80931ec
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_801173c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1e580000
	neg	r1, r1
	ldr	r2, =0xdc80000
	bl	__Func_80933f8
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #5
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #8
	ldr	r1, =0x1e7c
	ldr	r2, =0xdb8
	bl	__Func_809218c
	ldr	r2, =0xdd8
	mov	r0, #5
	ldr	r1, =0x1e6c
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80924d4
	bl	__Func_808c44c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x3c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093040
	bl	__Func_801173c
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__Func_80030f8
	ldr	r0, =0
	mov	r1, #0xa
	bl	__Func_8091e3c
	add	sp, #0x1c
	b	.L3128

	.pool_aligned

.L3128:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200acb4

.thumb_func_start OvlFunc_881_200b130
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #2
	bl	__Func_80030f8
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_881_200b1fc
	bl	__StartTask
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091220
	ldr	r0, =0x10004
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0xf0
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x5a
	bl	__Func_80030f8
	mov	r0, #0x6d
	bl	__Func_8091e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b130

.thumb_func_start OvlFunc_881_200b1fc
	push	{r5, r6, lr}
	bl	__Random
	lsl	r5, r0, #2
	add	r5, r0
	bl	__Random
	lsl	r5, #3
	lsl	r3, r0, #4
	sub	r3, r0
	ldr	r2, =0x17b00000
	lsr	r5, #16
	lsl	r3, #1
	lsl	r5, #16
	add	r5, r2
	lsr	r3, #16
	ldr	r2, =0xc4c0000
	lsl	r3, #16
	add	r3, r2
	mov	r0, #0xde
	mov	r1, r5
	mov	r2, #0
	bl	__Func_800c150
	mov	r6, r0
	cmp	r6, #0
	beq	.L3270
	ldr	r5, [r6, #0x50]
	bl	__Random
	ldr	r3, =0x13333
	lsl	r0, #15
	lsr	r0, #16
	add	r0, r3
	mov	r3, r5
	mov	r1, #0
	add	r3, #0x26
	strb	r1, [r3]
	mov	r3, #0xd
	ldrb	r2, [r5, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r5, #9]
	mov	r3, r6
	add	r3, #0x55
	strb	r1, [r3]
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	mov	r1, #1
	mov	r0, r6
	bl	__Func_800c300
	ldr	r1, =.L514c
	mov	r0, r6
	bl	__Func_800c2d8
.L3270:
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_Func_8000b50
	cmp	r0, #0
	bne	.L32c6
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #1
	beq	.L329e
	cmp	r0, #1
	bcc	.L3298
	cmp	r0, #2
	beq	.L32a8
	cmp	r0, #3
	beq	.L32b8
	b	.L32c6
.L3298:
	mov	r1, #1
	ldr	r0, =0x17c70000
	b	.L32ac
.L329e:
	mov	r1, #1
	ldr	r0, =0x17c90000
	neg	r1, r1
	ldr	r2, =0xc670000
	b	.L32b0
.L32a8:
	mov	r1, #1
	ldr	r0, =0x17c90000
.L32ac:
	neg	r1, r1
	ldr	r2, =0xc690000
.L32b0:
	mov	r3, #1
	bl	__Func_80933f8
	b	.L32c6
.L32b8:
	mov	r1, #1
	ldr	r0, =0x17c70000
	neg	r1, r1
	ldr	r2, =0xc670000
	mov	r3, #1
	bl	__Func_80933f8
.L32c6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b1fc

.thumb_func_start OvlFunc_881_200b2f0
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0xca
	lsl	r2, #18
	ldr	r1, =0x13080000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x13333
	mov	r1, #1
	bl	__Func_80936a0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_80923e4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_809335c
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_8091dc8
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r2, #0xb2
	mov	r0, #8
	ldr	r1, =0x12d8
	lsl	r2, #2
	bl	__Func_8092158
	mov	r2, #0x9a
	mov	r0, #8
	ldr	r1, =0x12a8
	lsl	r2, #2
	bl	__Func_8092158
	mov	r0, #8
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r2, #0xec
	mov	r0, #8
	ldr	r1, =0x12a8
	lsl	r2, #1
	bl	__Func_8092158
	mov	r0, #8
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r2, #0xe4
	mov	r0, #8
	ldr	r1, =0x1298
	lsl	r2, #1
	bl	__Func_8092158
	mov	r0, #8
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r2, #0xdc
	lsl	r2, #1
	mov	r0, #8
	ldr	r1, =0x1298
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x6e
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b2f0

.thumb_func_start OvlFunc_881_200b41c
	push	{r5, r6, lr}
	mov	r0, #0
	bl	OvlFunc_881_200b448
	mov	r6, r0
	mov	r0, #2
	bl	OvlFunc_881_200b448
	add	r6, r0
	mov	r0, #1
	bl	OvlFunc_881_200b448
	mov	r5, r0
	mov	r0, #3
	bl	OvlFunc_881_200b448
	add	r5, r0
	sub	r6, r5
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_200b41c

.thumb_func_start OvlFunc_881_200b448
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.L3462
	cmp	r0, #1
	bcc	.L345e
	cmp	r0, #2
	beq	.L3466
	cmp	r0, #3
	beq	.L3472
	b	.L3476
.L345e:
	ldr	r6, =0x92c
	b	.L3476
.L3462:
	ldr	r6, =0x935
	b	.L3476
.L3466:
	ldr	r6, =0x917
	b	.L3476
.L346a:
	ldr	r3, =.L6718
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.L348a
.L3472:
	mov	r6, #0x99
	lsl	r6, #4
.L3476:
	mov	r5, #0
.L3478:
	add	r0, r6, r5
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L346a
	add	r5, #1
	cmp	r5, #8
	bls	.L3478
	mov	r0, #0
.L348a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_200b448

.thumb_func_start OvlFunc_881_200b4a0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L3566
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #8]
	ldr	r0, =0xffe00000
	ldr	r3, [r6, #0x10]
	add	r1, r0
	ldr	r0, =0xfff00000
	ldr	r2, [r6, #0xc]
	add	r3, r0
	mov	r0, #0xde
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L3566
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r7, [r5, #0x50]
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	cmp	r0, #0
	beq	.L3502
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsl	r2, #4
	lsr	r2, #16
	lsl	r2, #16
	ldr	r3, [r5, #8]
	asr	r1, r2, #1
	sub	r3, r1
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	sub	r3, r2
	b	.L3518
.L3502:
	bl	__Random
	lsl	r0, #5
	ldr	r3, [r5, #8]
	lsr	r0, #16
	lsl	r0, #16
	add	r3, r0
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r0, #1
	add	r3, r0
.L3518:
	str	r3, [r5, #0x10]
	mov	r2, r7
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	ldrb	r1, [r7, #9]
	and	r2, r3
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	mov	r1, r5
	add	r1, #0x23
	orr	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r7, #9]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, r6
	add	r3, #0x55
	ldrb	r3, [r3]
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #9
	bl	__Func_80929d8
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	ldr	r1, =.L673c
	mov	r0, r5
	bl	__Func_800c2d8
.L3566:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b4a0

.thumb_func_start OvlFunc_881_200b57c
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x3c
	bl	__Func_809163c
	bl	__Func_80916b0
	ldr	r0, =0x9999
	mov	r1, #1
	bl	__Func_80936a0
	ldr	r3, =0x13333
	mov	r1, #1
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #8
	bl	__Func_809335c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	ldr	r2, =0x3333
	mov	r0, #8
	ldr	r1, =0x6666
	bl	__Func_8092064
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	ldr	r1, =.L5218
	mov	r0, #8
	bl	__Func_809207c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_881_200b4a0
	bl	__StartTask
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	mov	r1, #1
	str	r2, [r3]
	ldr	r0, =0x10003
	bl	__Func_8091200
	mov	r6, #0xe4
	ldr	r2, [r5]
	mov	r3, #0x20
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__Func_8091dc8
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #0x96
	lsl	r1, #1
	ldr	r0, =0x16666
	bl	__Func_80936a0
	mov	r0, #0x87
	lsl	r0, #1
	bl	__Func_809163c
	ldr	r2, [r5]
	mov	r3, #0x10
	str	r3, [r2, r6]
	ldr	r3, .L3648	@ 0x7fff
	mov	r2, #0xa0
	lsl	r2, #19
	strh	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x6f
	bl	__Func_8091e9c
	b	.L3670

	.align	2, 0
.L3648:
	.word	0x7fff
	.pool

.L3670:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b57c

.thumb_func_start OvlFunc_881_200b678
	push	{r5, r6, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	lsl	r3, #12
	strh	r3, [r0, #6]
	mov	r0, #0xbe
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r5, r0
	cmp	r5, #0
	beq	.L36c0
	cmp	r5, #1
	bne	.L36b2
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x63
	strh	r3, [r2]
	b	.L36c0
.L36b2:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L36c0
	sub	r5, #1
.L36c0:
	mov	r0, #0xbe
	lsl	r0, #2
	mov	r1, r5
	bl	__Func_80793c8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b678

.thumb_func_start OvlFunc_881_200b6dc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =ewram_2000240
	mov	r3, #0xfa
	mov	r10, r2
	lsl	r3, #1
	add	r3, r10
	ldr	r6, [r3]
	mov	r7, r0
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xbc
	lsl	r0, #2
	bl	__Func_8079338
	mov	r8, r0
	cmp	r0, #0
	bne	.L37a0
	bl	__Func_80916b0
	mov	r0, r6
	ldr	r1, =0x101
	bl	__Func_8093874
	mov	r0, r6
	mov	r1, #9
	bl	__Func_80924d4
	mov	r0, r7
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3734
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__Func_8092128
.L3734:
	mov	r0, r6
	bl	__Func_80923c4
	mov	r0, #0xf4
	bl	__Func_80f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_881_200b678
	mov	r7, r5
	bl	__StartTask
	add	r7, #0x55
	mov	r2, r8
	strb	r2, [r7]
	mov	r3, #0x80
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	ldr	r1, [r5, #8]
	add	r2, r3
	mov	r0, r5
	ldr	r3, [r5, #0x10]
	bl	__Func_800d14c
	mov	r0, r6
	bl	__Func_80923c4
	mov	r2, r8
	str	r2, [r5, #0x28]
	mov	r2, #0xf9
	mov	r3, #4
	lsl	r2, #1
	add	r2, r10
	strb	r3, [r7]
	mov	r0, #0xbc
	mov	r3, #2
	strb	r3, [r2]
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, #0xbe
	lsl	r0, #2
	mov	r1, #0xb4
	bl	__Func_80793c8
	bl	__Func_8091750
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xbe
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, r8
	strh	r2, [r3]
.L37a0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b6dc

