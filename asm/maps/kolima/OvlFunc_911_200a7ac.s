	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_911_200a7ac
	push	{r5, r6, r7, lr}
	ldr	r2, =.Lm911_3694
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #2
	beq	.Lm911_27e0
	cmp	r3, #2
	bhi	.Lm911_27c2
	cmp	r3, #1
	beq	.Lm911_27c8
	b	.Lm911_281e
.Lm911_27c2:
	cmp	r3, #3
	beq	.Lm911_2802
	b	.Lm911_281e
.Lm911_27c8:
	ldr	r2, =.Lm911_3690
	ldr	r1, =0x3a97
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.Lm911_27d6
	add	r3, #0x32
	str	r3, [r2]
.Lm911_27d6:
	ldr	r2, =.Lm911_368c
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #14
	b	.Lm911_27f6
.Lm911_27e0:
	ldr	r2, =.Lm911_3690
	ldr	r1, =0x752f
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.Lm911_27ee
	add	r3, #0x32
	str	r3, [r2]
.Lm911_27ee:
	ldr	r2, =.Lm911_368c
	mov	r1, #0xc0
	ldr	r3, [r2]
	lsl	r1, #13
.Lm911_27f6:
	cmp	r3, r1
	ble	.Lm911_281e
	ldr	r1, =0xffffc000
	add	r3, r1
	str	r3, [r2]
	b	.Lm911_281e
.Lm911_2802:
	ldr	r0, =.Lm911_368c
	ldr	r3, =0xff800000
	ldr	r1, [r0]
	cmp	r1, r3
	bge	.Lm911_2810
	str	r5, [r2]
	b	.Lm911_281e
.Lm911_2810:
	ldr	r3, =.Lm911_3690
	ldr	r2, [r3]
	add	r2, #0x32
	str	r2, [r3]
	ldr	r2, =0xffffc000
	add	r3, r1, r2
	str	r3, [r0]
.Lm911_281e:
	ldr	r7, =iwram_3001e40
	ldr	r3, [r7]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm911_28da
	ldr	r0, =0x11d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm911_28da
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r7]
	mov	r2, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.Lm911_2852
	mov	r0, #0xf6
	bl	__PlaySound
.Lm911_2852:
	ldr	r3, =.Lm911_3694
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm911_2874
	bl	__Random
	ldr	r3, =.Lm911_3690
	ldr	r3, [r3]
	mul	r3, r0
	ldr	r2, [r6]
	lsr	r3, #16
	lsl	r3, #8
	add	r2, r3
	ldr	r3, =.Lm911_368c
	ldr	r3, [r3]
	add	r7, r2, r3
	b	.Lm911_2882
.Lm911_2874:
	bl	__Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r1, =0xff800000
	add	r3, r0
	add	r7, r3, r1
.Lm911_2882:
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
	ldr	r1, =gScript_911__0200b610
	mov	r0, r5
	bl	__Actor_SetScript
.Lm911_28da:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_200a7ac

