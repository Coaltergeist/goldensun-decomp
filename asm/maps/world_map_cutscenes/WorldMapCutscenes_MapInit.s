	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start WorldMapCutscenes_MapInit
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0x63
	bne	.Lm881_716
	mov	r0, #0xb0
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =0x161
	bl	__SetFlag
	ldr	r0, =0x163
	bl	__SetFlag
	ldrh	r2, [r5]
.Lm881_716:
	lsl	r3, r2, #16
	asr	r3, #16
	cmp	r3, #0x5a
	bne	.Lm881_72e
	mov	r0, #0
	bl	OvlFunc_881_200b9fc
	ldr	r0, =0x3a
	mov	r1, #1
	bl	__SetDestMap
	b	.Lm881_a2c
.Lm881_72e:
	cmp	r3, #0x5b
	bne	.Lm881_742
	mov	r0, #1
	bl	OvlFunc_881_200b9fc
	ldr	r0, =0xbb
	mov	r1, #0x5d
	bl	__SetDestMap
	b	.Lm881_a2c
.Lm881_742:
	cmp	r3, #0x4e
	bne	.Lm881_758
	bl	__CutsceneStart
	mov	r0, #0xf2
	bl	__Func_8078a08
	mov	r0, #0x70
	bl	__Func_8091e9c
	b	.Lm881_a2c
.Lm881_758:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
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
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #9
	lsl	r0, #12
	bl	__Func_80933d4
	ldr	r0, =0x12f
	bl	__ClearFlag
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_881_2008598
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x90a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_7b4
	mov	r1, #0x80
	mov	r0, #0x80
	lsl	r1, #1
	mov	r2, #0xb0
	mov	r3, #0x38
	bl	__Func_8010d48
.Lm881_7b4:
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	sub	r3, #1
	cmp	r3, #0x4f
	bls	.Lm881_7c0
	b	.Lm881_a18
.Lm881_7c0:
	ldr	r2, =.Lm881_7c8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm881_7c8:
	.word	.Lm881_908
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_922
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_980
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_99a
	.word	.Lm881_9aa
	.word	.Lm881_9b0
	.word	.Lm881_9b6
	.word	.Lm881_9bc
	.word	.Lm881_9c2
	.word	.Lm881_9c8
	.word	.Lm881_9ce
	.word	.Lm881_9d4
	.word	.Lm881_9da
	.word	.Lm881_9e0
	.word	.Lm881_a0c
	.word	.Lm881_9e0
	.word	.Lm881_9e0
	.word	.Lm881_a18
	.word	.Lm881_a18
	.word	.Lm881_a12
.Lm881_908:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm881_914
	b	.Lm881_a2c
.Lm881_914:
	ldr	r0, =0x815
	bl	__SetFlag
	ldr	r0, =0x85c
	bl	__SetFlag
	b	.Lm881_a2c
.Lm881_922:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm881_966
	ldr	r0, =0x85d
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_a2c
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm881_a2c
	ldr	r5, =.Lm881_679c
	mov	r3, #0x37
	str	r3, [r5]
	mov	r0, #0x37
	ldr	r1, =0x17940000
	ldr	r2, =0xd480000
	bl	__MapActor_SetPos
	ldr	r0, [r5]
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, [r5]
	bl	OvlFunc_881_200a768
	b	.Lm881_a2c
.Lm881_966:
	ldr	r0, =0x85d
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_a2c
	ldr	r0, =0x9b8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_a2c
	bl	OvlFunc_881_200a4a8
	b	.Lm881_a2c
.Lm881_980:
	ldr	r0, =0x94f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_a2c
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm881_a2c
	bl	OvlFunc_881_2008a8c
	b	.Lm881_a2c
.Lm881_99a:
	ldr	r0, =0x85a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_a2c
	bl	OvlFunc_881_2008c28
	b	.Lm881_a2c
.Lm881_9aa:
	bl	OvlFunc_881_20097fc
	b	.Lm881_a2c
.Lm881_9b0:
	bl	OvlFunc_881_2009888
	b	.Lm881_a2c
.Lm881_9b6:
	bl	OvlFunc_881_2009938
	b	.Lm881_a2c
.Lm881_9bc:
	bl	OvlFunc_881_20099e8
	b	.Lm881_a2c
.Lm881_9c2:
	bl	OvlFunc_881_2009a98
	b	.Lm881_a2c
.Lm881_9c8:
	bl	OvlFunc_881_2009b5c
	b	.Lm881_a2c
.Lm881_9ce:
	bl	OvlFunc_881_200a274
	b	.Lm881_a2c
.Lm881_9d4:
	bl	OvlFunc_881_200b57c
	b	.Lm881_a2c
.Lm881_9da:
	bl	OvlFunc_881_200b130
	b	.Lm881_a2c
.Lm881_9e0:
	mov	r0, #0x8e
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #0xbe
	lsl	r0, #2
	bl	__GetFlagByte
	cmp	r0, #0
	beq	.Lm881_a2c
	ldr	r3, =gState
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r1, #0xc8
	strb	r3, [r2]
	ldr	r0, =OvlFunc_881_200b678
	lsl	r1, #4
	bl	__StartTask
	b	.Lm881_a2c
.Lm881_a0c:
	bl	OvlFunc_881_200b2f0
	b	.Lm881_a2c
.Lm881_a12:
	bl	OvlFunc_881_200acb4
	b	.Lm881_a2c
.Lm881_a18:
	mov	r0, #0x35
	bl	__MapActor_GetActor
	mov	r5, #0xa0
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0x35
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
.Lm881_a2c:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end WorldMapCutscenes_MapInit

