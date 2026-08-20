	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200d388
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r2, r3]
	mov	r0, #0x1a
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm924_53ec
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_924__0200de14
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	str	r7, [r5, #0x68]
	cmp	r6, #0
	beq	.Lm924_53ec
	mov	r0, r6
	mov	r1, #2
	bl	__Sprite_SetAnim
	ldr	r3, .Lm924_5410	@ 0
	mov	r2, r6
	add	r2, #0x26
	strb	r3, [r2]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.Lm924_53ec:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm924_5446
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_924__0200de14
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	mov	r2, #0
	b	.Lm924_5420

	.align	2, 0
.Lm924_5410:
	.word	0
	.pool

.Lm924_5420:
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	cmp	r6, #0
	beq	.Lm924_5446
	mov	r0, r6
	mov	r1, #1
	bl	__Sprite_SetAnim
	mov	r2, r6
	ldr	r3, =0
	add	r2, #0x26
	strb	r3, [r2]
.Lm924_5446:
	mov	r0, #0x82
	bl	__PlaySound
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200d388

