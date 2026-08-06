	.include "macros.inc"

.thumb_func_start OvlFunc_common2_304
	push	{r4, r5, lr}
	sub	sp, #0x14
	mov	r5, sp
	mov	r3, #3
	lsr	r2, r0, #31
	str	r3, [r5]
	str	r2, [r5, #4]
	cmp	r0, #0
	bne	.Lc2_31c
	mov	r3, #2
	str	r3, [r5]
	b	.Lc2_36a
.Lc2_31c:
	mov	r3, #0x3c
	str	r3, [r5, #8]
	cmp	r2, #0
	beq	.Lc2_338
	mov	r3, #0x80
	lsl	r3, #24
	cmp	r0, r3
	bne	.Lc2_332
	ldr	r1, =0
	ldr	r0, .Lc2_374	@ 0xc1e00000
	b	.Lc2_370
.Lc2_332:
	neg	r3, r0
	asr	r4, r3, #31
	b	.Lc2_33c
.Lc2_338:
	mov	r3, r0
	asr	r4, r0, #31
.Lc2_33c:
	str	r3, [r5, #0xc]
	str	r4, [r5, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfffffff
	cmp	r3, r2
	bhi	.Lc2_36a
	mov	r0, r5
	mov	r12, r2
.Lc2_34c:
	ldr	r3, [r0, #0xc]
	ldr	r4, [r0, #0x10]
	lsr	r1, r3, #31
	lsl	r2, r4, #1
	mov	r4, r1
	lsl	r3, #1
	orr	r4, r2
	str	r3, [r0, #0xc]
	str	r4, [r0, #0x10]
	ldr	r3, [r0, #8]
	sub	r3, #1
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	cmp	r3, r12
	bls	.Lc2_34c
.Lc2_36a:
	mov	r0, r5
	bl	OvlFunc_common2_44c
.Lc2_370:
	add	sp, #0x14
	pop	{r4, r5, pc}

	.align	2, 0
.Lc2_374:
	.word	0xc1e00000
.func_end OvlFunc_common2_304

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

