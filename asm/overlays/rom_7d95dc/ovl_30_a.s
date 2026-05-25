	.include "macros.inc"

.thumb_func_start OvlFunc_7d95dc_30
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L3094
	b	.L54
.L48:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L3274
	b	.L54
.L52:
	ldr	r0, =.L3034
.L54:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7d95dc_30

