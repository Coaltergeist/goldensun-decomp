	.include "macros.inc"
	.include "gba.inc"
.thumb_func_start OvlFunc_919_2008200
	push	{r5, lr}
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #9
	bl	__Func_808fe38
	ldr	r2, =REG_BLDCNT
	ldr	r3, .L244	@ 0x3f42
	strh	r3, [r2]
	ldr	r3, .L248	@ 0xc04
	add	r2, #2
	strh	r3, [r2]
	ldr	r2, [r5, #0x10]
	ldr	r3, =0x534
	add	r1, r2, r3
	ldr	r3, =0x3f3f
	strh	r3, [r1]
	ldr	r3, =0x536
	add	r1, r2, r3
	mov	r3, #0x1f
	strh	r3, [r1]
	ldr	r3, =0x52a
	add	r2, r3
	mov	r3, #0xa
	strh	r3, [r2]
	bl	OvlFunc_919_20082e0
	mov	r0, #0
	b	.L264

	.align	2, 0
.L244:
	.word	0x3f42
.L248:
	.word	0xc04
	.pool

.L264:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_919_2008200

.thumb_func_start OvlFunc_919_200826c
	push	{lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r2, [r3]
	ldr	r3, =.L610
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L27e
	ldr	r3, =.L614
	b	.L280
.L27e:
	ldr	r3, =.L616
.L280:
	ldrh	r2, [r3]
	ldr	r3, =REG_BG3HOFS
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_200826c

.thumb_func_start OvlFunc_919_20082a0
	ldr	r3, =iwram_3001e70
	mov	r1, #0x82
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	mov	r3, #6
	ldrsh	r1, [r2, r3]
	ldr	r0, =.L610
	mov	r3, #0xc0
	sub	r3, r1
	str	r3, [r0]
	ldr	r3, =.L614
	mov	r1, #2
	ldrsh	r2, [r2, r1]
	strh	r2, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	ldr	r1, =.L616
	lsr	r3, #2
	sub	r2, r3
	strh	r2, [r1]
	bx	lr
.func_end OvlFunc_919_20082a0
