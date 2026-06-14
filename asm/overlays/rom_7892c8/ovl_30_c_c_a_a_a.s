	.include "macros.inc"

.thumb_func_start OvlFunc_888_2008070
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x22
	bhi	.L128
	ldr	r2, =.L8c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L8c:
	.word	.L118
	.word	.L118
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L11c
	.word	.L11c
	.word	.L11c
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L120
	.word	.L120
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L128
	.word	.L124
	.word	.L128
	.word	.L128
	.word	.L124
	.word	.L128
	.word	.L128
	.word	.L11c
.L118:
	ldr	r0, =.L3c0c
	b	.L12a
.L11c:
	ldr	r0, =.L3ccc
	b	.L12a
.L120:
	ldr	r0, =.L3d2c
	b	.L12a
.L124:
	ldr	r0, =.L3e04
	b	.L12a
.L128:
	ldr	r0, =.L3bf4
.L12a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_888_2008070

.thumb_func_start OvlFunc_888_200814c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #0x28
	bhi	.L224
	ldr	r2, =.L168
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L168:
	.word	.L20c
	.word	.L210
	.word	.L20c
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L214
	.word	.L214
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L21c
	.word	.L224
	.word	.L224
	.word	.L218
	.word	.L224
	.word	.L224
	.word	.L220
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L214
.L20c:
	ldr	r0, =.L3e70
	b	.L242
.L210:
	ldr	r0, =.L3ec4
	b	.L242
.L214:
	ldr	r0, =.L3f0c
	b	.L242
.L218:
	ldr	r0, =.L40ec
	b	.L242
.L21c:
	ldr	r0, =.L4038
	b	.L242
.L220:
	ldr	r0, =.L4080
	b	.L242
.L224:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L232
	ldr	r0, =.L3fd8
	b	.L242
.L232:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L240
	ldr	r0, =.L3f78
	b	.L242
.L240:
	ldr	r0, =.L3e34
.L242:
	pop	{r1}
	bx	r1
.func_end OvlFunc_888_200814c

.thumb_func_start OvlFunc_888_200827c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.L294
	ldr	r0, =0x1377
	bl	__MessageID
	b	.L29a
.L294:
	ldr	r0, =0x1289
	bl	__MessageID
.L29a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L2b0
	ldr	r0, =0x1ce9
	bl	__MessageID
.L2b0:
	mov	r0, #9
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092848
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200827c

.thumb_func_start OvlFunc_888_20082ec
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L304
	ldr	r0, =0x128b
	bl	__MessageID
	b	.L30a
.L304:
	ldr	r0, =0x1379
	bl	__MessageID
.L30a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L320
	ldr	r0, =0x1ceb
	bl	__MessageID
.L320:
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_20082ec

.thumb_func_start OvlFunc_888_2008360
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1164
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L390
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	b	.L4da
.L390:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L3ac
	b	.L4da
.L3ac:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L3c8
	b	.L4da
.L3c8:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, #0xa0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bcc	.L488
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, #0xe0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bhi	.L488
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0x98
	mov	r2, #0x78
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xa8
	mov	r2, #0x78
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0xa8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x78
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_WaitMovement
	b	.L4aa
.L488:
	mov	r1, #0xc0
	mov	r2, #0xa8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_WaitMovement
.L4aa:
	bl	OvlFunc_888_200987c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0x56
	bl	__PlaySound
	bl	__Func_80f95a0
	mov	r0, #0x9f
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__Func_8091e9c
.L4da:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_2008360

.thumb_func_start OvlFunc_888_20084e8
	push	{r5, lr}
	sub	sp, #0x1c
	bl	__CutsceneStart
	ldr	r0, =.L3c9c
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x1bfd
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L520
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.L55c
.L520:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r3, #3
	mov	r2, #7
	mov	r1, #0x10
	mov	r4, #0xe
	str	r0, [sp]
	str	r3, [sp, #4]
	str	r2, [sp, #8]
	str	r0, [sp, #0x10]
	mov	r5, #0
	mov	r0, #2
	mov	r2, #1
	mov	r3, #0x18
	str	r1, [sp, #0xc]
	str	r4, [sp, #0x14]
	str	r5, [sp, #0x18]
	bl	__Func_80931ec
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.L55c:
	bl	__CutsceneEnd
	add	sp, #0x1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_20084e8

.thumb_func_start OvlFunc_888_2008574
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x119f
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L5b4
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L5b4:
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_2008574

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

.thumb_func_start OvlFunc_888_2008848
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r4, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r5, #0xd
	ldrb	r1, [r4, #9]
	neg	r5, r5
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r5
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r1, [r6, #0x50]
	ldrb	r2, [r3, #9]
	mov	r3, #0xc
	and	r3, r2
	ldrb	r2, [r1, #0x15]
	and	r5, r2
	orr	r5, r3
	strb	r5, [r1, #0x15]
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_888_2008848

.thumb_func_start OvlFunc_888_200888c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L916
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xa0
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x78
	bl	__CutsceneWait
	bl	.L17ca
.L916:
	mov	r1, #0
	ldr	r0, =0x10002
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xa0
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	OvlFunc_888_200a90c
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	ldr	r1, =0xcccc
	mov	r0, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	ldr	r0, =0x1138
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Laa4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lace
.Laa4:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
.Lace:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lb60
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lb8c

	.pool_aligned

.Lb60:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Lb8c:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x78
	mov	r1, #0xe0
	mov	r0, #0xc
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x32
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #8
	mov	r5, #0x90
	bl	__Func_8092950
	lsl	r5, #5
	bl	OvlFunc_888_200a5c4
	mov	r0, #0xc4
	bl	__PlaySound
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r5, #0
	b	.Lf44

	.pool_aligned

.Lf44:
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #5
	bl	OvlFunc_888_200a750
	add	r5, #1
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #5
	bls	.Lf44
	mov	r5, #0x90
	lsl	r5, #5
	mov	r0, #8
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x60
	bl	__CutsceneWait
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	OvlFunc_888_200a660
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #9
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__Func_8092504
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__Func_8092504
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_8092950
	bl	OvlFunc_888_200a5c4
	mov	r0, #0xc4
	bl	__PlaySound
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r5, #0
.L11a0:
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #5
	bl	OvlFunc_888_200a750
	add	r5, #1
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #5
	bls	.L11a0
	mov	r5, #0x90
	mov	r0, #8
	lsl	r5, #5
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x80
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	OvlFunc_888_200a660
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #8
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092848
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0xa
	bl	__Func_8092848
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__Func_8092504
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #9
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xc8
	mov	r2, #0x88
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	b	.L1608

	.pool_aligned

.L1608:
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #1
	mov	r0, #8
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x78
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
.L17ca:
	ldr	r0, =0x1162
	bl	__MessageID
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1824
	bl	OvlFunc_888_200987c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0x56
	bl	__PlaySound
	bl	__Func_80f95a0
	mov	r0, #0x9f
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__Func_8091e9c
	b	.L1868
.L1824:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_888_2008848
	str	r3, [r0, #0x6c]
.L1868:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200888c

.thumb_func_start OvlFunc_888_200987c
	push	{r5, r6, lr}
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1171
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #1
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xd0
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__PlaySound
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__PlaySound
	mov	r1, #0xc8
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #12
	bl	__MapActor_SetPos
	mov	r0, #0xd
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r2, #0x48
	mov	r1, #0xc8
	mov	r0, #0xd
	bl	__Func_8092158
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	bl	OvlFunc_888_200a5c4
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__PlaySound
	ldr	r6, =0xfffffd71
	mov	r5, #0
	b	.L1bd0

	.pool_aligned

.L1bd0:
	mov	r0, #0xd
	bl	OvlFunc_888_200b1b8
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x18]
	add	r3, r6
	str	r3, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x1c]
	add	r5, #1
	add	r3, r6
	str	r3, [r0, #0x1c]
	cmp	r5, #0x1f
	bls	.L1bd0
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	bl	OvlFunc_888_200a660
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xb4
	bl	__CutsceneWait
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x83
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #0xc8
	mov	r2, #0xc8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x88
	mov	r1, #0xc8
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	b	.L222c

	.pool_aligned

.L222c:
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x78
	bl	__CutsceneWait
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0xa
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x88
	mov	r0, #9
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x88
	mov	r0, #0xa
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0xc8
	mov	r2, #0x88
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0xa8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200987c

.thumb_func_start OvlFunc_888_200a5c4
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L25da
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xe
	bl	__MapActor_SetPos
.L25da:
	mov	r1, #0
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	mov	r0, #0xe
	strh	r3, [r5, #6]
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_888_200a67c
	str	r3, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, [r0, #0x50]
	mov	r3, r5
	add	r3, #0x27
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r0, r3
	bcs	.L262e
	mov	r1, r5
	mov	r4, #0xa
	mov	r12, r3
	add	r1, #0x28
.L261a:
	ldmia	r1!, {r2}
	cmp	r2, #0
	beq	.L2628
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L2628
	strb	r4, [r2, #5]
.L2628:
	add	r0, #1
	cmp	r0, r12
	bcc	.L261a
.L262e:
	mov	r2, r5
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r5, #9]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a5c4

.thumb_func_start OvlFunc_888_200a660
	push	{lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r1, #0
	mov	r0, #0xe
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a660

.thumb_func_start OvlFunc_888_200a67c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	str	r3, [r5, #0x38]
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #3
	and	r2, r3
	cmp	r2, #1
	beq	.L26bc
	cmp	r2, #1
	bcc	.L26b6
	cmp	r2, #2
	beq	.L26ca
	cmp	r2, #3
	beq	.L26d8
	b	.L26de
.L26b6:
	ldr	r3, [r0, #8]
	ldr	r2, =0xfffc8000
	b	.L26c2
.L26bc:
	ldr	r3, [r0, #8]
	mov	r2, #0xc0
	lsl	r2, #10
.L26c2:
	add	r3, r2
	str	r3, [r5, #8]
	str	r3, [r5, #0x38]
	b	.L26de
.L26ca:
	ldr	r3, [r0, #0xc]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	b	.L26de
.L26d8:
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
.L26de:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a67c

.thumb_func_start OvlFunc_888_200a6f0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r2, #0x64
	add	r2, r5
	ldrh	r6, [r2]
	ldr	r1, [r5, #0x68]
	mov	r0, r6
	mov	r8, r2
	mov	r10, r1
	bl	__cos
	mov	r1, r10
	lsl	r2, r0, #3
	ldr	r3, [r1, #8]
	sub	r2, r0
	lsl	r2, #1
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, r6
	bl	__sin
	mov	r1, r10
	lsl	r3, r0, #2
	ldr	r2, [r1, #0x10]
	add	r3, r0
	lsl	r3, #1
	add	r2, r3
	ldr	r3, [r5, #8]
	str	r2, [r5, #0x10]
	str	r2, [r5, #0x40]
	str	r3, [r5, #0x38]
	mov	r2, r8
	add	r5, #0x66
	ldrh	r3, [r2]
	ldrh	r2, [r5]
	mov	r1, r8
	add	r3, r2
	strh	r3, [r1]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a6f0

.thumb_func_start OvlFunc_888_200a750
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	bl	__MapActor_GetActor
	mov	r7, r0
	cmp	r7, #0
	beq	.L27c8
	ldr	r2, [r7, #0xc]
	mov	r3, #0xb4
	lsl	r3, #14
	add	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L27c8
	ldr	r1, =gScript_888__0200c15c
	ldr	r5, [r6, #0x50]
	bl	__Actor_SetScript
	mov	r3, r6
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	add	r3, #2
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, =OvlFunc_888_200a6f0
	ldr	r1, .L27b8	@ 0
	str	r3, [r6, #0x6c]
	mov	r3, r5
	add	r3, #0x26
	strb	r1, [r3]
	ldr	r3, [r7, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	str	r7, [r6, #0x68]
	strb	r3, [r5, #9]
	b	.L27c8

	.align	2, 0
.L27b8:
	.word	0
	.pool

.L27c8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a750

.thumb_func_start OvlFunc_888_200a7d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	sub	sp, #0x14
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__CutsceneWait
	mov	r3, #1
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #0x19
	mov	r3, #5
	mov	r0, #2
	bl	__CreateUIBox
	ldr	r5, =0x116e
	mov	r7, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #0
	bl	__DrawSmallText
	mov	r0, #1
	bl	__Func_801f730
	cmp	r0, #0
	bne	.L2870
	add	r0, r5, #2
	mov	r1, r7
	mov	r2, #0x10
	mov	r3, #0x10
	bl	__DrawSmallText
	b	.L287c
.L2870:
	add	r0, r5, #1
	mov	r1, r7
	mov	r2, #0x10
	mov	r3, #0x10
	bl	__DrawSmallText
.L287c:
	add	r1, sp, #4
	add	r0, sp, #8
	bl	__Func_801c0dc
	mov	r2, #0x3c
	add	r0, sp, #8
	mov	r1, #0x48
	bl	__Func_801c154
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	mov	r5, #0
	cmp	r3, #0
	bne	.L28dc
	ldr	r2, =.L411c
	mov	r6, #1
	mov	r8, r2
.L28a2:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #0xc0
	and	r3, r2
	cmp	r3, #0
	beq	.L28b0
	eor	r5, r6
.L28b0:
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #1
	and	r3, r2
	lsl	r3, #2
	mov	r2, r8
	ldr	r1, [r2, r3]
	lsl	r2, r5, #4
	add	r0, sp, #8
	add	r1, #0x18
	add	r2, #0x3c
	bl	__Func_801c154
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	and	r3, r6
	cmp	r3, #0
	beq	.L28a2
.L28dc:
	ldr	r0, [sp, #4]
	bl	__Func_801c17c
	mov	r0, r7
	mov	r1, #1
	bl	__CloseUIBox
	mov	r0, r5
	add	sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_888_200a7d4

.thumb_func_start OvlFunc_888_200a90c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #1
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0
	mov	r8, r2
	strb	r3, [r0]
	mov	r1, #0xb8
	mov	r2, #0xa8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	mov	r2, #0xa8
	mov	r1, #0xc8
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #5
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0x19
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb8
	mov	r2, #0xd8
	mov	r3, #0xa8
	lsl	r3, #16
	lsl	r1, #16
	lsl	r2, #13
	mov	r0, #0xde
	bl	OvlFunc_888_200b098
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, #1
	add	r0, #0x64
	strh	r6, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_888_2008030
	str	r5, [r0, #0x6c]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r6, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0xc4
	str	r5, [r0, #0x6c]
	mov	r2, #0xb4
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xb8
	mov	r2, #0xb8
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xb4
	mov	r2, #0xb4
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xa8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xb4
	mov	r2, #0x9c
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xc8
	mov	r2, #0x68
	bl	__Func_809218c
	mov	r0, #0
	mov	r1, #0xc0
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, r8
	str	r3, [r0, #0x6c]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, r8
	str	r2, [r0, #0x6c]
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xd0
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r1, =ActorCmd_ARRAY_888__0200b740
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_888__0200b81c
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r0, #1
	bl	__MapActor_WaitScript
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #9
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc0
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r1, #0xd0
	mov	r2, #0xa8
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	b	.L308c

	.pool_aligned

.L308c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a90c

.thumb_func_start OvlFunc_888_200b098
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r0, #0x16
	bl	__CreateActor
	mov	r7, r0
	mov	r5, #0
	cmp	r7, #0
	beq	.L3132
	ldr	r1, =gScript_888__0200b8f8
	bl	__Actor_SetScript
	ldr	r6, [r7, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r5, [r3]
	add	r3, #1
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc1
	str	r3, [r7, #0x48]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, r8
	bl	__LoadItemIcon
	mov	r2, #0x80
	lsl	r2, #3
	add	r5, r2
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r5, #0
	mov	r6, r7
	add	r6, #0x55
	mov	r8, r5
.L310e:
	ldr	r3, [r7, #0x28]
	mov	r2, #0xff
	add	r3, #0xff
	lsl	r2, #1
	cmp	r3, r2
	bhi	.L311e
	mov	r3, r8
	strb	r3, [r6]
.L311e:
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x3b
	bls	.L310e
	ldr	r1, =gScript_888__0200ba9c
	mov	r0, r7
	bl	__Actor_SetScript
.L3132:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b098

.thumb_func_start OvlFunc_888_200b144
	push	{lr}
	mov	r3, r0
	add	r3, #0x64
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, [r0, #0xc]
	lsl	r2, #12
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	mov	r1, r0
	add	r1, #0x66
	ldrh	r3, [r1]
	lsl	r3, #16
	asr	r2, r3, #18
	ldr	r3, =3
	and	r2, r3
	mov	r4, #0
	cmp	r2, #1
	beq	.L318a
	cmp	r2, #1
	bgt	.L3176
	cmp	r2, #0
	beq	.L3184
	b	.L3190
.L3176:
	cmp	r2, #2
	beq	.L318e
	cmp	r2, #3
	beq	.L318a
	b	.L3190

	.pool_aligned

.L3184:
	mov	r4, #0x80
	lsl	r4, #9
	b	.L3190
.L318a:
	ldr	r4, =0xcccc
	b	.L3190
.L318e:
	ldr	r4, =0x9999
.L3190:
	str	r4, [r0, #0x18]
	str	r4, [r0, #0x1c]
	ldrh	r3, [r1]
	sub	r3, #1
	strh	r3, [r1]
	lsl	r3, #16
	cmp	r3, #0
	bgt	.L31a6
	ldr	r1, =gScript_888__0200c18c
	bl	__Actor_SetScript
.L31a6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b144

.thumb_func_start OvlFunc_888_200b1b8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	bl	__MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L3264
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	ldr	r5, [r6, #8]
	ldr	r2, =0xfff60000
	lsl	r0, #16
	add	r5, r0
	add	r5, r2
	bl	__Random
	mov	r3, #0xf
	and	r3, r0
	ldr	r2, [r6, #0xc]
	lsl	r3, #16
	add	r2, r3
	ldr	r3, =0xfff80000
	mov	r0, #0x8f
	add	r2, r3
	lsl	r0, #1
	ldr	r3, [r6, #0x10]
	mov	r1, r5
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.L3264
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	ldr	r5, [r7, #0x50]
	strb	r3, [r2]
	bl	__Random
	mov	r1, #0xa
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r3, #0x64
	ldr	r2, .L3254	@ 0
	add	r0, #5
	strh	r0, [r3]
	mov	r8, r2
	bl	__Random
	mov	r1, #0x3c
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r3, #0x66
	add	r0, #0x1e
	strh	r0, [r3]
	ldr	r3, =OvlFunc_888_200b144
	str	r3, [r7, #0x6c]
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r5, #9]
	b	.L3264

	.align	2, 0
.L3254:
	.word	0
	.pool

.L3264:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b1b8

.thumb_func_start OvlFunc_888_200b270
	push	{lr}
	sub	sp, #8
	mov	r3, #3
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0xb
	mov	r3, #0x44
	bl	__CopyMapTiles
	mov	r3, #0xb
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xa
	mov	r2, #3
	mov	r3, #2
	mov	r0, #0xb
	bl	__Func_8010704
	mov	r0, #1
	bl	__WaitFrames
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b270

