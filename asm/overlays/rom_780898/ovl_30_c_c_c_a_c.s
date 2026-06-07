	.include "macros.inc"

.thumb_func_start OvlFunc_883_200d5b0
	push	{lr}
	mov	r0, #1
	bl	__MapActor_GetActor
	bl	OvlFunc_883_200dc5c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5b0

.thumb_func_start OvlFunc_883_200d5c0
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	bl	OvlFunc_883_200dc5c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5c0

.thumb_func_start OvlFunc_883_200d5d0
	push	{lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	bl	OvlFunc_883_200dc98
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5d0

.thumb_func_start OvlFunc_883_200d5e0
	push	{lr}
	mov	r0, #0x17
	bl	__MapActor_GetActor
	bl	OvlFunc_883_200dc98
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5e0

.thumb_func_start OvlFunc_883_200d5f0
	push	{lr}
	mov	r0, #0x18
	bl	__MapActor_GetActor
	bl	OvlFunc_883_200dc98
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5f0

.thumb_func_start OvlFunc_883_200d600
	push	{lr}
	mov	r0, #0x19
	bl	__MapActor_GetActor
	bl	OvlFunc_883_200dc98
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d600

.thumb_func_start OvlFunc_883_200d610
	push	{r5, lr}
	ldmia	r0!, {r5}
	ldmia	r1!, {r3}
	ldmia	r0!, {r4}
	sub	r5, r3
	ldmia	r1!, {r3}
	ldr	r2, [r1]
	sub	r4, r3
	ldr	r3, [r0]
	sub	r3, r2
	asr	r5, #16
	asr	r4, #16
	asr	r3, #16
	mov	r0, r5
	mul	r0, r5
	mov	r2, r4
	mul	r2, r4
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_200d610

.thumb_func_start OvlFunc_883_200d64c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp, #4]
	mov	r2, #0
	mov	r5, r0
	mov	r6, r3
	str	r2, [sp]
	mov	r3, #0x5b
	add	r3, r5
	mov	r10, r3
	ldrb	r3, [r3]
	mov	r11, r1
	cmp	r3, #1
	bne	.L568a
	mov	r2, #0x62
	add	r2, r5
	ldrb	r3, [r2]
	mov	r9, r2
	cmp	r3, #0
	bne	.L5690
	mov	r1, #1
	bl	__Func_800c300
	mov	r0, #1
	b	.L5716
.L568a:
	mov	r3, #0x62
	add	r3, r5
	mov	r9, r3
.L5690:
	mov	r2, #8
	add	r2, r5
	mov	r7, r11
	mov	r8, r2
	add	r7, #8
	mov	r0, r7
	mov	r1, r8
	bl	OvlFunc_883_200d610
	ldr	r3, [sp, #4]
	cmp	r0, r3
	blt	.L56ac
	cmp	r6, #0
	beq	.L5704
.L56ac:
	mov	r2, r11
	ldr	r0, [r2, #0x10]
	ldr	r3, [r5, #0x10]
	mov	r2, r8
	sub	r0, r3
	ldr	r1, [r7]
	ldr	r3, [r2]
	sub	r1, r3
	bl	__Func_80044d0
	ldr	r3, =0xfffff000
	lsl	r0, #16
	mov	r2, #0x80
	lsr	r0, #16
	lsl	r2, #5
	add	r4, r0, r3
	add	r1, r0, r2
	mov	r3, #0xf0
	ldrh	r2, [r5, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L56ec
	cmp	r1, r3
	beq	.L56ec
	cmp	r4, r3
	beq	.L56ec
	cmp	r6, #0
	beq	.L5704
.L56ec:
	mov	r3, #1
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
	mov	r3, #1
	mov	r2, r9
	str	r3, [sp]
	strb	r3, [r2]
	b	.L5714
.L5704:
	mov	r3, r10
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r2, r9
	strb	r6, [r2]
.L5714:
	ldr	r0, [sp]
.L5716:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_200d64c

