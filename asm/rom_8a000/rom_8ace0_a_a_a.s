	.include "macros.inc"

.thumb_func_start Func_808ace0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =ewram_2000240
	ldr	r3, [r3]
	mov	r1, #0xe0
	lsl	r1, #1
	mov	r10, r3
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r4, [r3, r1]
	mov	r11, r4
	mov	r4, #0xe1
	lsl	r4, #1
	add	r3, r2, r4
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r6, #0xd0
	sub	sp, #8
	lsl	r6, #1
	mov	r3, #0
	mov	r9, r1
	add	r6, r10
	ldr	r5, =.L9d170
	mov	r7, #0
	str	r3, [sp, #4]
	cmp	r0, #0
	beq	.L8ad80
	mov	r1, #1
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	neg	r1, r1
	ldrh	r2, [r5]
	cmp	r3, r1
	beq	.L8ad80
	mov	r8, r1
	ldr	r1, =0x7fff
.L8ad34:
	lsl	r3, r2, #16
	asr	r3, #16
	cmp	r3, r11
	bne	.L8ad74
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	cmp	r3, r8
	beq	.L8ad48
	cmp	r3, r9
	bne	.L8ad74
.L8ad48:
	ldrh	r0, [r5, #4]
	mov	r3, r1
	and	r3, r0
	cmp	r3, r1
	beq	.L8ad62
	lsl	r0, #17
	asr	r0, #17
	str	r1, [sp]
	bl	_Func_8079338
	ldr	r1, [sp]
	cmp	r0, #0
	bne	.L8ad74
.L8ad62:
	ldrb	r3, [r5, #5]
	lsl	r3, #24
	asr	r3, #31
	lsl	r3, #16
	asr	r3, #16
	mov	r1, #6
	ldrsh	r7, [r5, r1]
	str	r3, [sp, #4]
	b	.L8ad80
.L8ad74:
	add	r5, #8
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	ldrh	r2, [r5]
	cmp	r3, r8
	bne	.L8ad34
.L8ad80:
	mov	r3, #0
	strb	r3, [r6]
	add	r6, #1
	mov	r3, #0
.L8ad88:
	strb	r7, [r6]
	add	r6, #1
	cmp	r7, #0
	beq	.L8ad92
	add	r7, #1
.L8ad92:
	add	r3, #1
	cmp	r3, #6
	bls	.L8ad88
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.L8adb0
	ldr	r0, =0x1a1
	mov	r2, #0xd0
	add	r0, r10
	ldrb	r3, [r0]
	lsl	r2, #1
	add	r2, r10
	mov	r1, #0
	strb	r3, [r2]
	strb	r1, [r0]
.L8adb0:
	mov	r2, #0xd4
	lsl	r2, #1
	add	r2, r10
	mov	r3, #0
	str	r3, [r2]
	mov	r2, #0xd6
	lsl	r2, #1
	mov	r3, #0x80
	add	r2, r10
	lsl	r3, #13
	str	r3, [r2]
	bl	Func_808b25c
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808ace0

.thumb_func_start Func_808adf0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r1, sp
	ldr	r5, =.L9d7a8
	bl	_Func_80122c8
	mov	r1, #0
	mov	r10, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldr	r1, =0xffff0000
	mov	r6, r0
	asr	r0, r1, #16
	ldrh	r2, [r5]
	cmp	r3, r0
	beq	.L8ae56
	mov	r7, r1
	mov	r8, r0
.L8ae1a:
	lsl	r3, r2, #16
	ldr	r2, [sp]
	asr	r3, #16
	cmp	r3, r2
	bne	.L8ae4a
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	asr	r2, r7, #16
	cmp	r3, r2
	beq	.L8ae32
	cmp	r3, r6
	bne	.L8ae4a
.L8ae32:
	mov	r3, #4
	ldrsh	r0, [r5, r3]
	cmp	r0, r2
	beq	.L8ae42
	bl	_Func_8079338
	cmp	r0, #0
	bne	.L8ae4a
.L8ae42:
	mov	r2, #6
	ldrsh	r1, [r5, r2]
	mov	r10, r1
	b	.L8ae56
.L8ae4a:
	add	r5, #8
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, r8
	bne	.L8ae1a
.L8ae56:
	mov	r0, r6
	bl	Func_808b2b0
	mov	r0, r10
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808adf0

.thumb_func_start Func_808ae74
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	ldr	r0, =0x15f
	mov	r11, r3
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8ae9a
	b	.L8afa0
.L8ae9a:
	mov	r0, #0xb0
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	bne	.L8af26
	ldr	r0, =0x161
	bl	_Func_8079338
	cmp	r0, #0
	bne	.L8af26
	ldr	r2, [sp, #4]
	mov	r0, #0
	cmp	r2, #0
	bne	.L8aeba
	b	.L8affc
.L8aeba:
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8aecc
	b	.L8affc
.L8aecc:
	ldr	r2, [sp, #4]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =.L9c610
	lsl	r3, #2
	add	r3, r2
	ldrh	r7, [r3]
	mov	r9, r3
	cmp	r7, #0
	bne	.L8aee2
	b	.L8affc
.L8aee2:
	mov	r0, #5
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8aefe
	mov	r0, #5
	bl	_Func_8077394
	mov	r3, #0x92
	lsl	r3, #1
	add	r0, r3
	ldr	r0, [r0]
	cmp	r0, #0x82
	bgt	.L8af26
.L8aefe:
	bl	_Func_8077348
	mov	r2, r9
	ldrh	r3, [r2, #2]
	sub	r0, r3
	cmp	r0, #0
	bge	.L8af0e
	mov	r0, #0
.L8af0e:
	cmp	r0, #5
	ble	.L8af14
	mov	r0, #5
.L8af14:
	cmp	r0, #0
	ble	.L8af2a
	ldr	r3, =ewram_2000240
	mov	r2, #0x91
	lsl	r2, #2
	add	r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L8af2a
.L8af26:
	mov	r0, #0
	b	.L8affc
.L8af2a:
	lsl	r3, r0, #2
	add	r3, r0
	add	r7, r3
	mov	r3, #0xd4
	lsl	r3, #1
	add	r3, r11
	ldr	r5, [r3]
	mov	r10, r3
	cmp	r5, #0
	bne	.L8af66
	bl	Func_8004458
	mov	r5, r0
	bl	Func_8004458
	mov	r8, r0
	bl	Func_8004458
	mov	r6, r0
	bl	Func_8004458
	mov	r2, r8
	sub	r5, r2
	add	r5, r6
	sub	r5, r0
	lsr	r3, r5, #31
	add	r5, r3
	asr	r5, #1
	mov	r3, r10
	str	r5, [r3]
.L8af66:
	lsl	r3, r7, #4
	sub	r3, #0x10
	mul	r3, r5
	lsl	r0, r7, #20
	mov	r1, #0x80
	add	r0, r3
	lsl	r1, #13
	ldr	r3, =Func_80008ac
	bl	_call_via_r3
	ldr	r3, =Func_8000888
	ldr	r1, [sp]
	.call_via r3
	ldr	r3, =ewram_2000240
	mov	r2, #0x8e
	lsl	r2, #2
	add	r3, r2
	ldr	r2, [r3]
	add	r2, r0
	str	r2, [r3]
	mov	r3, #0xd6
	lsl	r3, #1
	add	r3, r11
	ldr	r3, [r3]
	mov	r0, #0
	cmp	r2, r3
	blt	.L8affc
.L8afa0:
	mov	r2, #0xd4
	lsl	r2, #1
	add	r2, r11
	mov	r3, #0
	str	r3, [r2]
	mov	r2, r9
	mov	r5, #0
	add	r2, #0x14
	mov	r1, #7
.L8afb2:
	ldrb	r3, [r2]
	sub	r1, #1
	add	r2, #1
	add	r5, r3
	cmp	r1, #0
	bge	.L8afb2
	mov	r0, #0
	cmp	r5, #0
	beq	.L8affc
	bl	Func_8004458
	mov	r3, r5
	mul	r3, r0
	mov	r2, r9
	lsr	r0, r3, #16
	ldrb	r3, [r2, #0x14]
	sub	r0, r3
	mov	r1, #0
	cmp	r0, #0
	blt	.L8afec
	add	r2, #0x14
.L8afdc:
	add	r1, #1
	cmp	r1, #7
	bgt	.L8afec
	add	r2, #1
	ldrb	r3, [r2]
	sub	r0, r3
	cmp	r0, #0
	bge	.L8afdc
.L8afec:
	lsl	r3, r1, #1
	add	r3, #4
	mov	r2, r9
	ldrh	r5, [r2, r3]
	ldr	r0, [sp, #4]
	bl	Func_808b320
	mov	r0, r5
.L8affc:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808ae74

.thumb_func_start Func_808b02c
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xd0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldrb	r0, [r3, r0]
	bl	Func_808ae74
	pop	{r1}
	bx	r1
.func_end Func_808b02c

.thumb_func_start Func_808b048
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808adf0
	mov	r1, r5
	bl	Func_808ae74
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_808b048

