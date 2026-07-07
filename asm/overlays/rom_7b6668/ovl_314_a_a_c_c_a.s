	.include "macros.inc"

.thumb_func_start OvlFunc_928_2008370
	push	{r5, lr}
	mov	r0, #0xe
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	bne	.L3b6
	add	r4, sp, #0x10
	mov	r3, #1
	str	r3, [r4]
	mov	r3, #9
	str	r3, [r4, #4]
	mov	r3, #0xa9
	strh	r3, [r4, #0x18]
	ldr	r3, =.L1740
	ldr	r2, [r5, #0x10]
	str	r3, [r4, #0x1c]
	ldr	r3, =0xffff0000
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	add	r2, r3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xcc
	lsl	r3, #14
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L3b6:
	add	sp, #0x38
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008370

