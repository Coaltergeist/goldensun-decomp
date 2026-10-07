	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200a648
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm924_2670
	ldr	r1, =0x5000050
	ldr	r3, =0x500005e
	ldrh	r2, [r1]
	strh	r2, [r3]
	ldr	r2, =0x5000052
	mov	r0, #0
.Lm924_2662:
	ldrh	r3, [r2]
	add	r0, #1
	strh	r3, [r1]
	add	r2, #2
	add	r1, #2
	cmp	r0, #6
	bls	.Lm924_2662
.Lm924_2670:
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a648

