	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200c5d0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm945_45ea
	ldr	r3, =.Lm945_6968
	ldr	r0, [r3]
	b	.Lm945_465e
.Lm945_45ea:
	mov	r2, #0x80
	mov	r3, #0x88
	ldr	r1, =0x1c70000
	lsl	r2, #11
	lsl	r3, #18
	mov	r0, #0x16
	bl	__CreateActor
	mov	r8, r0
	mov	r3, r8
	add	r3, #0x55
	mov	r2, r8
	strb	r5, [r3]
	add	r2, #0x5c
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r8
	ldr	r6, [r2, #0x50]
	mov	r3, r6
	add	r3, #0x27
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xe8
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r3, =.Lm945_6968
	mov	r2, r8
	str	r2, [r3]
	mov	r0, r8
.Lm945_465e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200c5d0

