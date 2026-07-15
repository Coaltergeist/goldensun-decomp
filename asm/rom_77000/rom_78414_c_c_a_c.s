	.include "macros.inc"

	.section .text.after_8698, "ax", %progbits

.thumb_func_start EquipItem  @ 0x08078708
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r10, r0
	bl	GetUnit
	lsl	r5, #1
	mov	r11, r5
	mov	r3, r11
	mov	r7, r0
	add	r3, #0xd8
	ldrh	r5, [r7, r3]
	mov	r0, r10
	mov	r1, r5
	bl	CanEquipItem
	cmp	r0, #0
	bne	.L7873c
	mov	r0, #1
	neg	r0, r0
	b	.L787cc
.L7873c:
	mov	r2, #0x80
	lsl	r2, #2
	mov	r3, r5
	and	r3, r2
	mov	r9, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.L787cc
	mov	r0, r5
	bl	GetItemInfo
	ldrb	r0, [r0, #2]
	mov	r8, r0
	cmp	r0, #6
	beq	.L787a6
	mov	r6, #0
	mov	r5, #0xd8
	b	.L78764
.L78760:
	add	r5, #2
	add	r6, #1
.L78764:
	cmp	r6, #0xe
	bgt	.L7877e
	ldrh	r3, [r5, r7]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L78760
	ldrh	r0, [r5, r7]
	bl	GetItemInfo
	ldrb	r3, [r0, #2]
	cmp	r3, r8
	bne	.L78760
.L7877e:
	cmp	r6, #0xf
	beq	.L787a6
	lsl	r3, r6, #1
	mov	r6, r3
	add	r6, #0xd8
	ldrh	r0, [r7, r6]
	bl	GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L7879e
	mov	r0, #2
	neg	r0, r0
	b	.L787cc
.L7879e:
	ldrh	r2, [r7, r6]
	ldr	r3, =0xfdff
	and	r3, r2
	strh	r3, [r7, r6]
.L787a6:
	mov	r3, r11
	add	r3, #0xd8
	ldrh	r2, [r7, r3]
	ldr	r1, .L787c4	@ 0x200
	orr	r2, r1
	strh	r2, [r7, r3]
	mov	r0, r10
	bl	Func_8078bf0
	mov	r0, r10
	bl	CalcStats
	mov	r0, #0
	b	.L787cc

	.align	2, 0
.L787c4:
	.word	0x200
	.pool

.L787cc:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end EquipItem

	.section .text.after_882c, "ax", %progbits

	.section .text.after_8870, "ax", %progbits


	.section .text.after_8948, "ax", %progbits
