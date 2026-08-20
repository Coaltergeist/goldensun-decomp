	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200adcc
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm924_2df4
	ldr	r1, =0x50000c2
	ldr	r3, =0x50000ce
	ldrh	r2, [r1]
	strh	r2, [r3]
	ldr	r2, =0x50000c4
	mov	r0, #0
.Lm924_2de6:
	ldrh	r3, [r2]
	add	r0, #1
	strh	r3, [r1]
	add	r2, #2
	add	r1, #2
	cmp	r0, #5
	bls	.Lm924_2de6
.Lm924_2df4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200adcc

