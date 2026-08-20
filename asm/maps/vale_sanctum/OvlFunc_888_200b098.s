	.include "macros.inc"
	.include "gba.inc"

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
	beq	.Lm888_3132
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
.Lm888_310e:
	ldr	r3, [r7, #0x28]
	mov	r2, #0xff
	add	r3, #0xff
	lsl	r2, #1
	cmp	r3, r2
	bhi	.Lm888_311e
	mov	r3, r8
	strb	r3, [r6]
.Lm888_311e:
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x3b
	bls	.Lm888_310e
	ldr	r1, =gScript_888__0200ba9c
	mov	r0, r7
	bl	__Actor_SetScript
.Lm888_3132:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b098

