	.include "macros.inc"

	.section .text.after_a4d0, "ax", %progbits

	.section .text.after_a548, "ax", %progbits

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
