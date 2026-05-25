	.include "macros.inc"

.thumb_func_start OvlFunc_7e7574_9dc
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.L9f4
	ldr	r0, =.L62a4
	b	.La0a
.L9f4:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.L9fe
	ldr	r0, =.L64b4
	b	.La0a
.L9fe:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.La08
	ldr	r0, =.L6754
	b	.La0a
.La08:
	ldr	r0, =.L6814
.La0a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7e7574_9dc

