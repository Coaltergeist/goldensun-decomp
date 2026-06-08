	.include "macros.inc"

.thumb_func_start Func_809a44c
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x44]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r2, [r0, #0x48]
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, [r0, #0x4c]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r2, [r0, #0x30]
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldr	r1, [r0, #0x50]
	add	r0, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r0]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	bx	lr
.func_end Func_809a44c

.thumb_func_start Func_809a484
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r6, r1
	ldr	r1, [sp, #0x30]
	mov	r5, r0
	mov	r0, #0
	mov	r8, r2
	str	r3, [sp, #4]
	mov	r10, r1
	ldr	r7, [sp, #0x34]
	bl	MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #13
	mov	r2, r10
	and	r3, r2
	mov	r9, r0
	cmp	r3, #0
	beq	.L9a4c2
	cmp	r7, #0
	beq	.L9a4c2
	mov	r3, #0x18
	ldrsh	r0, [r7, r3]
	mov	r2, r6
	b	.L9a4c6
.L9a4c2:
	mov	r2, r6
	mov	r0, #0xde
.L9a4c6:
	mov	r1, r5
	mov	r3, r8
	bl	_CreateActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L9a4d6
	b	.L9a63e
.L9a4d6:
	ldr	r1, [r6, #0x50]
	mov	r8, r1
	mov	r1, r10
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	mov	r0, r6
	bl	_Actor_SetAnim
	mov	r3, r10
	ldr	r2, =.La012c
	and	r3, r5
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, r6
	mov	r11, r3
	bl	_Actor_SetScript
	mov	r3, r6
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, r8
	add	r3, #0x26
	strb	r0, [r3]
	ldr	r3, =Func_809a44c
	str	r3, [r6, #0x6c]
	ldr	r3, [sp, #4]
	str	r3, [r6, #0x44]
	ldr	r3, [sp, #0x28]
	str	r3, [r6, #0x48]
	ldr	r3, [sp, #0x2c]
	mov	r1, r9
	str	r3, [r6, #0x4c]
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r8
	ldrb	r1, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	mov	r9, r3
	and	r3, r1
	orr	r3, r2
	mov	r2, r6
	mov	r1, r8
	add	r2, #0x64
	strb	r3, [r1, #9]
	mov	r3, r2
	str	r0, [r6, #0x30]
	str	r0, [r6, #0x34]
	str	r2, [sp]
	strh	r0, [r3]
	ldr	r3, =0xffff0000
	mov	r1, r10
	and	r3, r1
	mov	r5, #3
	cmp	r3, #0
	beq	.L9a63e
	cmp	r7, #0
	beq	.L9a63e
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.L9a564
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	Func_80929d8
.L9a564:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L9a590
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r8
	ldrb	r2, [r7]
	ldrb	r1, [r3, #9]
	and	r2, r5
	mov	r3, r9
	and	r3, r1
	lsl	r2, #2
	orr	r3, r2
	mov	r1, r8
	strb	r3, [r1, #9]
.L9a590:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r10
	and	r2, r3
	cmp	r2, #0
	beq	.L9a5a4
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.L9a5a4:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L9a5ee
	ldr	r3, =.La012c
	mov	r1, r11
	ldr	r5, [r3, r1]
	cmp	r2, #0
	beq	.L9a5d2
	ldr	r0, [r7, #0x10]
	ldr	r3, [r6, #0x18]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	bl	Func_af0_from_thumb
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r3, [r6, #0x1c]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	b	.L9a5e8
.L9a5d2:
	ldr	r0, [r7, #0x10]
	ldr	r2, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r2
	bl	Func_af0_from_thumb
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r3, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r3
.L9a5e8:
	bl	Func_af0_from_thumb
	str	r0, [r6, #0x34]
.L9a5ee:
	mov	r3, #0x80
	lsl	r3, #14
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L9a60a
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
	ldr	r1, [r7, #0x1c]
	mov	r0, r6
	bl	_Actor_SetScript
.L9a60a:
	mov	r3, #0x80
	lsl	r3, #15
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L9a61c
	ldrh	r3, [r7, #0x20]
	mov	r1, r8
	strh	r3, [r1, #0x1e]
.L9a61c:
	mov	r3, #0x80
	lsl	r3, #16
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L9a62e
	ldrh	r3, [r7, #0x22]
	ldr	r1, [sp]
	strh	r3, [r1]
.L9a62e:
	mov	r3, #0x80
	lsl	r3, #17
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L9a63e
	ldr	r3, [r7, #0x24]
	str	r3, [r6, #0x6c]
.L9a63e:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809a484

.thumb_func_start Func_809a65c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, [r6, #0x44]
	ldr	r3, [r6, #8]
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, [r6, #0x48]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r7, [r6, #0x4c]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	add	r3, r7
	mov	r1, #0x12
	str	r3, [r6, #0x10]
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #0x44]
	mov	r3, r7
	cmp	r7, #0
	bge	.L9a68c
	add	r3, #0xf
.L9a68c:
	asr	r3, #4
	sub	r3, r7, r3
	str	r3, [r6, #0x4c]
	ldr	r2, [r6, #0x30]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r2, [r6, #0x34]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldr	r1, [r6, #0x50]
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r2]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809a65c

.thumb_func_start Func_809a6b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x44
	mov	r10, r0
	add	r0, sp, #0x1c
	mov	r3, #0
	str	r3, [r0, #4]
	ldr	r3, =Func_809a65c
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	add	r6, sp, #0x10
.L9a6da:
	lsl	r5, r7, #12
	mov	r0, r5
	bl	cos
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6]
	mov	r0, r5
	mov	r3, #0
	str	r3, [r6, #4]
	bl	sin
	str	r0, [r6, #8]
	mov	r2, r10
	ldr	r5, [r2, #8]
	ldr	r1, [r2, #0xc]
	ldr	r3, [r6]
	ldr	r2, [r2, #0x10]
	ldr	r4, [r6, #4]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r0, [sp, #8]
	mov	r0, r8
	str	r0, [sp, #0xc]
	add	r7, #1
	mov	r0, r5
	str	r4, [sp]
	bl	Func_809a484
	cmp	r7, #0x10
	bls	.L9a6da
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809a6b8

.thumb_func_start Func_809a738
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	bl	Random
	ldrh	r2, [r7, #6]
	mov	r1, #0x80
	mov	r8, r2
	lsl	r1, #10
	mov	r6, r0
	mov	r0, r8
	add	r6, r1
	bl	cos
	ldr	r5, =Func_8000888
	mov	r1, r0
	mov	r0, r6
	.call_via r5
	mov	r10, r0
	mov	r0, r8
	bl	sin
	mov	r1, r0
	mov	r0, r6
	.call_via r5
	ldr	r3, [r7, #8]
	add	r3, r10
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r0
	str	r3, [r7, #0x10]
	ldr	r1, =0xfff0
	ldrh	r3, [r7, #6]
	add	r3, r1
	strh	r3, [r7, #6]
	mov	r5, r7
	add	r5, #0x66
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0
	beq	.L9a7a6
	sub	r3, r2, #1
	strh	r3, [r5]
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	strh	r3, [r7, #6]
	b	.L9a7be
.L9a7a6:
	bl	Random
	lsl	r0, #5
	lsr	r0, #16
	cmp	r0, #0
	bne	.L9a7be
	bl	Random
	lsl	r0, #4
	lsr	r0, #16
	add	r0, #8
	strh	r0, [r5]
.L9a7be:
	mov	r2, r7
	add	r2, #0x64
	ldrh	r3, [r2]
	mov	r1, #0xca
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #15
	lsl	r3, #16
	cmp	r3, r1
	bne	.L9a7da
	ldr	r1, =Data_9f0b0
	mov	r0, r7
	bl	_Actor_SetScript
.L9a7da:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809a738

.thumb_func_start Func_809a7f4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldr	r0, [r7, #0x68]
	ldrh	r6, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #12
	mov	r9, r0
	mov	r0, r6
	mov	r10, r2
	bl	cos
	ldr	r5, =Func_8000888
	mov	r1, r0
	mov	r0, r10
	.call_via r5
	mov	r8, r0
	mov	r0, r6
	bl	sin
	mov	r1, r0
	mov	r0, r10
	.call_via r5
	mov	r2, r9
	ldr	r3, [r2, #8]
	add	r3, r8
	str	r3, [r7, #8]
	ldr	r3, [r2, #0x10]
	add	r3, r0
	str	r3, [r7, #0x10]
	mov	r0, #0x80
	ldrh	r3, [r7, #6]
	lsl	r0, #4
	add	r3, r0
	strh	r3, [r7, #6]
	mov	r2, r7
	add	r2, #0x64
	ldrh	r3, [r2]
	mov	r0, #0xf2
	add	r3, #1
	strh	r3, [r2]
	lsl	r0, #15
	lsl	r3, #16
	mov	r1, #0
	cmp	r3, r0
	bne	.L9a876
	ldr	r3, =Func_809a738
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x66
	strh	r1, [r2]
	strh	r1, [r3]
	ldr	r3, =0x1999
	str	r3, [r7, #0x48]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x28]
	bl	Random
	strh	r0, [r7, #6]
.L9a876:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809a7f4

