	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7e60  @ 0x080b7e60
	push	{r5, lr}
	mov	r5, r0
	bl	Func_80b6e30
	mov	r0, r5
	bl	GetBattleActor
	mov	r3, #1
	strh	r3, [r0, #0x28]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b7e60

.thumb_func_start Func_80b7e7c  @ 0x080b7e7c
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #0
.Lb7e82:
	mov	r0, r6
	add	r0, #0x78
	cmp	r6, #7
	bgt	.Lb7e8c
	mov	r0, r6
.Lb7e8c:
	bl	GetBattleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb7ea8
	mov	r2, #0x28
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lb7ea8
	ldr	r0, [r5]
	bl	_DeleteActor
	str	r7, [r5]
	strh	r7, [r5, #0x28]
.Lb7ea8:
	add	r6, #1
	cmp	r6, #0xd
	ble	.Lb7e82
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b7e7c

