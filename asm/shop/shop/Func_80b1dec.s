	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b1dec  @ 0x080b1dec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r9, r0
	mov	r0, r5
	sub	sp, #4
	bl	_GetUnit
	mov	r2, #0
	mov	r3, r9
	mov	r10, r0
	mov	r7, #8
	mov	r8, r2
	cmp	r3, #0
	beq	.Lb1e6c
	mov	r0, r9
	bl	_Func_8016478
	mov	r0, r5
	bl	_FindEmptyInventorySlot
	cmp	r0, #0
	bne	.Lb1e2e
	ldr	r0, =0xc91
	mov	r1, r9
	mov	r2, #8
	mov	r3, #0x14
	bl	_DrawSmallText
	b	.Lb1e6c
.Lb1e2e:
	mov	r5, #0
	mov	r6, #0xd8
.Lb1e32:
	mov	r2, r10
	ldrh	r3, [r6, r2]
	cmp	r3, #0
	beq	.Lb1e4e
	mov	r0, r3
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1b
	mov	r3, r7
	mov	r2, r9
	bl	_Func_801eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
.Lb1e4e:
	add	r7, #0x10
	cmp	r5, #4
	bne	.Lb1e5a
	mov	r2, #0x10
	mov	r7, #8
	add	r8, r2
.Lb1e5a:
	cmp	r5, #9
	bne	.Lb1e64
	mov	r3, #0x10
	mov	r7, #8
	add	r8, r3
.Lb1e64:
	add	r5, #1
	add	r6, #2
	cmp	r5, #0xe
	ble	.Lb1e32
.Lb1e6c:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b1dec

