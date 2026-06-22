	.include "macros.inc"

.thumb_func_start OvlFunc_899_200882c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x857
	bl	__GetFlag
	cmp	r0, #0
	bne	.L8ca
	ldr	r5, =_MSG_1360
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0x10
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L8bc
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	bl	__CutsceneEnd
	b	.L906
.L8bc:
	ldr	r0, =0x857
	bl	__SetFlag
	mov	r0, #0xbd
	mov	r1, #0
	bl	__Func_8091a58
.L8ca:
	ldr	r0, =0x1364
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L8fa
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L8fa:
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L906:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200882c

.thumb_func_start OvlFunc_899_200891c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_899_200c624
	ldr	r0, =0x85b
	bl	__GetFlag
	cmp	r0, #0
	bne	.L946
	ldr	r0, =0x137c
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
	b	.L954
.L946:
	ldr	r0, =0x1385
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
.L954:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L9c0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x12
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L9a8
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1384
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	b	.L9ec
.L9a8:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0x85b
	bl	__SetFlag
	b	.L9ec
.L9c0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
.L9ec:
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200891c

