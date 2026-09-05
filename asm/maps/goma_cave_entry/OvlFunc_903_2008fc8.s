	.include "macros.inc"

.thumb_func_start OvlFunc_903_2008fc8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0x41
	mov	r0, #2
	mov	r10, r3
	sub	sp, #4
	bl	__GetUnit
	mov	r3, #0
	mov	r7, r0
	mov	r8, r3
.Lm903_fe2:
	mov	r3, #1
	add	r8, r3
	mov	r3, #0xfa
	lsl	r3, #2
	cmp	r8, r3
	ble	.Lm903_ff6
	mov	r2, r7
	add	r2, #0xf4
	mov	r3, #0
	strh	r3, [r2]
.Lm903_ff6:
	mov	r0, #2
	mov	r1, #0x41
	bl	__GiveItemTo
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lm903_105a
	mov	r5, r7
	mov	r6, #0
	add	r5, #0xd8
.Lm903_100c:
	ldrh	r0, [r5]
	bl	__GetItemInfo
	ldrb	r3, [r0, #2]
	add	r5, #2
	cmp	r3, #1
	beq	.Lm903_1040
	add	r6, #1
	cmp	r6, #0xe
	ble	.Lm903_100c
	mov	r5, r7
	ldr	r2, =0x8ff
	mov	r6, #0
	add	r5, #0xd8
.Lm903_1028:
	ldrh	r0, [r5]
	str	r2, [sp]
	bl	__GetItemInfo
	ldrh	r3, [r0, #2]
	ldr	r2, [sp]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm903_1050
	ldrb	r3, [r0, #0xc]
	cmp	r3, #1
	bne	.Lm903_1050
.Lm903_1040:
	mov	r0, #2
	mov	r1, r6
	bl	__Func_8078948
	b	.Lm903_fe2

	.pool_aligned

.Lm903_1050:
	add	r6, #1
	add	r5, #2
	cmp	r6, #0xe
	ble	.Lm903_1028
	b	.Lm903_fe2
.Lm903_105a:
	mov	r5, r7
	mov	r6, #0
	add	r5, #0xd8
.Lm903_1060:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r10
	bne	.Lm903_1070
	mov	r0, #2
	mov	r1, r6
	bl	__EquipItem
.Lm903_1070:
	add	r6, #1
	cmp	r6, #0xe
	ble	.Lm903_1060
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_903_2008fc8

