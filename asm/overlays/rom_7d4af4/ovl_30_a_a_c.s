	.include "macros.inc"

.thumb_func_start OvlFunc_949_2008040
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
.func_end OvlFunc_949_2008040

.thumb_func_start OvlFunc_949_200807c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r10, r1
	mov	r11, r3
	mov	r3, #8
	mov	r7, r10
	add	r3, r6
	add	r7, #8
	mov	r8, r3
	mov	r5, r2
	mov	r0, r7
	mov	r2, #0
	mov	r1, r8
	mov	r9, r2
	bl	OvlFunc_949_2008040
	cmp	r0, r5
	blt	.Lb2
	mov	r2, r11
	cmp	r2, #0
	beq	.L146
.Lb2:
	mov	r3, r10
	ldr	r0, [r3, #0x10]
	ldr	r3, [r6, #0x10]
	mov	r2, r8
	ldr	r1, [r7]
	sub	r0, r3
	ldr	r3, [r2]
	sub	r1, r3
	bl	__Func_80044d0
	ldr	r3, =0xffffe000
	lsl	r0, #16
	lsr	r0, #16
	add	r3, r0
	mov	r8, r3
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r8
	and	r2, r3
	mov	r8, r2
	mov	r2, #0x80
	lsl	r2, #6
	add	r7, r0, r2
	ldr	r2, =0xfffff000
	add	r4, r0, r2
	mov	r2, #0x80
	lsl	r2, #5
	add	r1, r0, r2
	ldrh	r2, [r6, #6]
	mov	r5, r3
	and	r0, r3
	and	r5, r2
	and	r7, r3
	and	r4, r3
	and	r1, r3
	cmp	r0, r5
	beq	.L10a
	cmp	r1, r5
	beq	.L10a
	cmp	r4, r5
	beq	.L10a
	mov	r3, r11
	cmp	r3, #0
	beq	.L11e
.L10a:
	mov	r2, r6
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_800c300
	mov	r2, #1
	mov	r9, r2
.L11e:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r10, r0
	bne	.L156
	cmp	r7, r5
	beq	.L130
	cmp	r8, r5
	bne	.L156
.L130:
	mov	r2, r6
	mov	r3, #1
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_800c300
	mov	r3, #1
	mov	r9, r3
	b	.L156
.L146:
	mov	r3, r6
	add	r3, #0x5b
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #2
	bl	__Func_800c300
.L156:
	mov	r0, r9
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_949_200807c

.thumb_func_start OvlFunc_949_2008170
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e8c
	mov	r5, r0
	ldr	r2, [r3]
	mov	r6, r5
	mov	r8, r2
	add	r6, #0x64
	mov	r2, #0x12
	ldr	r7, [r3, #0x30]
	mov	r10, r2
	mov	r3, #0
	ldrh	r2, [r6]
	mov	r9, r3
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L19e
	mov	r0, #0x11
	b	.L1a0
.L19e:
	mov	r0, #0x10
.L1a0:
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0
	bl	OvlFunc_949_200807c
	cmp	r0, #0
	bne	.L1f0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r1, r0
	cmp	r3, #0
	bne	.L1d4
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1e6
.L1d4:
	mov	r3, #0x1a
	ldrh	r2, [r6]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1e6
	mov	r2, #1
	mov	r9, r2
.L1e6:
	mov	r0, r5
	mov	r2, r10
	mov	r3, r9
	bl	OvlFunc_949_200807c
.L1f0:
	mov	r0, #0
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_949_2008170

