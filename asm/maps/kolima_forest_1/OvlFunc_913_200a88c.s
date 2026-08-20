	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_913_200a88c
	push	{r5, lr}
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.Lm913_28c4
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.Lm913_28b4
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2360000
	cmp	r3, r1
	ble	.Lm913_28b4
	mov	r1, #0x99
	lsl	r1, #18
	cmp	r3, r1
	blt	.Lm913_2912
.Lm913_28b4:
	ldr	r1, =0xff35ffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.Lm913_2926
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	b	.Lm913_2906
.Lm913_28c4:
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.Lm913_28de
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	cmp	r3, r1
	ble	.Lm913_28de
	ldr	r1, =0x248ffff
	cmp	r3, r1
	ble	.Lm913_2912
.Lm913_28de:
	ldr	r1, =0xff0bffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.Lm913_28f6
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x23b0000
	cmp	r3, r1
	ble	.Lm913_28f6
	ldr	r1, =0x25cffff
	cmp	r3, r1
	ble	.Lm913_2912
.Lm913_28f6:
	ldr	r1, =0xff2cffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.Lm913_2926
	mov	r1, #0x95
	ldr	r3, [r5, #0x10]
	lsl	r1, #18
.Lm913_2906:
	cmp	r3, r1
	ble	.Lm913_2926
	mov	r2, #0x9e
	lsl	r2, #18
	cmp	r3, r2
	bge	.Lm913_2926
.Lm913_2912:
	mov	r0, #0x6a
	bl	__PlaySound
	ldr	r1, =gScript_913__0200b2e4
	mov	r0, r5
	bl	__Actor_SetScript
	ldr	r2, =.Lm913_3390
	mov	r3, #1
	str	r3, [r2]
.Lm913_2926:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_200a88c

