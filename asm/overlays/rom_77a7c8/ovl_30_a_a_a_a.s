	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_2008030
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0x8e
	ldr	r6, [r3]
	ldr	r3, =gState
	lsl	r2, #2
	add	r7, r3, r2
	mov	r3, #0xd6
	lsl	r3, #1
	add	r5, r6, r3
	ldr	r3, [r5]
	lsl	r0, r3, #3
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	ldr	r3, [r7]
	cmp	r3, r0
	blt	.L7a
	bl	__Random
	mov	r2, #0x80
	lsl	r2, #8
	cmp	r0, r2
	bcs	.L76
	ldr	r0, =0x808
	mov	r1, #3
	bl	__Func_8091f14
	mov	r3, #0xd4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
	b	.L7a
.L76:
	ldr	r3, [r5]
	str	r3, [r7]
.L7a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008030
