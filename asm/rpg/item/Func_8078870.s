	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8078870  @ 0x08078870
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0x80
	ldr	r3, =0x1ff
	lsl	r2, #2
	mov	r5, r0
	mov	r7, r1
	mov	r6, #0
	mov	r8, r2
	mov	r10, r3
	add	r5, #0xd8
.L7888a:
	ldrh	r3, [r5]
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L788a8
	ldrh	r0, [r5]
	bl	GetItemInfo
	ldrb	r3, [r0, #2]
	cmp	r3, r7
	bne	.L788a8
	ldrh	r3, [r5]
	mov	r0, r10
	and	r0, r3
	b	.L788b2
.L788a8:
	add	r6, #1
	add	r5, #2
	cmp	r6, #0xe
	ble	.L7888a
	mov	r0, #0
.L788b2:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8078870

