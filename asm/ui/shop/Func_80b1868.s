	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b1868  @ 0x080b1868
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r9, r1
	mov	r11, r3
	mov	r8, r0
	bl	_GetUnit
	mov	r3, r9
	lsl	r5, r3, #1
	mov	r7, r0
	add	r5, #0xd8
	ldrh	r3, [r7, r5]
	ldr	r6, =0x1ff
	and	r6, r3
	mov	r0, r6
	bl	_GetItemInfo
	ldrh	r2, [r7, r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	mov	r10, r0
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb1948
	mov	r0, r8
	mov	r1, r6
	bl	_CanEquipItem
	cmp	r0, #0
	beq	.Lb18f4
	mov	r3, r10
	ldrb	r1, [r3, #2]
	mov	r0, r8
	bl	_GetEquippedItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lb18dc
	lsl	r3, r0, #1
	add	r3, #0xd8
	ldrh	r0, [r7, r3]
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #2
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb1948
.Lb18dc:
	mov	r0, r8
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0xca2
	bl	Func_80b04dc
	mov	r0, #0
	bl	Func_80b0634
	cmp	r0, #0
	beq	.Lb18f8
.Lb18f4:
	mov	r0, #0
	b	.Lb1948
.Lb18f8:
	mov	r0, r8
	mov	r1, r9
	bl	_EquipItem
	mov	r3, r11
	ldr	r0, [r3, #0x20]
	cmp	r0, #0
	beq	.Lb190e
	mov	r1, r8
	bl	Func_80b1dec
.Lb190e:
	mov	r3, r10
	ldrb	r2, [r3, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1940
	mov	r0, #0x67
	bl	_PlaySound
	bl	_Func_8019a54
	mov	r1, #8
	mov	r2, #4
	mov	r3, #2
	ldr	r0, =0xad0
	bl	_Func_8017658
	b	.Lb1938
.Lb1932:
	mov	r0, #1
	bl	WaitFrames
.Lb1938:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb1932
.Lb1940:
	ldr	r0, =0xca3
	bl	Func_80b0574
	mov	r0, #1
.Lb1948:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b1868

