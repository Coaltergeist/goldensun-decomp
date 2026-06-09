	.include "macros.inc"

.thumb_func_start CheckPartyItem  @ 0x08078698
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r3, r2
	mov	r8, r0
	mov	r1, r8
	ldr	r0, [r5]
	sub	sp, #0x18
	bl	CheckItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L786c2
	ldr	r0, [r5]
	b	.L786f8
.L786be:
	mov	r0, r5
	b	.L786f8
.L786c2:
	add	r5, sp, #4
	mov	r0, r5
	bl	Func_80796c4
	mov	r6, #0
	mov	r7, r0
	mov	r3, r5
	cmp	r6, r7
	bge	.L786f4
.L786d4:
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r1, r8
	add	r3, #2
	mov	r0, r5
	str	r3, [sp]
	bl	CheckItem
	mov	r2, #1
	neg	r2, r2
	ldr	r3, [sp]
	cmp	r0, r2
	bne	.L786be
	add	r6, #1
	cmp	r6, r7
	blt	.L786d4
.L786f4:
	mov	r0, #1
	neg	r0, r0
.L786f8:
	add	sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CheckPartyItem

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

.thumb_func_start GetEquippedItem  @ 0x080787dc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r1
	bl	GetUnit
	mov	r2, #0x80
	lsl	r2, #2
	mov	r7, r0
	mov	r6, #0
	mov	r5, #0xd8
	mov	r10, r2
	b	.L787fc
.L787f8:
	add	r5, #2
	add	r6, #1
.L787fc:
	cmp	r6, #0xe
	bgt	.L78816
	ldrh	r3, [r5, r7]
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L787f8
	ldrh	r0, [r5, r7]
	bl	GetItemInfo
	ldrb	r3, [r0, #2]
	cmp	r3, r8
	bne	.L787f8
.L78816:
	cmp	r6, #0xf
	bne	.L7881e
	mov	r6, #1
	neg	r6, r6
.L7881e:
	mov	r0, r6
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GetEquippedItem

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

.thumb_func_start Func_80788c4  @ 0x080788c4
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r0
	bl	GetUnit
	lsl	r5, #1
	add	r5, #0xd8
	ldrh	r3, [r0, r5]
	mov	r6, #1
	neg	r6, r6
	cmp	r3, #0
	beq	.L7893a
	mov	r2, #0xf8
	lsl	r2, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L788f4
	ldr	r2, =0xfffff800
	add	r3, r2
	strh	r3, [r0, r5]
	mov	r6, #1
	b	.L7893a

	.pool_aligned

.L788f4:
	mov	r6, r0
	add	r6, #0xd8
	strh	r2, [r0, r5]
	mov	r4, r6
	mov	r5, #0
	mov	r1, r6
	mov	r0, #0xe
.L78902:
	ldrh	r2, [r4]
	lsl	r3, r2, #16
	add	r4, #2
	cmp	r3, #0
	beq	.L78912
	strh	r2, [r1]
	add	r5, #1
	add	r1, #2
.L78912:
	sub	r0, #1
	cmp	r0, #0
	bge	.L78902
	cmp	r5, #0xe
	bgt	.L78938
	lsl	r3, r5, #1
	add	r0, r3, r6
	ldr	r2, =0
	mov	r3, #0xf
	sub	r5, r3, r5
.L78926:
	sub	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, #0
	bne	.L78926
	b	.L78938

	.pool_aligned

.L78938:
	mov	r6, #2
.L7893a:
	mov	r0, r7
	bl	CalcStats
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80788c4

.thumb_func_start Func_8078948  @ 0x08078948
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	bl	GetUnit
	lsl	r3, r6, #1
	add	r3, #0xd8
	ldrh	r7, [r0, r3]
	mov	r1, r6
	mov	r0, r5
	bl	Func_80788c4
	mov	r3, #1
	mov	r5, r0
	neg	r3, r3
	cmp	r5, r3
	beq	.L78976
	mov	r1, #1
	mov	r0, r7
	bl	Func_8078ad0
	bl	_Func_8091858
.L78976:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8078948

.thumb_func_start CanRemoveItem  @ 0x08078980
	push	{r5, r6, r7, lr}
	mov	r5, r1
	bl	GetUnit
	lsl	r5, #1
	mov	r6, r5
	mov	r7, r0
	add	r6, #0xd8
	ldrh	r3, [r7, r6]
	ldr	r5, =0x1ff
	and	r5, r3
	mov	r0, r5
	bl	GetItemInfo
	cmp	r5, #0
	bne	.L789a6
	mov	r0, #1
	neg	r0, r0
	b	.L789d2
.L789a6:
	ldrb	r0, [r0, #3]
	mov	r3, #8
	and	r3, r0
	cmp	r3, #0
	beq	.L789b6
	mov	r0, #4
	neg	r0, r0
	b	.L789d2
.L789b6:
	ldrh	r2, [r7, r6]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L789d0
	mov	r3, #2
	and	r3, r0
	cmp	r3, #0
	beq	.L789d0
	mov	r0, #3
	neg	r0, r0
	b	.L789d2
.L789d0:
	mov	r0, #0
.L789d2:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CanRemoveItem

