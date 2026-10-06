	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f7e60  @ 0x080f7e60
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r6, #0
	mov	r10, r0
	mov	r11, r2
	cmp	r6, r8
	bge	.Lf7ed8
	ldr	r0, =0x3ff
	mov	r7, #0x92
	lsl	r7, #1
	mov	r9, r0
	add	r7, r10
.Lf7e84:
	mov	r3, r9
	mov	r0, r7
	mov	r2, r10
	and	r0, r3
	add	r5, r2, r6
	bl	Func_80f7e34
	ldr	r3, =ewram_2004c00
	ldr	r0, =0x4438
	ldr	r1, [r3]
	add	r3, r1, r0
	ldr	r2, [r3]
	mov	r0, r11
	ldrb	r4, [r0, r2]
	add	r2, #1
	ldr	r0, =0x4440
	str	r2, [r3]
	add	r3, r1, r0
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.Lf7ec0
	mov	r2, r9
	and	r5, r2
	ldr	r0, =0x3404
	lsl	r3, r5, #2
	mov	r2, #1
	add	r3, r0
	neg	r2, r2
	str	r2, [r1, r3]
	b	.Lf7ed8
.Lf7ec0:
	mov	r0, r9
	and	r0, r5
	ldr	r2, =0x3404
	lsl	r3, r0, #2
	add	r3, r2
	str	r4, [r1, r3]
	add	r6, #1
	bl	Func_80f7df0
	add	r7, #1
	cmp	r6, r8
	blt	.Lf7e84
.Lf7ed8:
	add	r6, #1
	cmp	r6, r8
	bge	.Lf7f0a
	ldr	r3, =0x3ff
	ldr	r0, =ewram_2004c00
	mov	r7, #1
	mov	r11, r3
	mov	r9, r0
	neg	r7, r7
.Lf7eea:
	mov	r2, r10
	add	r5, r2, r6
	mov	r3, r11
	and	r5, r3
	mov	r0, r5
	bl	Func_80f7e34
	mov	r0, r9
	ldr	r2, =0x3404
	ldr	r3, [r0]
	lsl	r5, #2
	add	r5, r2
	add	r6, #1
	str	r7, [r3, r5]
	cmp	r6, r8
	blt	.Lf7eea
.Lf7f0a:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f7e60

