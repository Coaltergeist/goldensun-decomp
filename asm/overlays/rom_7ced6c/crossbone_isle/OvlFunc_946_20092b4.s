	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_20092b4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	mov	r8, r3
	cmp	r3, #0x28
	bne	.Lm946_1356
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r2, r3
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r9, r2
	ldr	r3, =0x7e
	ldr	r2, =0x8d2
	sub	r2, r3
	mov	r10, r2
	add	r0, r10
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	bne	.Lm946_1356
	mov	r6, r5
	mov	r3, #3
	add	r6, #0x55
	strb	r3, [r6]
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #8
	bl	OvlFunc_946_2008e00
	mov	r0, #0x88
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092b08
	strb	r7, [r6]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r2, r8
	mov	r3, #0xa
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0xa
	bl	__Func_8010704
	mov	r2, r9
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	add	r0, r10
	bl	__SetFlag
.Lm946_1356:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_20092b4

