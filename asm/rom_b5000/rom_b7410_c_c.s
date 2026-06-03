	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7f9c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r5, #0x36]
	mov	r3, #0xfe
	lsl	r3, #8
	strh	r3, [r5, #0x34]
	mov	r3, #0xff
	mov	r6, #0
	lsl	r3, #17
	str	r3, [r5, #0x20]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x14]
	str	r6, [r5, #0x1c]
	str	r6, [r5, #0x18]
	sub	sp, #0xc
	bl	Func_80049ac
	mov	r0, r5
	add	r0, #0xc
	bl	Func_8004cb4
	mov	r3, #0x36
	ldrsh	r0, [r5, r3]
	bl	Func_8004c1c
	mov	r3, #0x34
	ldrsh	r0, [r5, r3]
	bl	Func_8004bd4
	mov	r0, sp
	str	r6, [r0]
	str	r6, [r0, #4]
	ldr	r3, [r5, #0x20]
	mov	r1, r5
	str	r3, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b7f9c

.thumb_func_start Func_80b8000
	push	{r5, r6, lr}
	bl	Func_80b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	ldr	r3, =0xab85
	str	r3, [r5, #0x48]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5a
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x44]
	strb	r2, [r3]
	mov	r2, r5
	add	r2, #0x58
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r5
	bl	_Func_800c4ac
	mov	r0, r5
	ldr	r1, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r2, #0
	bl	_Func_800d14c
	ldr	r0, [r6, #0x10]
	cmp	r0, #0
	bge	.Lb8048
	add	r0, #7
.Lb8048:
	ldr	r1, [r6, #0xc]
	asr	r0, #3
	bl	Func_80044d0
	mov	r3, #0x80
	lsl	r3, #8
	add	r0, r3
	strh	r0, [r5, #6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b8000

.thumb_func_start Func_80b8064
	push	{r5, r6, lr}
	bl	Func_80b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldr	r3, =0x7851
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	strb	r3, [r2]
	bl	_Func_800c4ac
	ldr	r3, [r6, #0xc]
	lsl	r1, r3, #1
	add	r1, r3
	mov	r0, r5
	ldr	r3, [r6, #0x10]
	mov	r2, #0
	bl	_Func_800d14c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_800c300
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b8064

.thumb_func_start Func_80b80b8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r5, [r0]
	ldr	r6, [r1]
	mov	r10, r2
	ldr	r3, [r6, #8]
	ldr	r2, [r5, #8]
	sub	r3, r2
	mov	r0, r10
	mul	r0, r3
	mov	r1, #0x64
	mov	r8, r2
	bl	Func_af0_from_thumb
	ldr	r3, [r6, #0x10]
	ldr	r6, [r5, #0x10]
	sub	r3, r6
	add	r8, r0
	mov	r1, #0x64
	mov	r0, r10
	mul	r0, r3
	bl	Func_af0_from_thumb
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lb812c	@ 0
	strh	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldr	r3, =0xab85
	mov	r2, r5
	str	r3, [r5, #0x48]
	mov	r3, #0
	str	r3, [r5, #0x44]
	add	r6, r0
	add	r2, #0x5a
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0
	mov	r3, r6
	bl	_Func_800d14c
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c300
	b	.Lb8138

	.align	2, 0
.Lb812c:
	.word	0
	.pool

.Lb8138:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b80b8

.thumb_func_start Func_80b8144
	push	{lr}
	mov	r2, r0
	ldr	r0, [r2]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x30]
	ldr	r3, =0xab85
	mov	r1, r0
	str	r3, [r0, #0x48]
	add	r1, #0x5a
	mov	r3, #0
	str	r3, [r0, #0x44]
	strb	r3, [r1]
	ldr	r1, [r2, #0xc]
	ldr	r3, [r2, #0x10]
	mov	r2, #0
	bl	_Func_800d14c
	pop	{r0}
	bx	r0
.func_end Func_80b8144

.thumb_func_start Func_80b8178
	push	{r5, r6, lr}
	bl	Func_80b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	strb	r3, [r2]
	bl	_Func_800c4ac
	ldr	r3, [r6, #0xc]
	lsl	r1, r3, #1
	add	r1, r3
	lsr	r3, r1, #31
	add	r1, r3
	asr	r1, #1
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	mov	r2, #0
	bl	_Func_800d14c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b8178

.thumb_func_start Func_80b81c8
	push	{r5, r6, lr}
	bl	Func_80b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x28]
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	strb	r3, [r2]
	bl	_Func_800c4ac
	ldr	r3, =Func_8000888
	ldr	r0, [r6, #0xc]
	ldr	r1, =0x14ccc
	.call_via r3
	mov	r1, r0
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	mov	r2, #0
	bl	_Func_800d14c
	mov	r0, r5
	mov	r1, #5
	bl	_Func_800c300
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b81c8

	.section .rodata
	.global .Lc2a7c
	.global .Lc2a62

.Lc2a62:
	.incrom 0xc2a62, 0xc2a7c
.Lc2a7c:
	.incrom 0xc2a7c, 0xc2ab8
