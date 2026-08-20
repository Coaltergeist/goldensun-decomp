	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b153c  @ 0x080b153c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r6, r1
	mov	r10, r3
	mov	r5, r0
	bl	_GetUnit
	mov	r7, r0
	mov	r0, r6
	bl	_GetItemInfo
	mov	r8, r0
	mov	r1, r8
	ldrb	r2, [r1, #3]
	mov	r3, #0x10
	and	r3, r2
	mov	r0, #1
	cmp	r3, #0
	beq	.Lb15f6
	ldr	r0, =0xca0
	bl	Func_80b04dc
	mov	r0, r5
	mov	r1, r6
	bl	_CheckItem
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lb158c
	lsl	r3, r0, #1
	add	r3, #0xd8
	ldrh	r3, [r7, r3]
	lsr	r3, #11
	add	r7, r3, #1
	b	.Lb158e
.Lb158c:
	mov	r7, #0
.Lb158e:
	mov	r2, r8
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	mov	r5, #0x1e
	cmp	r1, #0
	beq	.Lb15a4
	ldr	r3, =gState
	ldr	r0, [r3, #0x10]
	bl	__udivsi3
	mov	r5, r0
.Lb15a4:
	ldr	r3, =0x3aa
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #2
	bne	.Lb15cc
	mov	r0, r6
	mov	r1, #0
	bl	_Func_8078ad0
	cmp	r5, r0
	ble	.Lb15c8
	mov	r0, r6
	mov	r1, #0
	bl	_Func_8078ad0
	b	.Lb15ca
.Lb15c8:
	mov	r0, r5
.Lb15ca:
	mov	r5, r0
.Lb15cc:
	add	r5, r7
	cmp	r5, #0x1e
	ble	.Lb15d4
	mov	r5, #0x1e
.Lb15d4:
	mov	r3, #0xea
	lsl	r3, #2
	add	r3, r10
	mov	r2, #0xc
	strb	r2, [r3]
	mov	r0, #0
	mov	r1, #0x80
	mov	r2, #0x30
	bl	Func_80b0a6c
	mov	r1, r8
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r0, r7
	mov	r1, r5
	bl	Func_80b1614
.Lb15f6:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b153c

