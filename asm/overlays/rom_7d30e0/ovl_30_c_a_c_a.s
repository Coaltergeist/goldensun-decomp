	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2008a50
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x75
	cmp	r2, r3
	bne	.La68
	ldr	r0, =.L29b0
	b	.La7e
.La68:
	ldr	r3, =0x76
	cmp	r2, r3
	bne	.La72
	ldr	r0, =.L2a40
	b	.La7e
.La72:
	ldr	r3, =0x78
	cmp	r2, r3
	bne	.La7c
	ldr	r0, =.L2ad0
	b	.La7e
.La7c:
	ldr	r0, =.L2998
.La7e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_948_2008a50

