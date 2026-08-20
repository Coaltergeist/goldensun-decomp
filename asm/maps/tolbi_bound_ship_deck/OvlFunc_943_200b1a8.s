	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b1a8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001e70
	ldr	r0, =.Lm943_5b58
	ldr	r3, [r3]
	mov	r8, r0
	ldr	r0, [r0]
	ldr	r6, [r3]
	mov	r9, r3
	bl	__cos
	ldr	r1, =.Lm943_5b38
	mov	r5, r0
	ldr	r0, [r1]
	mov	r10, r1
	bl	__sin
	ldr	r3, [r6]
	asr	r5, #1
	add	r3, r5
	stmia	r6!, {r3}
	ldr	r3, [r6]
	add	r3, r0
	str	r3, [r6]
	bl	__Random
	lsl	r3, r0, #1
	mov	r5, r8
	add	r3, r0
	ldr	r2, [r5]
	lsl	r3, #7
	lsr	r3, #16
	add	r2, r3
	str	r2, [r5]
	bl	__Random
	mov	r1, r10
	ldr	r3, [r1]
	lsl	r0, #9
	ldrh	r2, [r5]
	lsr	r0, #16
	ldr	r1, =0xffff
	add	r3, r0
	str	r2, [r5]
	and	r3, r1
	mov	r2, r10
	str	r3, [r2]
	ldr	r1, =.Lm943_5b50
	mov	r0, #0x82
	ldr	r3, [r1]
	lsl	r0, #1
	add	r0, r9
	str	r3, [r0, #8]
	ldr	r4, =.Lm943_5b60
	ldr	r2, [r1]
	ldr	r3, [r4]
	sub	r2, r3
	str	r2, [r1]
	cmp	r2, #0
	bge	.Lm943_3230
	mov	r5, #0x80
	lsl	r5, #14
	add	r3, r2, r5
	str	r3, [r1]
.Lm943_3230:
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #14
	cmp	r3, r2
	ble	.Lm943_3240
	ldr	r5, =0xffe00000
	add	r3, r5
	str	r3, [r1]
.Lm943_3240:
	ldr	r3, [r1, #4]
	str	r3, [r0, #0xc]
	ldr	r2, [r1, #4]
	ldr	r3, [r4, #4]
	sub	r2, r3
	str	r2, [r1, #4]
	cmp	r2, #0
	bge	.Lm943_3258
	mov	r0, #0x80
	lsl	r0, #14
	add	r3, r2, r0
	str	r3, [r1, #4]
.Lm943_3258:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b1a8

