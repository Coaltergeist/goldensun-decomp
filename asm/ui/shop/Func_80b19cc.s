	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b19cc  @ 0x080b19cc
	push	{r5, r6, r7, lr}
	mov	r6, r0
	bl	_GetItemInfo
	ldrh	r3, [r0]
	mov	r0, r6
	lsl	r7, r3, #16
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	asr	r5, r7, #16
	cmp	r3, #0
	beq	.Lb19ee
	mov	r5, #0
	b	.Lb1a0c
.Lb19ee:
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r6
	cmp	r3, #0
	beq	.Lb1a00
	lsr	r3, r7, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lb1a0c
.Lb1a00:
	lsl	r3, r5, #1
	add	r0, r3, r5
	cmp	r0, #0
	bge	.Lb1a0a
	add	r0, #3
.Lb1a0a:
	asr	r5, r0, #2
.Lb1a0c:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b19cc

