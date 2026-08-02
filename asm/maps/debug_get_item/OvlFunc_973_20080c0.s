	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_973_20080c0
	push	{r5, r6, r7, lr}
	sub	sp, #0x20
	mov	r7, r0
	mov	r0, sp
	bl	__Func_80796c4
	cmp	r0, #0
	ble	.Le4
	mov	r6, sp
	mov	r5, r0
.Ld4:
	ldrh	r0, [r6]
	mov	r1, r7
	sub	r5, #1
	add	r6, #2
	bl	OvlFunc_973_20080a0
	cmp	r5, #0
	bne	.Ld4
.Le4:
	add	sp, #0x20
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_973_20080c0
