	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_20086a0
	push	{r5, r6, lr}
	mov	r6, #0x80
	lsl	r6, #19
	ldrh	r2, [r6]
	ldr	r3, =0xfdff
	and	r3, r2
	lsl	r3, #16
	asr	r5, r3, #16
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.Lm932_5238
	ldrh	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcc	.Lm932_6c8
	mov	r3, #0x80
	lsl	r3, #2
	orr	r5, r3
.Lm932_6c8:
	lsl	r3, r5, #16
	lsr	r3, #16
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20086a0

