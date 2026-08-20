	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_913_200a974
	push	{r5, r6, r7, lr}
	ldr	r2, =.Lm913_338c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #2
	beq	.Lm913_29a8
	cmp	r3, #2
	bhi	.Lm913_298a
	cmp	r3, #1
	beq	.Lm913_2990
	b	.Lm913_29e6
.Lm913_298a:
	cmp	r3, #3
	beq	.Lm913_29ca
	b	.Lm913_29e6
.Lm913_2990:
	ldr	r2, =.Lm913_3388
	ldr	r1, =0x3a97
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.Lm913_299e
	add	r3, #0x32
	str	r3, [r2]
.Lm913_299e:
	ldr	r2, =.Lm913_3384
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #14
	b	.Lm913_29be
.Lm913_29a8:
	ldr	r2, =.Lm913_3388
	ldr	r1, =0x752f
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.Lm913_29b6
	add	r3, #0x32
	str	r3, [r2]
.Lm913_29b6:
	ldr	r2, =.Lm913_3384
	mov	r1, #0xc0
	ldr	r3, [r2]
	lsl	r1, #13
.Lm913_29be:
	cmp	r3, r1
	ble	.Lm913_29e6
	ldr	r1, =0xffffc000
	add	r3, r1
	str	r3, [r2]
	b	.Lm913_29e6
.Lm913_29ca:
	ldr	r0, =.Lm913_3384
	ldr	r3, =0xff800000
	ldr	r1, [r0]
	cmp	r1, r3
	bge	.Lm913_29d8
	str	r5, [r2]
	b	.Lm913_29e6
.Lm913_29d8:
	ldr	r3, =.Lm913_3388
	ldr	r2, [r3]
	add	r2, #0x32
	str	r2, [r3]
	ldr	r2, =0xffffc000
	add	r3, r1, r2
	str	r3, [r0]
.Lm913_29e6:
	ldr	r7, =iwram_3001e40
	ldr	r3, [r7]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm913_2aa2
	ldr	r0, =0x11d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm913_2aa2
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r7]
	mov	r2, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.Lm913_2a1a
	mov	r0, #0xf6
	bl	__PlaySound
.Lm913_2a1a:
	ldr	r3, =.Lm913_338c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_2a3c
	bl	__Random
	ldr	r3, =.Lm913_3388
	ldr	r3, [r3]
	mul	r3, r0
	ldr	r2, [r6]
	lsr	r3, #16
	lsl	r3, #8
	add	r2, r3
	ldr	r3, =.Lm913_3384
	ldr	r3, [r3]
	add	r7, r2, r3
	b	.Lm913_2a4a
.Lm913_2a3c:
	bl	__Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r1, =0xff800000
	add	r3, r0
	add	r7, r3, r1
.Lm913_2a4a:
	bl	__Random
	ldr	r2, [r6, #8]
	lsl	r0, #8
	ldr	r3, =0xff800000
	add	r2, r0
	add	r2, r3
	mov	r3, r5
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r1, [r5, #0x50]
	ldr	r3, =0xe666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, r1
	add	r3, #0x26
	str	r7, [r5, #8]
	str	r2, [r5, #0x10]
	strb	r0, [r3]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	ldr	r1, =gScript_913__0200b308
	mov	r0, r5
	bl	__Actor_SetScript
.Lm913_2aa2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200a974

