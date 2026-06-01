	.include "macros.inc"

.thumb_func_start OvlFunc_969_2008480
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
.func_end OvlFunc_969_2008480

.thumb_func_start OvlFunc_969_20084bc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0
	mov	r0, #0
	ldr	r5, [r3]
	mov	r8, r2
	bl	__Func_8092054
	mov	r7, #0xa0
	lsl	r7, #2
	mov	r10, r0
	mov	r6, #8
	add	r5, #0x34
.L4dc:
	ldmia	r5!, {r1}
	cmp	r1, #0
	beq	.L500
	ldr	r3, [r1, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf2
	bne	.L500
	mov	r0, r10
	add	r1, #8
	add	r0, #8
	bl	OvlFunc_969_2008480
	cmp	r0, r7
	bge	.L500
	mov	r7, r0
	mov	r8, r6
.L500:
	add	r6, #1
	cmp	r6, #0x41
	bls	.L4dc
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_969_20084bc

.thumb_func_start OvlFunc_969_2008518
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_8092054
	mov	r5, r0
	ldrh	r1, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #5
	add	r1, r3
	mov	r7, r5
	mov	r3, #0xe0
	lsl	r3, #8
	add	r7, #0x55
	and	r1, r3
	ldrb	r3, [r7]
	ldr	r0, =0xfff00000
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r0
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r0
	mov	r0, #0x80
	add	r3, r2
	lsl	r0, #14
	mov	r2, r6
	str	r3, [r6, #8]
	bl	__Func_800447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_80120dc
	cmp	r0, #0
	bne	.L5dc
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_8079374
	bl	OvlFunc_969_20086c0
	mov	r1, #6
	mov	r0, r5
	bl	__Func_800c300
	mov	r0, #6
	bl	__Func_80030f8
	mov	r1, #7
	mov	r0, r5
	bl	__Func_800c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_800c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c528
	mov	r3, r8
	strb	r3, [r7]
.L5dc:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_2008518

.thumb_func_start OvlFunc_969_20085ec
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r7, r0
	bl	__Func_80916b0
	bl	OvlFunc_969_20084bc
	ldr	r5, =.L66e8
	str	r0, [r5]
	cmp	r0, #0
	beq	.L6a8
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, [r5]
	bl	__Func_8092054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r7
	add	r1, #0x55
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r2, =0xfffd0000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
	mov	r0, #2
	bl	__Func_80030f8
	ldr	r2, =0xfffe0000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #10
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r0, #4
	bl	__Func_80030f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r0, #4
	bl	__Func_80030f8
	ldr	r3, [r6, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
.L6a8:
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_20085ec

.thumb_func_start OvlFunc_969_20086c0
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r5, #4
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xf
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_20086c0

