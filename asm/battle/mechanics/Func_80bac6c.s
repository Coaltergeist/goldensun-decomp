	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bac6c  @ 0x080bac6c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e74
	mov	r6, r0
	ldr	r5, [r3]
	bl	_GetUnit
	mov	r3, #0x95
	lsl	r3, #1
	add	r2, r0, r3
	ldr	r1, .Lbac94	@ 0xfe
	mov	r3, #0
	strb	r3, [r2]
	mov	r2, #0x58
	b	.Lbac8a
.Lbac88:
	add	r2, #2
.Lbac8a:
	ldrsh	r3, [r2, r5]
	cmp	r3, r6
	bne	.Lbac9c
	strh	r1, [r2, r5]
	b	.Lbacc4

	.align	2, 0
.Lbac94:
	.word	0xfe
	.pool

.Lbac9c:
	cmp	r3, #0xff
	bne	.Lbac88
	mov	r1, #0
	add	r0, r5, #2
.Lbaca4:
	lsl	r3, r1, #1
	mov	r2, r3
	add	r2, #0x64
	ldrsh	r3, [r0, r2]
	cmp	r3, r6
	bne	.Lbacb6
	ldr	r3, =0xfe
	strh	r3, [r0, r2]
	b	.Lbacc4
.Lbacb6:
	add	r1, #1
	cmp	r3, #0xff
	bne	.Lbaca4
	b	.Lbace2

	.pool_aligned

.Lbacc4:
	mov	r0, r6
	bl	Func_80c1ebc
	mov	r2, #0xbb
	mov	r1, #0
	mov	r0, #0xff
	lsl	r2, #2
.Lbacd2:
	ldrsh	r3, [r2, r5]
	cmp	r3, r6
	bne	.Lbacda
	strh	r0, [r2, r5]
.Lbacda:
	add	r1, #1
	add	r2, #0x10
	cmp	r1, #0x13
	bls	.Lbacd2
.Lbace2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80bac6c
