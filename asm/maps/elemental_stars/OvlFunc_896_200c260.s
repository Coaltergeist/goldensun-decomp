	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200c260
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r0
	mov	r0, #0
	mov	r8, r0
	mov	r0, #0x16
	bl	__CreateActor
	mov	r6, r0
	mov	r0, #0xe0
	bl	__CheckPartyItem
	mov	r1, #0xe0
	mov	r7, r0
	bl	__CheckItem
	mov	r9, r0
	mov	r0, r7
	cmp	r6, #0
	beq	.Lm896_4316
	ldr	r1, =gScript_881__0200cbe4
	mov	r0, r6
	bl	__Actor_SetScript
	ldr	r5, [r6, #0x50]
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x26
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	mov	r3, #0x21
	ldrb	r2, [r5, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r5, #9]
	strb	r3, [r5, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r5, #9]
	mov	r3, #0xa0
	lsl	r3, #10
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc1
	str	r3, [r6, #0x48]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r8, r0
	mov	r0, r10
	bl	__LoadItemIcon
	mov	r2, #0x80
	lsl	r2, #3
	add	r2, r8
	mov	r1, #0x80
	ldrb	r0, [r5, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r0, #0x53
	bl	__PlaySound
	mov	r0, r6
	mov	r1, #3
	bl	__Func_808f140
	mov	r1, r9
	mov	r0, r7
	bl	__Func_8078948
	mov	r1, r10
	mov	r0, r7
	bl	__GiveItemTo
	mov	r0, r6
	bl	__DeleteActor
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r7
.Lm896_4316:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_896_200c260

