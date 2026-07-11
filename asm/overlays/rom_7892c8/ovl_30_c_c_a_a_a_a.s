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

