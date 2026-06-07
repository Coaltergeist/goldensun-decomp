	.include "macros.inc"

.thumb_func_start Func_809207c
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L9209a
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r5
	bl	Func_8093a6c
.L9209a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_809207c

.thumb_func_start Func_80920a0
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L920ba
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	bl	_Func_800c4ac
.L920ba:
	pop	{r0}
	bx	r0
.func_end Func_80920a0

.thumb_func_start Func_80920c0
	push	{r5, r6, lr}
	mov	r6, r1
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L920de
	mov	r0, r6
	bl	MapActor_GetActor
	ldr	r1, =Data_9ff40
	str	r0, [r5, #0x68]
	mov	r0, r5
	bl	Func_8093a6c
.L920de:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80920c0

.thumb_func_start Func_80920e8
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L920f6
	bl	_Func_800c4ec
.L920f6:
	pop	{r0}
	bx	r0
.func_end Func_80920e8

.thumb_func_start Func_80920fc
	push	{r5, r6, lr}
	mov	r6, r1
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92122
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r6
	bl	Func_8093a6c
	mov	r0, r5
	bl	_Func_800c4ec
.L92122:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80920fc

