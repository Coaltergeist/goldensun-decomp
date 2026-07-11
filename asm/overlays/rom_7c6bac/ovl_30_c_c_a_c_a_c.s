	.include "macros.inc"

.thumb_func_start OvlFunc_942_2008328
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	lsl	r3, #16
	asr	r5, r3, #16
	bl	__CutsceneStart
	ldr	r0, =0x8a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3de
	ldr	r0, =0x8a9
	bl	__GetFlag
	cmp	r0, #0
	beq	.L378
	ldr	r0, =0x1d23
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092c40
	b	.L496

	.pool_aligned

.L378:
	ldr	r5, =_MSG_1d20
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3ce
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0xa1
	mov	r0, #0xc
	mov	r1, #0x58
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x8a9
	bl	__SetFlag
	b	.L496
.L3ce:
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	b	.L496
.L3de:
	mov	r2, #0x80
	lsl	r3, r5, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L49a
	ldr	r0, =0x1d16
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8a5
	bl	__GetFlag
	cmp	r0, #0
	beq	.L48e
	mov	r0, #0xeb
	bl	__CheckPartyItem
	mov	r1, #0xeb
	mov	r5, r0
	bl	__CheckItem
	mov	r1, #3
	mov	r6, r0
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r2, #0xa1
	mov	r0, #0xc
	mov	r1, #0x58
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, r6
	mov	r0, r5
	bl	__Func_8078948
	ldr	r0, =0x8a7
	bl	__SetFlag
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r2, #0xa3
	mov	r0, #0
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xa3
	mov	r0, #0
	mov	r1, #0x48
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xa3
	mov	r0, #0xc
	mov	r1, #0x58
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	b	.L496
.L48e:
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
.L496:
	bl	__CutsceneEnd
.L49a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008328

