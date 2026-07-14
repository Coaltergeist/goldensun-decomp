	.include "macros.inc"

	.section .text.after_a4d0, "ax", %progbits

.thumb_func_start OvlFunc_965_200a548
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L25ba
	ldr	r0, =0x985
	bl	__ClearFlag
	mov	r0, #0x9d
	bl	__PlaySound
	bl	__CutsceneStart
	mov	r1, #0x94
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__MapActor_TravelTo
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	bl	__CutsceneEnd
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.L25b4
	ldr	r0, =0x301
	bl	__ClearFlag
	b	.L25ba
.L25b4:
	ldr	r0, =0x301
	bl	__SetFlag
.L25ba:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a548

.thumb_func_start OvlFunc_965_200a5c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	sub	sp, #8
	ldr	r5, [r3]
	bl	__CutsceneStart
	ldr	r2, =0xcb8
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L262e
	ldr	r0, =0x985
	bl	__GetFlag
	cmp	r0, #0
	bne	.L263e
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x9b
	bl	__PlaySound
	mov	r5, #0x11
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x4e
	mov	r0, #0x23
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x22
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	OvlFunc_965_200a4d0
	b	.L263e
.L262e:
	ldr	r0, =0x2756
	bl	__MessageID
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__ActorMessage
.L263e:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a5c8
