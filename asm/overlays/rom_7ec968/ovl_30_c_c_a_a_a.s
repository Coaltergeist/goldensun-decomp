	.include "macros.inc"

.thumb_func_start OvlFunc_963_200808c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xaa
	cmp	r2, r3
	bne	.La4
	ldr	r0, =.Lba8
	b	.Lbe
.La4:
	ldr	r3, =0xa9
	cmp	r2, r3
	bne	.Lbc
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lb8
	ldr	r0, =.Lc98
	b	.Lbe
.Lb8:
	ldr	r0, =gOvl_02008c50
	b	.Lbe
.Lbc:
	ldr	r0, =.Lb90
.Lbe:
	pop	{r1}
	bx	r1
.func_end OvlFunc_963_200808c
