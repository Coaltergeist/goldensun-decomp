	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_807882c  @ 0x0807882c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0x80
	lsl	r2, #2
	mov	r6, r0
	mov	r8, r1
	mov	r7, #0
	mov	r5, #0xd8
	mov	r10, r2
.L78842:
	ldrh	r3, [r5, r6]
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L78858
	ldrh	r0, [r5, r6]
	bl	GetItemInfo
	ldrb	r3, [r0, #2]
	cmp	r3, r8
	beq	.L78862
.L78858:
	add	r7, #1
	add	r5, #2
	cmp	r7, #0xe
	ble	.L78842
	mov	r0, #0
.L78862:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807882c

