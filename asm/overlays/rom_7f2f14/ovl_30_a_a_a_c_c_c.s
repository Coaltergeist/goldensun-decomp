	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20085e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	sub	sp, #0x38
	mov	r10, r0
	cmp	r7, #0
	bne	.L678
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	mov	r2, #0x10
	mov	r3, #3
	add	r2, sp
	sub	r3, r0
	str	r3, [r2]
	ldr	r3, =0x6666
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0xe
	str	r3, [r2, #4]
	mov	r8, r2
	bl	__Random
	lsl	r3, r0, #3
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r6, [r2, #8]
	sub	r3, #4
	lsl	r3, #16
	add	r6, r3
	bl	__Random
	lsl	r0, #5
	mov	r2, r10
	lsr	r0, #16
	mov	r3, #0x20
	ldr	r5, [r2, #0xc]
	sub	r3, r0
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xa0
	lsl	r3, #11
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	mov	r3, #0xb0
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_968_2008118
.L678:
	mov	r0, #0
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20085e4
