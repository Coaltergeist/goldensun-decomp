	.include "macros.inc"

.thumb_func_start OvlFunc_969_2008314
	push	{r5, lr}
	mov	r5, r0
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	beq	.L352
	cmp	r3, #2
	bgt	.L32c
	cmp	r3, #0
	beq	.L366
	b	.L386
.L32c:
	cmp	r3, #4
	beq	.L344
	cmp	r3, #6
	bne	.L386
	ldr	r3, [r0, #0x18]
	ldr	r2, =0xffffe000
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x1c]
	lsl	r2, #5
	b	.L360
.L344:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
	b	.L35e
.L352:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffffc00
.L35e:
	ldr	r3, [r0, #0x1c]
.L360:
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.L386
.L366:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffffc00
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	bl	__Func_8004458
	mov	r1, #0x50
	bl	_Func_8000b50
	add	r0, #0x50
	strh	r0, [r5]
.L386:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_969_2008314

.thumb_func_start OvlFunc_969_20083a0
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r4, [r5, #0x44]
	ldr	r3, [r5, #8]
	add	r3, r4
	ldr	r2, [r5, #0x48]
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	add	r3, r2
	ldr	r6, [r5, #0x4c]
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	add	r3, r6
	sub	sp, #4
	str	r3, [r5, #0x10]
	mov	r0, r4
	mov	r1, #0x16
	str	r4, [sp]
	bl	_Func_8000af0
	ldr	r4, [sp]
	sub	r4, r0
	str	r4, [r5, #0x44]
	mov	r0, r6
	mov	r1, #0x14
	bl	_Func_8000af0
	ldr	r3, [r5, #0x18]
	ldr	r2, [r5, #0x30]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r2, [r5, #0x34]
	ldr	r3, [r5, #0x1c]
	sub	r6, r0
	add	r3, r2
	str	r6, [r5, #0x4c]
	str	r3, [r5, #0x1c]
	ldr	r1, [r5, #0x50]
	add	r5, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r5]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_20083a0

.thumb_func_start OvlFunc_969_2008400
	push	{lr}
	ldr	r1, [r0, #0x50]
	ldr	r0, =0xffff
	ldrh	r2, [r1, #0x1e]
	add	r3, r2, r0
	lsl	r3, #16
	cmp	r3, #0
	bge	.L416
	ldr	r0, =0xfffff600
	add	r3, r2, r0
	strh	r3, [r1, #0x1e]
.L416:
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_2008400

.thumb_func_start OvlFunc_969_2008424
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L458
	bl	__Func_8004458
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
	bl	__Func_8004458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.L45c
	mov	r2, r3
.L458:
	sub	r3, r2, #1
	strh	r3, [r6]
.L45c:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_969_2008424

