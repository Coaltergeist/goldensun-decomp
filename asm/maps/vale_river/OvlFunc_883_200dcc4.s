	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_200dcc4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.Lm883_5ce4
	mov	r0, r5
	bl	__DeleteActor
	b	.Lm883_5d0e
.Lm883_5ce4:
	lsl	r0, #10
	bl	__sin
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.Lm883_5d0e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dcc4

