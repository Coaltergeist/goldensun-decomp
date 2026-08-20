	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200c968
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r2, #0x18]
	ldr	r3, =.Lm968_52cc
	mov	r10, r2
	str	r3, [r2, #0x1c]
	ldr	r2, =iwram_3001e40
	ldr	r7, [r2]
	mov	r3, #3
	and	r7, r3
	mov	r5, r0
	cmp	r7, #0
	bne	.Lm968_4a14
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm968_49a6
	mov	r0, #0xf6
	bl	__PlaySound
.Lm968_49a6:
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	add	r3, r0
	ldr	r2, [r5, #8]
	lsr	r3, #16
	sub	r3, #0x18
	mov	r8, r2
	lsl	r3, #16
	add	r8, r3
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	add	r3, r0
	lsr	r3, #16
	ldr	r6, [r5, #0xc]
	sub	r3, #0x18
	lsl	r3, #16
	add	r6, r3
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	add	r3, r0
	lsr	r3, #16
	ldr	r5, [r5, #0x10]
	sub	r3, #0x18
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	mov	r3, #0x80
	lsl	r3, #8
	lsl	r0, #15
	add	r0, r3
	mov	r3, #0xcc
	lsl	r3, #14
	mov	r2, r10
	str	r0, [sp]
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_968_2008118
.Lm968_4a14:
	mov	r0, #0
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_200c968

