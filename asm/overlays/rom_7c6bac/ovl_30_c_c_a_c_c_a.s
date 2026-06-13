	.include "macros.inc"

.thumb_func_start OvlFunc_942_200851c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r2, #0x96
	lsl	r2, #2
	sub	sp, #4
	mov	r8, r2
	bl	__CutsceneStart
	ldr	r0, =0x8a5
	bl	__GetFlag
	cmp	r0, #0
	beq	.L548
	ldr	r0, =0x1d0b
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L664
.L548:
	ldr	r0, =0x1d04
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L56e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	b	.L660
.L56e:
	ldr	r7, =iwram_3001ebc
	mov	r3, #0xec
	ldr	r2, [r7]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, r8
	mov	r1, #5
	bl	__Func_8019908
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #0xb
	mov	r3, #4
	mov	r0, #0x13
	bl	__CreateUIBox
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =0xc8a
	mov	r2, #0
	mov	r3, #0
	bl	__Func_801e7c0
	ldr	r6, =gState
	mov	r3, #8
	ldr	r0, [r6, #0x10]
	mov	r1, #6
	str	r3, [sp]
	mov	r2, r5
	mov	r3, #0x18
	bl	__Func_801ea08
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L5e4
	mov	r0, r5
	mov	r1, #2
	bl	__CloseUIBox
	mov	r1, #4
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.L614
.L5e4:
	ldr	r3, [r6, #0x10]
	cmp	r8, r3
	bls	.L61e
	mov	r0, r5
	mov	r1, #2
	bl	__CloseUIBox
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r7]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	mov	r0, #0x71
	strh	r3, [r2]
	bl	__PlaySound
.L614:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L660
.L61e:
	mov	r0, r5
	mov	r1, #2
	bl	__CloseUIBox
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, [r7]
	mov	r2, #0xec
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #3
	strh	r2, [r3]
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r0, #0xeb
	bl	__Func_8091a58
	ldr	r0, =0x8a5
	bl	__SetFlag
	mov	r3, r8
	neg	r0, r3
	bl	__AddCoins
.L660:
	bl	__CutsceneEnd
.L664:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_200851c

