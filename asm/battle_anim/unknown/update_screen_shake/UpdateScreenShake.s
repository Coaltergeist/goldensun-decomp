	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UpdateScreenShake  @ 0x080e155c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	mov	r6, r0
	mov	r7, r1
	ldr	r0, =0x77a8
	ldr	r1, [r3]
	add	r0, r1
	ldr	r3, [r0]
	mov	r8, r0
	cmp	r3, #0
	ble	.Le15b0
	bl	Random
	sub	r6, #1
	and	r6, r0
	bl	Random
	lsr	r5, r7, #31
	add	r5, r7, r5
	sub	r2, r7, #1
	asr	r5, #1
	and	r2, r0
	sub	r2, r5
	ldr	r1, =iwram_3001ad0
	mov	r3, r2
	sub	r6, r5
	add	r3, #0x20
	strh	r6, [r1, #4]
	strh	r3, [r1, #6]
	ldr	r1, =gPhysVec
	mov	r3, #0x78
	sub	r6, r3, r6
	sub	r3, r2
	str	r6, [r1, #0xc]
	str	r3, [r1, #0x10]
	mov	r2, r8
	ldr	r3, [r2]
	sub	r3, #1
	str	r3, [r2]
	b	.Le15ca
.Le15b0:
	ldr	r0, =0x77a0
	add	r3, r1, r0
	ldr	r3, [r3]
	ldr	r2, =iwram_3001ad0
	add	r0, #4
	strh	r3, [r2, #4]
	add	r3, r1, r0
	ldr	r3, [r3]
	strh	r3, [r2, #6]
	ldr	r2, =gPhysVec
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	str	r3, [r2, #0x10]
.Le15ca:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end UpdateScreenShake
