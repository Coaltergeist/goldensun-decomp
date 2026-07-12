	.include "macros.inc"

.thumb_func_start OvlFunc_888_20085cc
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x80
	add	r2, #0x49
	str	r2, [r3]
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #0x19
	bhi	.L6c6
	ldr	r2, =.L60c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L60c:
	.word	.L674
	.word	.L674
	.word	.L674
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L68e
	.word	.L6a8
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6c6
	.word	.L6a0
	.word	.L6c6
	.word	.L6c6
	.word	.L6a0
	.word	.L6c6
	.word	.L6c6
	.word	.L6a0
.L674:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.L6a0
	mov	r1, #0xc8
	mov	r2, #0xa0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	b	.L6a0
.L68e:
	bl	OvlFunc_888_200b270
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L6a0
	bl	OvlFunc_888_200888c
.L6a0:
	ldr	r0, =0x12f
	bl	__ClearFlag
	b	.L6c6
.L6a8:
	bl	OvlFunc_888_200b270
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L6c0
	bl	OvlFunc_888_200888c
.L6c0:
	ldr	r0, =0x12f
	bl	__ClearFlag
.L6c6:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_888_20085cc

.thumb_func_start OvlFunc_888_20086e8
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x116c
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_20086e8

.thumb_func_start OvlFunc_888_200874c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	ldr	r0, =0x10002
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0xb4
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ed0
	ldr	r0, =0xe5a
	ldr	r2, [r3]
	ldr	r4, =0xe5c
	mov	r1, #0xf8
	add	r3, r2, r0
	lsl	r1, #7
	strh	r1, [r3]
	add	r3, r2, r4
	add	r4, #2
	strh	r1, [r3]
	add	r3, r2, r4
	strh	r1, [r3]
	mov	r1, #0xa8
	ldr	r0, .L7f8	@ 0
	lsl	r1, #6
	ldr	r4, =0x2a01
	add	r3, r2, r1
	strb	r0, [r3]
	ldr	r0, =0x2a02
	add	r3, r2, r4
	mov	r1, #1
	strb	r1, [r3]
	add	r3, r2, r0
	strb	r1, [r3]
	ldr	r3, =0x2a03
	add	r2, r3
	strb	r1, [r2]
	mov	r0, #1
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r0, =0x116d
	mov	r1, #1
	bl	__Func_8019aa0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	b	.L81c

	.align	2, 0
.L7f8:
	.word	0
	.pool

.L81c:
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	OvlFunc_888_200a7d4
	cmp	r0, #0
	bne	.L83a
	bl	__CutsceneEnd
	mov	r0, #0x14
	bl	__Func_8091e9c
	b	.L844
.L83a:
	bl	__CutsceneEnd
	mov	r0, #0x32
	bl	__Func_8091e9c
.L844:
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200874c
