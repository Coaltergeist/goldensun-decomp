	.include "macros.inc"

.thumb_func_start BreakItem  @ 0x08078a34
	push	{r5, lr}
	mov	r5, r1
	bl	GetUnit
	lsl	r5, #1
	add	r5, #0xd8
	ldrh	r2, [r0, r5]
	mov	r3, r2
	cmp	r3, #0
	bne	.L78a4e
	mov	r0, #1
	neg	r0, r0
	b	.L78a56
.L78a4e:
	ldr	r3, =0x400
	orr	r3, r2
	strh	r3, [r0, r5]
	mov	r0, #0
.L78a56:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end BreakItem

.thumb_func_start RepairItem  @ 0x08078a60
	push	{r5, lr}
	mov	r5, r1
	bl	GetUnit
	lsl	r5, #1
	add	r5, #0xd8
	ldrh	r2, [r0, r5]
	mov	r3, r2
	cmp	r3, #0
	bne	.L78a7a
	mov	r0, #1
	neg	r0, r0
	b	.L78a82
.L78a7a:
	ldr	r3, =0xfbff
	and	r3, r2
	strh	r3, [r0, r5]
	mov	r0, #0
.L78a82:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end RepairItem

	.section .rodata
	.global .L7b6a8

.L7b6a8:
	.incrom 0x7b6a8, 0x7ee58
