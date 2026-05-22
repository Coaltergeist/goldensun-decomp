	.include "macros.inc"

.thumb_func_start OvlFunc_e20
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x39
	cmp	r2, r3
	bne	.Le38
	ldr	r0, =.L650c
	b	.Le4e
.Le38:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Le42
	ldr	r0, =.L635c
	b	.Le4e
.Le42:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Le4c
	ldr	r0, =.L623c
	b	.Le4e
.Le4c:
	ldr	r0, =.L60ec
.Le4e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e20

