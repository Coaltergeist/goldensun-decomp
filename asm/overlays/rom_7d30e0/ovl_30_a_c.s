	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_20089f0
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x75
	cmp	r2, r3
	bne	.La08
	ldr	r0, =.L2898
	b	.La1e
.La08:
	ldr	r3, =0x76
	cmp	r2, r3
	bne	.La12
	ldr	r0, =.L28e0
	b	.La1e
.La12:
	ldr	r3, =0x78
	cmp	r2, r3
	bne	.La1c
	ldr	r0, =.L2928
	b	.La1e
.La1c:
	ldr	r0, =.L2868
.La1e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_948_20089f0

