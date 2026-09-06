	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common2_380
	push	{r4, lr}
	sub	sp, #0x1c
	mov	r3, sp
	add	r4, sp, #8
	str	r0, [r3]
	str	r1, [r3, #4]
	mov	r0, r3
	mov	r1, r4
	bl	OvlFunc_common2_618
	mov	r0, r4
	bl	OvlFunc_common2_40c
	cmp	r0, #0
	bne	.Lc2_3a8
	mov	r0, r4
	bl	OvlFunc_common2_3ec
	cmp	r0, #0
	beq	.Lc2_3ac
.Lc2_3a8:
	mov	r0, #0
	b	.Lc2_3e4
.Lc2_3ac:
	mov	r0, r4
	bl	OvlFunc_common2_3fc
	cmp	r0, #0
	bne	.Lc2_3c2
	ldr	r3, [r4, #8]
	mov	r0, #0
	cmp	r3, #0
	blt	.Lc2_3e4
	cmp	r3, #0x1e
	ble	.Lc2_3d0
.Lc2_3c2:
	ldr	r3, [r4, #4]
	neg	r0, r3
	orr	r0, r3
	ldr	r3, =0x7fffffff
	lsr	r0, #31
	add	r0, r3
	b	.Lc2_3e4
.Lc2_3d0:
	mov	r2, #0x3c
	sub	r2, r3
	ldr	r0, [r4, #0xc]
	ldr	r1, [r4, #0x10]
	bl	OvlFunc_common2_41c
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.Lc2_3e4
	neg	r0, r0
.Lc2_3e4:
	add	sp, #0x1c
	pop	{r4, pc}
.func_end OvlFunc_common2_380

