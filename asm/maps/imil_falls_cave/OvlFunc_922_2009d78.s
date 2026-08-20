	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_2009d78
	push	{r5, r6, r7, lr}
	ldr	r2, =iwram_3001e40
	ldr	r7, [r2]
	mov	r3, #3
	and	r7, r3
	sub	sp, #0x28
	cmp	r7, #0
	bne	.Lm922_1dee
	add	r6, sp, #0x10
	mov	r3, #0xa
	str	r3, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	ldr	r3, =0x1cccc
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x14]
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm922_1dac
	mov	r0, #0x88
	bl	__PlaySound
.Lm922_1dac:
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	ldr	r5, =0xffff0000
	lsl	r0, #16
	sub	r5, r0
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	neg	r3, r3
	str	r3, [sp]
	ldr	r3, =0xd0001
	mov	r0, #0x9a
	mov	r1, #0x80
	mov	r2, #0xde
	str	r3, [sp, #8]
	lsl	r0, #17
	lsl	r1, #15
	lsl	r2, #16
	mov	r3, r5
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_922_2009c18
.Lm922_1dee:
	add	sp, #0x28
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009d78

