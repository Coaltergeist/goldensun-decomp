	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20086a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	ldr	r3, =0xcccc
	add	r7, sp, #0x10
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	mov	r3, #0
	str	r3, [r7]
	mov	r5, r0
	mov	r8, r3
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r4, r0, #1
	add	r4, r0
	ldr	r6, =iwram_3001e40
	lsl	r3, r4, #4
	add	r4, r3
	ldr	r2, [r6]
	lsl	r3, r4, #8
	add	r4, r3
	mov	r3, #0xf
	and	r2, r3
	mov	r10, r3
	mov	r3, #8
	sub	r3, r2
	ldr	r0, [r5, #8]
	lsl	r3, #16
	add	r0, r3
	ldr	r1, [r5, #0xc]
	mov	r3, #0xd0
	lsl	r3, #13
	add	r1, r3
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r3, #0xa0
	lsl	r3, #12
	neg	r4, r4
	str	r3, [sp, #8]
	ldr	r2, [r5, #0x10]
	mov	r8, r3
	mov	r3, #0
	str	r4, [sp]
	str	r7, [sp, #0xc]
	bl	OvlFunc_968_2008118
	ldr	r6, [r6]
	mov	r3, r10
	and	r6, r3
	cmp	r6, #0
	bne	.Lm968_73c
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	bl	__Random
	lsl	r3, r0, #3
	add	r3, r0
	lsr	r3, #16
	sub	r3, #4
	ldr	r0, [r5, #8]
	lsl	r3, #16
	add	r0, r3
	mov	r3, r8
	str	r3, [sp, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_968_2008118
.Lm968_73c:
	mov	r0, #0
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20086a0

