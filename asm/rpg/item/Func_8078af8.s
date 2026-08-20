	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8078af8  @ 0x08078af8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r1
	sub	sp, #4
	bl	GetUnit
	ldr	r3, =0x1ff
	mov	r8, r0
	mov	r1, #0
	and	r6, r3
	mov	r7, #0
	mov	r5, #0xd8
	mov	r10, r3
.L78b16:
	mov	r2, r8
	ldrh	r3, [r5, r2]
	mov	r2, r10
	and	r3, r2
	cmp	r3, r6
	bne	.L78b42
	mov	r0, r6
	str	r1, [sp]
	bl	GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #0x10
	and	r3, r2
	ldr	r1, [sp]
	cmp	r3, #0
	beq	.L78b40
	mov	r2, r8
	ldrh	r3, [r5, r2]
	lsr	r3, #11
	add	r1, r3, #1
	b	.L78b4a
.L78b40:
	add	r1, #1
.L78b42:
	add	r7, #1
	add	r5, #2
	cmp	r7, #0xe
	ble	.L78b16
.L78b4a:
	mov	r0, r1
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8078af8

