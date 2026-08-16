	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80974d8  @ 0x080974d8
	push	{r5, r6, lr}
	ldr	r2, =iwram_3001ebc
	mov	r1, #0xcf
	ldr	r3, [r2]
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	sp, #0xc
	mov	r6, r0
	cmp	r3, #3
	bne	.L97504
	mov	r5, sp
	mov	r1, r5
	bl	PhysMove
	ldr	r3, [r5]
	lsl	r3, #16
	str	r3, [r6]
	ldr	r3, [r5, #4]
	lsl	r3, #16
	b	.L97528
.L97504:
	mov	r3, r2
	sub	r3, #0x4c
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0xe4
	add	r2, #0xe8
	ldr	r1, [r3]
	ldr	r0, [r2]
	ldr	r3, =0xffff0000
	and	r1, r3
	and	r0, r3
	ldr	r3, [r6]
	sub	r3, r1
	ldr	r2, [r6, #4]
	str	r3, [r6]
	ldr	r3, [r6, #8]
	sub	r3, r2
	sub	r3, r0
.L97528:
	str	r3, [r6, #8]
	mov	r3, #0
	str	r3, [r6, #4]
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80974d8
