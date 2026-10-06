	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ac8fc  @ 0x080ac8fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r11, r0
	mov	r0, r5
	sub	sp, #4
	mov	r6, r2
	bl	_GetUnit
	mov	r10, r0
	mov	r0, #1
	neg	r0, r0
	mov	r7, #0
	cmp	r6, r0
	bne	.Lac994
	lsl	r5, #8
	mov	r6, #0x84
	mov	r1, #0
	lsl	r6, #1
	str	r5, [sp]
	mov	r8, r1
	add	r6, r10
	mov	r9, r1
.Lac934:
	mov	r3, r8
	ldr	r2, [r6]
	lsl	r1, r3, #5
	mov	r0, r11
	lsl	r3, r7, #1
	mov	r5, #0
	mov	r14, r9
	mov	r12, r2
	add	r4, r3, r0
.Lac946:
	mov	r2, #1
	lsl	r2, r5
	mov	r3, r12
	and	r3, r2
	cmp	r3, #0
	beq	.Lac960
	mov	r3, r1
	ldr	r2, =0xffff8000
	ldr	r0, [sp]
	orr	r3, r5
	orr	r3, r2
	orr	r3, r0
	b	.Lac976
.Lac960:
	mov	r3, r14
	add	r3, #0xf8
	mov	r0, r10
	ldr	r3, [r0, r3]
	and	r3, r2
	cmp	r3, #0
	beq	.Lac97c
	ldr	r2, [sp]
	mov	r3, r1
	orr	r3, r5
	orr	r3, r2
.Lac976:
	strh	r3, [r4]
	add	r7, #1
	add	r4, #2
.Lac97c:
	add	r5, #1
	cmp	r5, #0x13
	ble	.Lac946
	mov	r0, #1
	add	r8, r0
	mov	r3, #4
	mov	r1, r8
	add	r6, #4
	add	r9, r3
	cmp	r1, #3
	ble	.Lac934
	b	.Lac9ea
.Lac994:
	mov	r0, #0x84
	lsl	r3, r6, #2
	lsl	r0, #1
	add	r2, r3, r0
	mov	r1, r10
	ldr	r2, [r1, r2]
	lsl	r4, r6, #5
	mov	r12, r2
	mov	r6, r11
	lsl	r2, r7, #1
	add	r0, r2, r6
	ldr	r2, =0xffff8000
	mov	r1, #1
	add	r3, #0xf8
	mov	r5, #0
	mov	r14, r1
	mov	r9, r2
	mov	r8, r3
.Lac9b8:
	mov	r1, r14
	lsl	r1, r5
	mov	r3, r12
	and	r3, r1
	cmp	r3, #0
	beq	.Lac9ce
	mov	r3, r4
	orr	r3, r5
	mov	r6, r9
	orr	r3, r6
	b	.Lac9de
.Lac9ce:
	mov	r2, r10
	mov	r6, r8
	ldr	r3, [r2, r6]
	and	r3, r1
	cmp	r3, #0
	beq	.Lac9e4
	mov	r3, r4
	orr	r3, r5
.Lac9de:
	strh	r3, [r0]
	add	r7, #1
	add	r0, #2
.Lac9e4:
	add	r5, #1
	cmp	r5, #0x13
	ble	.Lac9b8
.Lac9ea:
	mov	r0, r7
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ac8fc

