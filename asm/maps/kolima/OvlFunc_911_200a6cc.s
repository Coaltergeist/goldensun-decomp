	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_911_200a6cc
	push	{r5, lr}
	ldr	r3, =.Lm911_369c
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.Lm911_2702
	ldr	r1, =0xffc4ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.Lm911_26f4
	mov	r1, #0xd3
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.Lm911_26f4
	ldr	r1, =0x100ffff
	cmp	r3, r1
	ble	.Lm911_2756
.Lm911_26f4:
	ldr	r1, =0xffbaffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.Lm911_276a
	mov	r1, #0xc2
	b	.Lm911_2748
.Lm911_2702:
	ldr	r1, =0xffc4ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.Lm911_2720
	mov	r1, #0xc2
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.Lm911_2720
	mov	r1, #0xe6
	lsl	r1, #16
	cmp	r3, r1
	blt	.Lm911_2756
.Lm911_2720:
	ldr	r1, =0xff90ffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.Lm911_273c
	mov	r1, #0xd8
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.Lm911_273c
	mov	r1, #0xfa
	lsl	r1, #16
	cmp	r3, r1
	blt	.Lm911_2756
.Lm911_273c:
	ldr	r1, =0xffb1ffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.Lm911_276a
	mov	r1, #0xf1
.Lm911_2748:
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.Lm911_276a
	ldr	r2, =0x114ffff
	cmp	r3, r2
	bgt	.Lm911_276a
.Lm911_2756:
	mov	r0, #0x6a
	bl	__PlaySound
	ldr	r1, =gScript_911__0200b5ec
	mov	r0, r5
	bl	__Actor_SetScript
	ldr	r2, =.Lm911_3698
	mov	r3, #1
	str	r3, [r2]
.Lm911_276a:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_200a6cc

