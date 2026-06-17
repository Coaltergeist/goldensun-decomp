	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80122c8  @ 0x080122c8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	bl	Func_8012204
	ldr	r3, [r5]
	mov	r7, r0
	mov	r4, #0
	cmp	r3, #0
	bge	.L122e0
	ldr	r2, =0x1fffff
	add	r3, r2
.L122e0:
	ldr	r0, [r5, #8]
	asr	r2, r3, #21
	mov	r1, #0x1f
	and	r2, r1
	cmp	r0, #0
	bge	.L122f0
	ldr	r3, =0x1fffff
	add	r0, r3
.L122f0:
	asr	r3, r0, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r2, =ewram_2020000
	lsl	r3, #2
	add	r0, r3, r2
	ldrb	r2, [r0, #3]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1230a
	mov	r4, #0x10
.L1230a:
	ldr	r3, [r0]
	lsl	r3, #1
	lsr	r3, #25
	str	r3, [r6]
	cmp	r3, #0x15
	bne	.L12318
	mov	r4, #0x20
.L12318:
	ldr	r3, =.L1353c
	add	r2, r4, r7
	ldrb	r0, [r3, r2]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80122c8

