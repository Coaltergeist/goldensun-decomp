	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ca1c  @ 0x0801ca1c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r7, =gState
	ldr	r2, =0x205
	add	r3, r7, r2
	mov	r9, r0
	ldrb	r0, [r3]
	mov	r1, #0x18
	add	r0, #0xc
	sub	sp, #4
	bl	__modsi3
	ldr	r2, =0x206
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r5, r0
	sub	r3, #7
	lsl	r5, #18
	mov	r10, r3
	asr	r5, #16
	ldr	r3, =.L36750
	mov	r0, r5
	mov	r1, #0x60
	mov	r8, r3
	bl	__modsi3
	lsl	r0, #16
	mov	r2, r8
	asr	r0, #16
	ldrb	r6, [r2, r0]
	mov	r0, r5
	mov	r1, #0x60
	add	r0, #0x20
	bl	__modsi3
	add	r5, #0x40
	mov	r3, r8
	ldrb	r7, [r3, r0]
	mov	r1, #0x60
	mov	r0, r5
	bl	__modsi3
	mov	r3, r8
	ldrb	r2, [r3, r0]
	add	r6, r10
	add	r7, r10
	add	r2, r10
	cmp	r6, #0
	bge	.L1ca86
	mov	r6, #0
.L1ca86:
	cmp	r7, #0
	bge	.L1ca8c
	mov	r7, #0
.L1ca8c:
	cmp	r2, #0
	bge	.L1ca92
	mov	r2, #0
.L1ca92:
	cmp	r6, #0x1f
	ble	.L1ca98
	mov	r6, #0x1f
.L1ca98:
	cmp	r7, #0x1f
	ble	.L1ca9e
	mov	r7, #0x1f
.L1ca9e:
	cmp	r2, #0x1f
	ble	.L1caa4
	mov	r2, #0x1f
.L1caa4:
	ldr	r3, =0x576
	add	r3, r9
	strh	r6, [r3]
	mov	r3, #0xaf
	lsl	r3, #3
	add	r3, r9
	strh	r7, [r3]
	ldr	r3, =0x57a
	add	r3, r9
	strh	r2, [r3]
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ca1c

