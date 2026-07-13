	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_200808c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	mov	r5, #1
	and	r3, r2
	mov	r7, r0
	neg	r5, r5
	cmp	r3, #3
	bne	.Lee
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	ldr	r0, =0x303
	lsl	r3, #26
	lsr	r5, r3, #30
	bl	__SetFlag
	b	.Lf4
.Lb0:
	ldr	r3, =CHAR_ARRAY_ARRAY_971__02009928
	lsl	r2, r7, #2
	add	r6, r2, r3
	cmp	r5, #0
	beq	.Lc2
	ldr	r0, =0x302
	bl	__SetFlag
	b	.Lc8
.Lc2:
	ldr	r0, =0x302
	bl	__ClearFlag
.Lc8:
	ldr	r0, =0x302
	bl	__GetFlag
	mov	r3, #1
	eor	r0, r3
	lsl	r2, r0, #1
	ldr	r3, =ewram_2002024
	add	r2, r0
	lsl	r2, #3
	add	r2, r3
	ldr	r3, =.L1940
	ldrb	r3, [r3, r7]
	lsl	r3, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r6]
	cmp	r2, r3
	bne	.L102
	mov	r0, #1
	b	.L104
.Lee:
	ldr	r0, =0x303
	bl	__ClearFlag
.Lf4:
	cmp	r5, #0
	blt	.L102
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lb0
.L102:
	mov	r0, #0
.L104:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_200808c
