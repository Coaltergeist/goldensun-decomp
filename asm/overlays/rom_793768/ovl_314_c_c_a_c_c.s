	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008a2c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1338
	bl	__Func_8092b94
	mov	r0, #0xd
	bl	OvlFunc_898_200890c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008a2c

.thumb_func_start OvlFunc_898_2008a4c
	push	{r5, r6, r7, lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	ldrh	r2, [r5]
	mov	r3, #6
	ldrsh	r7, [r6, r3]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r5]
	bl	__Func_80916b0
	ldr	r0, =0x1339
	bl	__Func_8092b94
	mov	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La98
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.La98

	.pool_aligned

.La98:
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_80924d4
	mov	r2, #2
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r1, #0xa
	mov	r0, #0xe
	bl	OvlFunc_898_2009724
	mov	r0, #1
	strh	r7, [r6, #6]
	bl	__Func_80030f8
	bl	__Func_8091750
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008a4c

.thumb_func_start OvlFunc_898_2008acc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r3, #6
	ldrsh	r2, [r6, r3]
	mov	r5, r6
	add	r5, #0x64
	mov	r8, r2
	ldr	r3, =2
	ldrh	r2, [r5]
	orr	r3, r2
	strh	r3, [r5]
	bl	__Func_80916b0
	ldr	r0, =0x133b
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_80924d4
	mov	r2, #2
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r1, #0xa
	mov	r0, #0xf
	bl	OvlFunc_898_2009724
	mov	r2, r8
	strh	r2, [r6, #6]
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091750
	b	.Lb28

	.pool_aligned

.Lb28:
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008acc

.thumb_func_start OvlFunc_898_2008b3c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x133c
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lb7e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lb7e:
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008b3c

.thumb_func_start OvlFunc_898_2008b98
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x133f
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lbd2
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lbd2:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008b98

.thumb_func_start OvlFunc_898_2008bec
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1342
	bl	__Func_8092b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_80924d4
	mov	r2, #2
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, #0xe7
	bl	__Func_8078698
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lc40
	ldr	r0, =0x858
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lc40
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.Lc40:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008bec

.thumb_func_start OvlFunc_898_2008c54
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x137f
	bl	__Func_8092b94
	mov	r2, #2
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008c54

