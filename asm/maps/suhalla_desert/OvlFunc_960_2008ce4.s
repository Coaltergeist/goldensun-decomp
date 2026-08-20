	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_2008ce4
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0x3f
	and	r3, r2
	lsl	r3, #16
	lsr	r2, r3, #16
	cmp	r2, #0x1f
	bls	.Lm960_cfc
	ldr	r3, .Lm960_d14	@ 0x40
	sub	r3, r2
	lsl	r3, #16
.Lm960_cfc:
	lsr	r3, #17
	add	r3, #7
	lsl	r1, r3, #5
	lsl	r2, r3, #10
	orr	r2, r1
	orr	r3, r2
	lsl	r3, #16
	ldr	r2, =0x500019e
	lsr	r3, #16
	strh	r3, [r2]
	b	.Lm960_d20

	.align	2, 0
.Lm960_d14:
	.word	0x40
	.pool

.Lm960_d20:
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008ce4

