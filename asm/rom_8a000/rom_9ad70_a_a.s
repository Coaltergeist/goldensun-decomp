	.include "macros.inc"

.thumb_func_start Func_809ad70  @ 0x0809ad70
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r5, =.L9f160
	bl	Random
	lsl	r0, #3
	lsr	r0, #16
	ldrsb	r1, [r5, r0]
	mov	r0, r6
	bl	_Actor_SetColorswap
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_809ad70

.thumb_func_start Func_809ad90  @ 0x0809ad90
	push	{lr}
	bl	GetFieldActor
	cmp	r0, #0
	beq	.L9add6
	ldr	r1, =gState
	mov	r3, #0x94
	lsl	r3, #2
	add	r2, r1, r3
	ldr	r3, [r0, #0x6c]
	str	r3, [r2]
	ldr	r3, =0x249
	add	r1, r3
	mov	r3, #0
	strb	r3, [r1]
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9adc4
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	cmp	r3, #0
	beq	.L9adc4
	ldrb	r3, [r3, #5]
	strb	r3, [r1]
.L9adc4:
	ldr	r3, =Func_809ad70
	mov	r2, r0
	str	r3, [r0, #0x6c]
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r1, #0
	bl	_Actor_SetAnimSpeed
.L9add6:
	pop	{r0}
	bx	r0
.func_end Func_809ad90

.thumb_func_start Func_809ade8  @ 0x0809ade8
	push	{r5, lr}
	bl	GetFieldActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L9ae28
	ldr	r2, [r5, #0x6c]
	ldr	r3, =Func_809ad70
	cmp	r2, r3
	bne	.L9ae18
	ldr	r2, =gState
	mov	r3, #0x94
	lsl	r3, #2
	add	r1, r2, r3
	ldr	r3, [r1]
	str	r3, [r5, #0x6c]
	mov	r3, #0
	str	r3, [r1]
	ldr	r3, =0x249
	add	r2, r3
	mov	r1, #0
	ldrsb	r1, [r2, r1]
	bl	_Actor_SetColorswap
.L9ae18:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0x10
	bl	_Actor_SetAnimSpeed
.L9ae28:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_809ade8

.thumb_func_start Func_809ae3c  @ 0x0809ae3c
	push	{r5, lr}
	mov	r5, r0
	bl	MapActor_GetName
	cmp	r0, #0xff
	bne	.L9ae4e
	mov	r0, #1
	neg	r0, r0
	b	.L9ae50
.L9ae4e:
	mov	r0, r5
.L9ae50:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_809ae3c

