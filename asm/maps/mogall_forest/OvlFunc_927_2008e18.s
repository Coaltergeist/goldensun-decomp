	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_2008e18
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x44
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xbc
	bl	__PlaySound
	add	r1, sp, #0x10
	mov	r3, #1
	mov	r2, #0
	str	r3, [r1]
	mov	r9, r1
	mov	r8, r2
	add	r7, sp, #0x38
.Lm927_e3e:
	mov	r3, r8
	lsl	r5, r3, #12
	mov	r0, r5
	bl	__cos
	mov	r3, #0
	str	r3, [r7, #4]
	str	r0, [r7]
	mov	r0, r5
	bl	__sin
	ldr	r5, [r7]
	mov	r6, r0
	mov	r1, #3
	mov	r0, r5
	str	r6, [r7, #8]
	bl	_divsi3_RAM
	add	r5, r0
	str	r5, [r7]
	mov	r1, r10
	ldr	r2, [r1, #0x10]
	ldr	r0, [r1, #8]
	ldr	r3, [r7, #4]
	ldr	r1, =0x1999
	add	r3, r1
	str	r3, [sp]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [sp, #8]
	mov	r1, #0x80
	mov	r3, r9
	str	r3, [sp, #0xc]
	lsl	r1, #13
	mov	r3, r5
	str	r6, [sp, #4]
	bl	OvlFunc_927_2008ae8
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.Lm927_e3e
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2008e18

