	.include "macros.inc"

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
	bl	__atan2
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
	bl	__Actor_SetAnim
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
	bl	__Actor_SetAnim
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
	bl	__Actor_SetAnim
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
