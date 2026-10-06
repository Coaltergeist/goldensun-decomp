	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200d900
	push	{r5, lr}
	ldr	r3, =iwram_3001edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r5, [r2]
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r0, [r2, r3]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.Lm924_5926
	sub	r3, #1
	b	.Lm924_5938
.Lm924_5926:
	bl	OvlFunc_924_200d158
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, #0xa
.Lm924_5938:
	str	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200d900

