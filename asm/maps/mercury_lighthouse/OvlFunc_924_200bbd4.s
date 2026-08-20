	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200bbd4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0x38
	add	r5, sp, #0x10
	mov	r3, #7
	str	r3, [r5, #4]
	mov	r3, #1
	str	r3, [r5]
	ldr	r3, =0xb333
	mov	r10, r1
	mov	r8, r2
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	mov	r6, r0
	bl	__Random
	lsl	r0, #4
	lsr	r0, #16
	ldr	r3, =0xfff80000
	lsl	r0, #16
	add	r6, r0
	add	r6, r3
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r0, #16
	ldr	r3, =0xfffc0000
	add	r8, r0
	add	r8, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xb0
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r0, r6
	mov	r1, r10
	mov	r2, r8
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200bbd4

