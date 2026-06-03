	.include "macros.inc"

.thumb_func_start Func_809233c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r10, r3
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L923a6
	ldr	r2, =0x4ccc
	mov	r0, r6
	ldr	r1, =0x9999
	bl	Func_8092064
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8092054
	cmp	r0, #0
	beq	.L9237c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	Func_80923e4
.L9237c:
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c300
	mov	r2, r8
	mov	r0, r6
	mov	r1, r7
	bl	Func_809228c
	ldr	r1, =.L9fbcc
	mov	r0, r5
	bl	_Func_800c2d8
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
.L923a6:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809233c

.thumb_func_start Func_80923c4
	push	{r5, lr}
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L923dc
	bl	_Func_800ca6c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_800c300
.L923dc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80923c4

.thumb_func_start Func_80923e4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L9244a
	bl	_Func_800c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x38]
	str	r6, [r5, #8]
	str	r7, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9244a
	mov	r3, r5
	add	r3, #0x22
	mov	r1, r6
	ldrb	r0, [r3]
	cmp	r1, #0
	bge	.L9242a
	ldr	r3, =0xffff
	add	r1, r3
.L9242a:
	mov	r2, r7
	asr	r1, #16
	cmp	r2, #0
	bge	.L92436
	ldr	r3, =0xffff
	add	r2, r3
.L92436:
	asr	r2, #16
	bl	_Func_8011f54
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	lsl	r0, #16
	sub	r3, r2
	add	r3, r0
	str	r3, [r5, #0xc]
	str	r0, [r5, #0x14]
.L9244a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80923e4

.thumb_func_start Func_8092454
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r6, r2
	mov	r8, r3
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L924c4
	bl	_Func_800c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r2, r8
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x38]
	str	r7, [r5, #8]
	str	r6, [r5, #0xc]
	str	r2, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L924c4
	mov	r3, r5
	add	r3, #0x22
	mov	r1, r7
	ldrb	r0, [r3]
	cmp	r1, #0
	bge	.L924a4
	ldr	r3, =0xffff
	add	r1, r3
.L924a4:
	mov	r3, r8
	asr	r1, #16
	cmp	r3, #0
	bge	.L924b0
	ldr	r2, =0xffff
	add	r3, r2
.L924b0:
	asr	r2, r3, #16
	bl	_Func_8011f54
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	lsl	r0, #16
	sub	r3, r2
	add	r3, r0
	str	r3, [r5, #0xc]
	str	r0, [r5, #0x14]
.L924c4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092454

.thumb_func_start Func_80924d4
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L924e6
	mov	r1, r5
	bl	_Func_800c300
.L924e6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80924d4

.thumb_func_start Func_80924ec
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L924fe
	mov	r1, r5
	bl	_Func_800c344
.L924fe:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80924ec

.thumb_func_start Func_8092504
	push	{r5, r6, r7, lr}
	sub	sp, #4
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L9253e
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9253e
	ldr	r3, [r0, #0x50]
	mov	r6, r3
	add	r6, #0x24
	ldrb	r3, [r6]
	mov	r7, sp
	mov	r5, #0
	str	r3, [r7]
	b	.L9252c
.L9252a:
	add	r5, #1
.L9252c:
	cmp	r5, #0x59
	bgt	.L9253e
	mov	r0, #1
	bl	Func_80030f8
	ldrb	r2, [r6]
	ldr	r3, [r7]
	cmp	r3, r2
	beq	.L9252a
.L9253e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092504

.thumb_func_start Func_8092548
	push	{r5, lr}
	mov	r5, r0
	bl	Func_80924d4
	mov	r0, r5
	bl	Func_8092504
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8092548

