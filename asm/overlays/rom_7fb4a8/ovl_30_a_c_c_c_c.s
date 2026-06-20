	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008f30
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	__GetPartySize
	mov	r5, r0
	mov	r0, #0xb9
	lsl	r0, #1
	mov	r6, #3
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lf4a
	mov	r6, #4
.Lf4a:
	cmp	r5, r6
	ble	.Lf50
	mov	r5, r6
.Lf50:
	mov	r1, #0
	cmp	r1, r5
	bge	.Lf7a
	ldr	r3, =gState
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, r3, r0
	mov	r0, r2
.Lf60:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0xff
	beq	.Lf7a
	ldrb	r3, [r2]
	cmp	r3, r7
	bne	.Lf72
	mov	r0, #1
	b	.Lf7c
.Lf72:
	add	r1, #1
	add	r2, #1
	cmp	r1, r5
	blt	.Lf60
.Lf7a:
	mov	r0, #0
.Lf7c:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008f30

