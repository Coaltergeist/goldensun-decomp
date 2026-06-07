	.include "macros.inc"

.thumb_func_start Func_8098cd8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, [r3, #0x14]
	sub	sp, #0x2c
	mov	r9, r3
	str	r0, [sp, #8]
	bl	Func_8097384
	mov	r0, #0x82
	bl	_Func_80f9080
	add	r1, sp, #0x10
	mov	r5, r9
	mov	r10, r1
	mov	r2, #0xb
	add	r5, #0x58
	mov	r6, r10
	mov	r8, r2
.L98d0a:
	mov	r3, r9
	ldr	r2, [r3, #0x10]
	ldr	r3, [r2, #8]
	str	r3, [r6]
	mov	r0, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_8098b10
	bl	Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_809ba70
	ldr	r0, [r5]
	mov	r1, #9
	bl	_Func_800b684
	ldr	r3, =0xb333
	mov	r0, #2
	str	r3, [r5, #0x2c]
	str	r3, [r5, #0x28]
	bl	Func_80030f8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x48
	cmp	r2, #0
	bge	.L98d0a
	mov	r3, r9
	ldr	r2, [r3, #0x10]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	mov	r1, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0x80
	ldr	r1, [r2]
	lsl	r0, #12
	mov	r2, r10
	bl	Func_800447c
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, #0xd7
	ldr	r3, [r3, #8]
	bl	Func_8096c80
	mov	r6, r0
	cmp	r6, #0
	bne	.L98db4
	bl	Func_809748c
	b	.L98ff2

	.pool_aligned

.L98db4:
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r0, r9
	ldr	r3, [r0]
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #11
	ldr	r2, =0
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r3, r6
	add	r3, #0x55
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #5
	bl	_Func_800c300
	mov	r1, #3
	mov	r0, r6
	bl	_Func_800c598
	mov	r1, #0x80
	ldr	r3, [r6, #0x18]
	lsl	r1, #9
	cmp	r3, r1
	bge	.L98e0c
	b	.L98df4

	.pool_aligned

.L98df4:
	mov	r2, #0xa0
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, [r6, #0x18]
	ldr	r0, =0xffff
	cmp	r3, r0
	ble	.L98df4
.L98e0c:
	mov	r0, #3
	bl	Func_80030f8
	mov	r3, sp
	add	r3, #0x1c
	mov	r1, #0
	mov	r2, #2
	str	r3, [sp, #4]
	mov	r11, r1
	mov	r8, r2
	add	r7, sp, #0x24
.L98e22:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xd7
	bl	Func_8096c80
	mov	r5, r0
	str	r0, [r7]
	sub	r7, #4
	cmp	r5, #0
	beq	.L98e70
	mov	r3, #0xf0
	lsl	r3, #8
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, r9
	ldr	r3, [r0]
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	mov	r0, r5
	mov	r1, #5
	bl	_Func_800c300
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c598
	mov	r1, r11
	ldr	r0, [r5, #0x50]
	bl	Func_8096c48
	mov	r11, r0
.L98e70:
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bge	.L98e22
	mov	r3, r9
	mov	r0, r11
	add	r3, #0x20
	ldrb	r0, [r0, #0x1c]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r11, r0
	cmp	r3, #0
	beq	.L98eb8
	mov	r1, r9
	ldr	r2, [r1, #0x10]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	mov	r1, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0xe0
	ldr	r1, [r2]
	lsl	r0, #14
	mov	r2, r10
	bl	Func_800447c
	b	.L98ece
.L98eb8:
	mov	r0, r9
	ldr	r3, [r0, #4]
	mov	r1, r10
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r0, #8]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #8]
.L98ece:
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	_Func_800d14c
	ldr	r1, =.L9f12c
	mov	r0, r6
	bl	_Func_800c2d8
	ldr	r0, [sp, #4]
	mov	r1, #2
	str	r0, [sp]
	mov	r7, r10
	mov	r8, r1
.L98eee:
	ldr	r3, [sp]
	ldmia	r3!, {r5}
	mov	r2, r3
	str	r2, [sp]
	cmp	r5, #0
	beq	.L98f14
	mov	r0, #3
	bl	Func_80030f8
	ldr	r1, [r7]
	mov	r0, r5
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	_Func_800d14c
	mov	r0, r5
	ldr	r1, =.L9f0b4
	bl	_Func_800c2d8
.L98f14:
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bge	.L98eee
	ldr	r3, [r6]
	mov	r2, #0
	mov	r8, r2
	cmp	r3, #0
	beq	.L98f40
.L98f2a:
	mov	r0, #1
	bl	Func_80030f8
	mov	r3, #1
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0x3b
	bgt	.L98f40
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L98f2a
.L98f40:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	beq	.L98fb8
	mov	r3, r9
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L98fb8
	mov	r3, r9
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L98f68
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r1, #0x28]
.L98f68:
	ldr	r2, [sp, #8]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	ldr	r3, [r2, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0x80
	ldr	r1, [r2]
	lsl	r0, #13
	mov	r2, r10
	bl	Func_800447c
	mov	r1, r10
	ldr	r0, [sp, #8]
	bl	_Func_80120dc
	cmp	r0, #0
	bne	.L98fb8
	ldr	r0, [sp, #8]
	mov	r1, r10
	bl	_Func_800d924
	cmp	r0, #0
	bne	.L98fb8
	ldr	r0, [sp, #8]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x34]
	str	r3, [r0, #0x30]
	mov	r2, r10
	mov	r0, r10
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	ldr	r0, [sp, #8]
	bl	_Func_800d14c
.L98fb8:
	ldr	r0, =0x50000005
	add	r2, sp, #0xc
	mov	r1, #4
	bl	Func_808e4b4
	cmp	r0, #0
	beq	.L98fd6
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r1, [r3]
	ldr	r2, [sp, #0xc]
	bl	Func_8096b28
.L98fd6:
	mov	r0, #0xa
	bl	Func_80030f8
	bl	Func_809748c
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r2, r11
	cmp	r2, #0x60
	beq	.L98ff2
	mov	r0, r11
	bl	Func_8003f3c
.L98ff2:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8098cd8

.thumb_func_start Func_8099018
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #7
	and	r2, r3
	cmp	r2, #0
	bne	.L9902e
	mov	r1, #2
	bl	_Func_800c598
	b	.L99038
.L9902e:
	cmp	r2, #2
	bne	.L99038
	mov	r1, #0
	bl	_Func_800c598
.L99038:
	pop	{r0}
	bx	r0
.func_end Func_8099018

.thumb_func_start Func_8099040
	push	{lr}
	cmp	r0, #0
	beq	.L99062
	ldr	r1, =0xfffff000
	ldr	r2, [r0, #0x1c]
	ldr	r3, [r0, #0x18]
	add	r2, r1
	str	r2, [r0, #0x1c]
	mov	r2, #0x80
	add	r3, r1
	lsl	r2, #5
	str	r3, [r0, #0x18]
	cmp	r3, r2
	bgt	.L99062
	ldr	r1, =Data_9f0b0
	bl	_Func_800c2d8
.L99062:
	pop	{r0}
	bx	r0
.func_end Func_8099040

.thumb_func_start Func_8099070
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	cmp	r6, #0
	beq	.L990c0
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	beq	.L990bc
	ldr	r3, [r6, #0x38]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x3c]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x40]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	lsl	r3, r2, #11
	lsl	r0, r2, #17
	add	r1, r3
	mov	r2, r5
	bl	Func_800447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.L990c0
.L990bc:
	ldr	r3, =Func_8099040
	str	r3, [r6, #0x6c]
.L990c0:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8099070

.thumb_func_start Func_80990cc
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	cmp	r6, #0
	beq	.L9911c
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	beq	.L99118
	ldr	r3, [r6, #0x38]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x3c]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x40]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	lsl	r3, r2, #11
	lsl	r0, r2, #17
	sub	r1, r3
	mov	r2, r5
	bl	Func_800447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.L9911c
.L99118:
	ldr	r3, =Func_8099040
	str	r3, [r6, #0x6c]
.L9911c:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80990cc

.thumb_func_start Func_8099128
	push	{lr}
	ldr	r3, =iwram_3001f30
	ldr	r2, [r3]
	ldr	r1, [r2, #0x14]
	cmp	r1, #0
	beq	.L99156
	mov	r3, r2
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L99148
	add	r2, #0x20
	mov	r3, #1
	strb	r3, [r2]
.L99148:
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	bl	Func_8099160
.L99156:
	pop	{r0}
	bx	r0
.func_end Func_8099128

.thumb_func_start Func_8099160
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	sub	sp, #0x10
	mov	r8, r3
	mov	r9, r2
	bl	Func_8097384
	mov	r0, #0x73
	bl	_Func_80f9080
	mov	r3, #0xf
	add	r7, sp, #4
	mov	r10, r3
.L99186:
	mov	r0, #0xe8
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	Func_8096c80
	mov	r6, r0
	cmp	r6, #0
	beq	.L99212
	bl	Random
	mov	r2, #0x80
	lsl	r2, #8
	lsr	r0, #1
	add	r0, r2
	str	r0, [r6, #0x1c]
	str	r0, [r6, #0x18]
	bl	Random
	mov	r3, #1
	and	r0, r3
	cmp	r0, #0
	beq	.L991b8
	ldr	r3, =Func_8099070
	b	.L991ba
.L991b8:
	ldr	r3, =Func_80990cc
.L991ba:
	str	r3, [r6, #0x6c]
	bl	Random
	mov	r2, r6
	add	r2, #0x64
	mov	r3, #0x3c
	strh	r0, [r6, #6]
	strh	r3, [r2]
	bl	Random
	mov	r3, r6
	add	r3, #0x66
	mov	r1, #9
	strh	r0, [r3]
	mov	r0, r6
	bl	_Func_800c598
	mov	r2, r8
	ldr	r3, [r2, #4]
	str	r3, [r7]
	ldr	r3, [r2, #8]
	str	r3, [r7, #4]
	ldr	r3, [r2, #0xc]
	str	r3, [r7, #8]
	bl	Random
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #10
	lsl	r5, #2
	add	r5, r3
	bl	Random
	mov	r2, r7
	mov	r1, r0
	mov	r0, r5
	bl	Func_800447c
	ldr	r3, [r7]
	str	r3, [r6, #0x38]
	ldr	r3, [r7, #4]
	str	r3, [r6, #0x3c]
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x40]
.L99212:
	mov	r0, #3
	bl	Func_80030f8
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0
	bge	.L99186
	mov	r0, #0xa
	bl	Func_80030f8
	mov	r0, #0x73
	bl	_Func_80f9080
	mov	r0, #0x32
	bl	Func_80030f8
	mov	r2, r9
	cmp	r2, #0
	beq	.L992c2
	mov	r3, r8
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L992c2
	mov	r0, #0xd4
	bl	_Func_80f9080
	mov	r3, #0xf
	mov	r10, r3
.L99254:
	mov	r1, #7
	mov	r0, r9
	bl	_Func_800c598
	mov	r0, #1
	bl	Func_80030f8
	mov	r0, r9
	mov	r1, #0
	bl	_Func_800c598
	mov	r0, #4
	bl	Func_80030f8
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0
	bge	.L99254
	mov	r3, r8
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L99298
	mov	r0, #0xdc
	bl	_Func_80f9080
	mov	r0, r9
	mov	r1, #2
	bl	_Func_800c300
.L99298:
	ldr	r3, =Func_8099018
	mov	r2, r9
	str	r3, [r2, #0x6c]
	ldr	r0, =0x50000005
	mov	r2, sp
	mov	r1, #6
	bl	Func_808e4b4
	cmp	r0, #0
	beq	.L992bc
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	ldr	r2, [sp]
	bl	Func_8096b28
.L992bc:
	mov	r0, #0x14
	bl	Func_80030f8
.L992c2:
	bl	Func_809748c
	add	sp, #0x10
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8099160

.thumb_func_start Func_80992f0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	lsl	r0, #9
	bl	Func_8002322
	mov	r1, r0
	mov	r0, #0x80
	ldr	r3, =Func_8000888
	lsl	r0, #11
	.call_via r3
	ldr	r3, [r5, #0x38]
	add	r3, r0
	str	r3, [r5, #8]
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x80
	mov	r3, r2
	cmp	r2, #0
	bge	.L9932e
	mov	r3, r1
	add	r3, #0xff
.L9932e:
	asr	r3, #7
	lsl	r3, #7
	sub	r3, r2, r3
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80992f0

.thumb_func_start Func_8099340
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f30
	mov	r6, r0
	sub	sp, #0xc
	ldr	r1, [r3]
	cmp	r6, #0
	beq	.L9939e
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	beq	.L99396
	ldr	r3, [r1, #4]
	mov	r5, sp
	str	r3, [r5]
	mov	r0, #0xa0
	ldr	r3, [r1, #8]
	lsl	r0, #12
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r1, #0xc]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	lsl	r3, r2, #11
	lsl	r0, r2, #16
	add	r1, r3
	mov	r2, r5
	bl	Func_800447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.L9939e
.L99396:
	ldr	r1, =Data_9f0b0
	mov	r0, r6
	bl	_Func_800c2d8
.L9939e:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8099340

.thumb_func_start Func_80993b0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, =iwram_3001f30
	mov	r7, r5
	add	r7, #0x64
	ldr	r6, [r3]
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r3, #1
	neg	r3, r3
	sub	sp, #0xc
	cmp	r0, r3
	beq	.L99410
	lsl	r0, #10
	bl	Func_8002322
	mov	r1, r0
	mov	r0, #0xc0
	ldr	r3, =Func_8000888
	lsl	r0, #11
	.call_via r3
	ldr	r3, [r6, #4]
	add	r3, r0
	str	r3, [r5, #8]
	mov	r2, #0x80
	ldr	r3, [r6, #8]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0x10]
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x40
	mov	r3, r2
	cmp	r2, #0
	bge	.L99408
	mov	r3, r1
	add	r3, #0x7f
.L99408:
	asr	r3, #6
	lsl	r3, #6
	sub	r3, r2, r3
	strh	r3, [r7]
.L99410:
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	Func_b50_from_thumb
	cmp	r0, #0
	bne	.L9949c
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	mov	r2, #0x80
	ldr	r3, [r5, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	Random
	lsl	r5, r0, #1
	add	r5, r0
	bl	Random
	lsl	r5, #1
	mov	r1, r0
	mov	r2, r6
	mov	r0, r5
	bl	Func_800447c
	ldr	r0, =0x11d
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	Func_8096c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L9949c
	ldr	r3, =Func_80992f0
	str	r3, [r5, #0x6c]
	ldr	r3, =0x9999
	mov	r2, r5
	add	r2, #0x55
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xe5
	lsl	r3, #1
	str	r3, [r5, #0x48]
	bl	Random
	mov	r3, r5
	lsr	r0, #9
	add	r3, #0x64
	strh	r0, [r3]
	ldr	r3, [r5, #8]
	mov	r0, r5
	str	r3, [r5, #0x38]
	mov	r1, #9
	bl	_Func_800c598
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #0x48
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Func_800c2d8
.L9949c:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80993b0

