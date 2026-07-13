	.include "macros.inc"

	.section .text.after_88ec, "ax", %progbits


	.section .text.after_8ba4, "ax", %progbits

.thumb_func_start OvlFunc_923_2008cc0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	mov	r3, #7
	add	r6, sp, #0x10
	str	r3, [r6, #4]
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r7, r0
	cmp	r3, #0
	bne	.Lce0
	mov	r3, #5
	str	r3, [r6, #4]
.Lce0:
	ldr	r3, =0xcccc
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #0
	mov	r8, r3
	str	r3, [r6]
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r4, r0, #1
	add	r4, r0
	lsl	r3, r4, #4
	add	r4, r3
	ldr	r2, [r5]
	lsl	r3, r4, #8
	add	r4, r3
	mov	r3, #0xf
	and	r2, r3
	mov	r3, #8
	ldr	r0, [r7, #8]
	sub	r3, r2
	lsl	r3, #16
	ldr	r1, [r7, #0xc]
	add	r0, r3
	mov	r3, #0xd0
	lsl	r3, #13
	add	r1, r3
	mov	r3, r8
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0xb0
	lsl	r3, #12
	neg	r4, r4
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_923_2008cc0
