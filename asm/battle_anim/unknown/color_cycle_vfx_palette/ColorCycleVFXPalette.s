	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ColorCycleVFXPalette  @ 0x080d40ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	lsl	r5, #10
	add	r1, r5, r1
	mov	r0, r1
	sub	sp, #0x80
	mov	r6, r2
	mov	r8, r3
	bl	sin
	lsl	r0, #4
	add	r6, r5, r6
	asr	r0, #15
	mov	r10, r0
	mov	r0, r6
	bl	sin
	add	r5, r8
	lsl	r0, #4
	asr	r7, r0, #15
	mov	r0, r5
	bl	sin
	mov	r3, #0
	mov	r2, sp
	lsl	r0, #4
	mov	r6, sp
	strh	r3, [r2]
	asr	r0, #15
	mov	r5, #1
	add	r6, #2
.Ld4130:
	mov	r2, r10
	add	r3, r5, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r4, r3, #1
	add	r3, r5, r7
	lsr	r2, r3, #31
	add	r3, r2
	asr	r1, r3, #1
	add	r3, r5, r0
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	cmp	r4, #0
	bge	.Ld4150
	mov	r4, #0
.Ld4150:
	cmp	r4, #0x1f
	ble	.Ld4156
	mov	r4, #0x1f
.Ld4156:
	cmp	r1, #0
	bge	.Ld415c
	mov	r1, #0
.Ld415c:
	cmp	r1, #0x1f
	ble	.Ld4162
	mov	r1, #0x1f
.Ld4162:
	cmp	r3, #0
	bge	.Ld4168
	mov	r3, #0
.Ld4168:
	cmp	r3, #0x1f
	ble	.Ld416e
	mov	r3, #0x1f
.Ld416e:
	lsl	r3, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r4
	add	r5, #1
	strh	r3, [r6]
	add	r6, #2
	cmp	r5, #0x40
	bne	.Ld4130
	mov	r1, sp
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	ldr	r0, =0x5000002
	bl	_call_via_r3
	add	sp, #0x80
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end ColorCycleVFXPalette
