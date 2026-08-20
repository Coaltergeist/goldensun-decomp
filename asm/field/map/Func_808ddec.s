	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808ddec  @ 0x0808ddec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #1
	sub	sp, #4
	neg	r1, r1
	mov	r2, #0x20
	mov	r9, r0
	str	r1, [sp]
	mov	r11, r2
	bl	GetFieldActor
	mov	r7, r0
	cmp	r7, #0
	beq	.L8def2
	mov	r3, #0
	mov	r10, r3
.L8de16:
	cmp	r10, r9
	beq	.L8dee8
	mov	r0, r10
	bl	GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L8dee8
	mov	r1, #0x59
	add	r1, r6
	ldrb	r2, [r1]
	mov	r3, #8
	and	r3, r2
	mov	r8, r1
	cmp	r3, #0
	bne	.L8dee8
	ldr	r4, [r6, #0xc]
	ldr	r1, [r7, #0xc]
	sub	r3, r4, r1
	cmp	r3, #0
	blt	.L8de48
	ldr	r2, =0x2fffff
	cmp	r3, r2
	ble	.L8de50
	b	.L8dee8
.L8de48:
	ldr	r2, =0x2fffff
	sub	r3, r1, r4
	cmp	r3, r2
	bgt	.L8dee8
.L8de50:
	ldr	r2, [r6, #8]
	ldr	r3, [r7, #8]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L8de5e
	ldr	r3, =0xffff
	add	r0, r3
.L8de5e:
	sub	r2, r4, r1
	asr	r0, #16
	cmp	r2, #0
	bge	.L8de6a
	ldr	r1, =0xffff
	add	r2, r1
.L8de6a:
	asr	r1, r2, #16
	ldr	r3, [r7, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r2, r3
	cmp	r2, #0
	bge	.L8de7a
	ldr	r3, =0xffff
	add	r2, r3
.L8de7a:
	asr	r3, r2, #16
	mov	r2, r0
	mul	r2, r0
	mov	r0, r2
	mov	r2, r1
	mul	r2, r1
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L8deb2
	lsl	r0, r5, #2
	add	r0, r5
	lsl	r0, #1
	mov	r1, #0xd
	bl	__divsi3
	mov	r5, r0
.L8deb2:
	cmp	r5, r11
	bge	.L8dee8
	ldr	r3, [r7, #0x10]
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r7, #8]
	sub	r1, r3
	bl	atan2
	lsl	r0, #16
	lsr	r0, #16
	cmp	r5, #0xb
	ble	.L8dee2
	ldrh	r3, [r7, #6]
	sub	r3, r0, r3
	lsl	r3, #16
	ldr	r1, =0xffffd001
	asr	r0, r3, #16
	cmp	r0, r1
	blt	.L8dee8
	ldr	r2, =0x2fff
	cmp	r0, r2
	bgt	.L8dee8
.L8dee2:
	mov	r3, r10
	str	r3, [sp]
	mov	r11, r5
.L8dee8:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x42
	ble	.L8de16
.L8def2:
	ldr	r0, [sp]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808ddec

