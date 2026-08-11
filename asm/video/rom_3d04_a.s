	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8003d28  @ 0x08003d28
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001d00
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	ldrb	r3, [r3]
	mov	r8, r1
	mov	r9, r3
	mov	r1, #2
	ldrsh	r3, [r0, r1]
	mov	r2, r9
	ldrh	r6, [r0, #4]
	mov	r10, r3
	mov	r0, #0
	cmp	r2, #0x1f
	bhi	.L3dd2
	mov	r3, r9
	lsl	r2, r3, #3
	ldr	r3, =iwram_3001d40
	add	r7, r2, r3
	cmp	r8, r10
	beq	.L3d62
	mov	r1, r8
	neg	r3, r1
	cmp	r3, r10
	bne	.L3d8a
.L3d62:
	cmp	r6, #0
	bne	.L3d8a
	mov	r0, #0x80
	ldr	r3, =divsi3_RAM
	mov	r1, r10
	lsl	r0, #9
	bl	_call_via_r3
	mov	r1, r8
	neg	r3, r1
	mov	r2, r0
	cmp	r3, r10
	bne	.L3d7e
	neg	r2, r0
.L3d7e:
	lsl	r3, r2, #16
	lsr	r3, #16
	str	r3, [r7]
	lsl	r3, r0, #16
	str	r3, [r7, #4]
	b	.L3dc8
.L3d8a:
	mov	r0, r6
	bl	sin
	mov	r5, r0
	mov	r0, r6
	bl	cos
	mov	r1, r8
	mov	r6, r0
	bl	__divsi3
	mov	r1, r8
	strh	r0, [r7]
	mov	r0, r5
	bl	__divsi3
	add	r7, #2
	neg	r5, r5
	strh	r0, [r7]
	mov	r1, r10
	mov	r0, r5
	bl	__divsi3
	add	r7, #2
	strh	r0, [r7]
	mov	r1, r10
	mov	r0, r6
	bl	__divsi3
	add	r7, #2
	strh	r0, [r7]
.L3dc8:
	ldr	r2, =iwram_3001d00
	mov	r3, r9
	add	r3, #1
	strb	r3, [r2]
	mov	r0, r9
.L3dd2:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8003d28

