	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b26cc
	push	{r5, r6, lr}
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	add	r6, r5, r3
	mov	r0, r6
	bl	_Func_8079338
	cmp	r0, #0
	bne	.Lb2716
	mov	r0, r6
	bl	_Func_8079358
	lsl	r3, r5, #5
	add	r3, r5
	lsl	r2, r3, #1
	ldr	r1, =.Lb41ac
	mov	r3, r2
	add	r3, #0x30
	ldrsh	r0, [r1, r3]
	mov	r6, #0
	cmp	r0, #0
	beq	.Lb2716
	add	r3, r2, r1
	mov	r5, r3
	add	r5, #0x30
.Lb2700:
	mov	r1, #1
	add	r6, #1
	bl	_Func_8078ad0
	cmp	r6, #7
	bgt	.Lb2716
	add	r5, #2
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	cmp	r0, #0
	bne	.Lb2700
.Lb2716:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b26cc

.thumb_func_start Func_80b2720
	push	{r5, lr}
	lsl	r3, r0, #5
	add	r3, r0
	mov	r5, r1
	ldr	r1, =.Lb41ac
	lsl	r2, r3, #1
	ldrsh	r3, [r1, r2]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lb274e
	mov	r0, r5
	add	r2, r1
.Lb2738:
	ldrh	r3, [r2]
	add	r4, #1
	strh	r3, [r0]
	add	r2, #2
	add	r0, #2
	cmp	r4, #0x17
	bgt	.Lb274e
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.Lb2738
.Lb274e:
	ldr	r3, .Lb275c	@ 0
	lsl	r2, r4, #1
	strh	r3, [r2, r5]
	mov	r0, r4
	pop	{r5}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb275c:
	.word	0
.func_end Func_80b2720

.thumb_func_start Func_80b2764
	lsl	r3, r0, #5
	add	r3, r0
	ldr	r2, =.Lb41ac
	lsl	r3, #1
	add	r3, #0x40
	ldrsh	r0, [r2, r3]
	bx	lr
.func_end Func_80b2764

.thumb_func_start Func_80b2778
	push	{r5, lr}
	mov	r5, r1
	bl	_Func_8077394
	ldrb	r2, [r0, #0xf]
	mov	r0, #0
	cmp	r5, #0
	bne	.Lb2790
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r0, r3, #2
	b	.Lb27aa
.Lb2790:
	cmp	r5, #1
	bne	.Lb2798
	mov	r0, #0xa
	b	.Lb27aa
.Lb2798:
	cmp	r5, #2
	bne	.Lb27a0
	mov	r0, #0x32
	b	.Lb27aa
.Lb27a0:
	cmp	r5, #3
	bne	.Lb27aa
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r0, r3, #1
.Lb27aa:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b2778

.thumb_func_start Func_80b27b0
	push	{r5, lr}
	mov	r5, r1
	bl	_Func_8077394
	mov	r2, r0
	mov	r0, #0
	cmp	r5, #0
	bne	.Lb27c8
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	ble	.Lb27fe
.Lb27c8:
	cmp	r5, #1
	bne	.Lb27da
	ldr	r1, =0x131
	add	r3, r2, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.Lb27fe
.Lb27da:
	cmp	r5, #2
	bne	.Lb27ea
	mov	r1, #0xa0
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb27fe
.Lb27ea:
	cmp	r5, #3
	bne	.Lb2800
	mov	r1, #0x98
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb2800
.Lb27fe:
	mov	r0, #1
.Lb2800:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b27b0

.thumb_func_start Func_80b280c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x3aa
	ldr	r5, [r3]
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	sub	r1, #3
	mov	r10, r3
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	sub	sp, #4
	mov	r7, #0
	cmp	r2, r3
	bge	.Lb2866
	add	r3, r5, #2
	mov	r6, #0xdb
	mov	r8, r3
	lsl	r6, #2
.Lb2840:
	mov	r1, r8
	ldrsh	r0, [r1, r6]
	mov	r1, r10
	str	r2, [sp]
	bl	Func_80b27b0
	ldr	r2, [sp]
	cmp	r0, #0
	beq	.Lb2854
	add	r2, #1
.Lb2854:
	ldr	r1, =0x3a7
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	blt	.Lb2840
.Lb2866:
	mov	r0, r2
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b280c

.thumb_func_start Func_80b2884
	push	{lr}
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #1
	bne	.Lb289e
	ldr	r3, =0xd2e
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb289e:
	cmp	r1, #2
	bne	.Lb28aa
	ldr	r3, =0xd38
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28aa:
	cmp	r1, #3
	bne	.Lb28b6
	ldr	r3, =0xd42
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28b6:
	pop	{r1}
	bx	r1
.func_end Func_80b2884

.thumb_func_start Func_80b28d4
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xe9
	ldr	r3, [r3]
	lsl	r2, #2
	add	r3, r2
	mov	r6, r0
	ldrh	r0, [r3]
	bl	_Func_80915ac
	mov	r5, r0
	bl	_Func_8019a54
	mov	r0, r6
	bl	Func_80b2884
	lsl	r5, #16
	mov	r3, #0x22
	orr	r5, r3
	mov	r1, #5
	mov	r2, #0
	mov	r3, r5
	mov	r6, r0
	bl	_Func_8017658
	b	.Lb290e
.Lb2908:
	mov	r0, #1
	bl	Func_80030f8
.Lb290e:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb2908
	mov	r0, #1
	bl	Func_80030f8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b28d4

.thumb_func_start Func_80b2928
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r6, #0xe0
	mov	r8, r3
	lsl	r6, #2
	add	r6, r8
	ldr	r3, [r6]
	ldrb	r3, [r3, #5]
	mov	r10, r3
	mov	r3, #0xe9
	lsl	r3, #2
	add	r3, r8
	mov	r7, r0
	ldrh	r0, [r3]
	bl	_Func_80915ac
	mov	r5, r0
	mov	r0, r7
	bl	Func_80b2884
	ldr	r2, [r6]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r7, r0
	lsl	r5, #16
	bl	_Func_8019a54
	mov	r3, #0x22
	orr	r5, r3
	mov	r0, r7
	mov	r1, #5
	mov	r2, #0
	mov	r3, r5
	bl	_Func_8017658
	b	.Lb297e
.Lb2978:
	mov	r0, #1
	bl	Func_80030f8
.Lb297e:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb2978
	mov	r0, #1
	bl	Func_80030f8
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r3, [r3]
	mov	r2, r10
	strb	r2, [r3, #5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2928

.thumb_func_start Func_80b29a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	sub	sp, #8
	mov	r8, r1
	mov	r5, r0
	mov	r10, r1
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r7, [r3]
	mov	r1, r8
	add	r3, r7, r2
	strb	r1, [r3]
	mov	r0, r5
	bl	_Func_8092054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0xe9
	ldrh	r2, [r3]
	lsl	r1, #2
	add	r3, r7, r1
	strh	r2, [r3]
	mov	r1, #0
	ldrh	r0, [r3]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_8019da8
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb2a2c
	mov	r0, #5
	neg	r0, r0
	mov	r5, #2
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	str	r5, [sp]
	bl	_Func_80162d4
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb2a2c
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	mov	r0, #0
	str	r5, [sp]
	bl	_Func_80162d4
	mov	r3, #4
	neg	r3, r3
	mov	r8, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	mov	r3, r8
	bl	_Func_801ec6c
.Lb2a2c:
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r7, r2
	mov	r1, #0x80
	ldrh	r0, [r3]
	mov	r6, #0
	lsl	r1, #23
	mov	r2, r8
	mov	r3, #0
	str	r6, [sp]
	bl	_Func_801eadc
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r5, #5]
	mov	r3, #0xe0
	lsl	r3, #2
	strb	r6, [r5, #4]
	mov	r1, #0x20
	add	r6, r7, r3
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0x70
	bl	Func_80b0a20
	str	r5, [r6]
	ldr	r0, =0xd21
	bl	Func_80b28d4
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x10
	bl	_Func_80162d4
	str	r0, [r7, #0xc]
	bl	Func_80b10cc
	ldr	r1, =0x3aa
	add	r6, r7, r1
	b	.Lb2ab8
.Lb2a82:
	ldr	r5, =0xd24
	mov	r0, r5
	bl	Func_80b28d4
	bl	Func_80b280c
	cmp	r0, #0
	bne	.Lb2a9a
	add	r0, r5, #1
	bl	Func_80b28d4
	b	.Lb2a9e
.Lb2a9a:
	bl	Func_80b2b10
.Lb2a9e:
	mov	r2, #0xe0
	mov	r3, #0
	lsl	r2, #2
	mov	r1, #0x20
	add	r0, r7, r2
	strb	r3, [r6]
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_80b0a20
	ldr	r0, =0xd22
	bl	Func_80b28d4
.Lb2ab8:
	mov	r0, r10
	bl	_Func_8028db4
	mov	r1, #1
	mov	r10, r0
	mov	r3, r10
	neg	r1, r1
	strb	r3, [r6]
	cmp	r10, r1
	bne	.Lb2a82
	ldr	r0, =0xd23
	bl	Func_80b28d4
	ldr	r0, [r7, #0xc]
	mov	r1, #2
	bl	_Func_8016418
	mov	r0, r8
	mov	r1, #2
	bl	_Func_8016418
	bl	Func_80b0204
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b29a8

.thumb_func_start Func_80b2b10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0xc
	ldr	r7, [r3]
	mov	r1, #1
	ldr	r2, =0x3aa
	mov	r0, #0
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r0, =0xd26
	mov	r9, r3
	bl	Func_80b28d4
	mov	r5, #2
	mov	r1, #0xc
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #1
	str	r5, [sp]
	bl	_Func_80162d4
	mov	r4, #0xe0
	lsl	r4, #2
	add	r3, r7, r4
	ldr	r2, [r3]
	add	r1, sp, #4
	mov	r11, r0
	mov	r0, #0xea
	ldrb	r1, [r1]
	mov	r3, #4
	lsl	r0, #2
	strb	r3, [r2, #5]
	add	r3, r7, r0
	strb	r1, [r3]
	ldr	r2, [sp, #8]
	mov	r0, r11
	str	r2, [sp]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_80a1870
	mov	r0, #1
	mov	r1, #0x10
	mov	r2, #0x17
	mov	r3, #3
	str	r5, [sp]
	bl	_Func_80162d4
	mov	r6, #0
	mov	r5, #0xdb
	mov	r10, r6
	mov	r8, r6
	lsl	r5, #2
	str	r0, [sp, #8]
	b	.Lb2b98
.Lb2b94:
	add	r5, #2
	add	r6, #1
.Lb2b98:
	ldr	r4, =0x3a7
	add	r3, r7, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r6, r3
	bge	.Lb2bb6
	add	r3, r7, #2
	ldrsh	r0, [r3, r5]
	mov	r1, r9
	mov	r10, r0
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2b94
.Lb2bb6:
	mov	r2, #1
	str	r2, [sp, #4]
.Lb2bba:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb2bfa
	mov	r4, #0
	ldr	r0, =0xd26
	mov	r8, r4
	bl	Func_80b28d4
	mov	r5, #0xdb
	mov	r0, #1
	mov	r6, #0
	lsl	r5, #2
	str	r0, [sp, #4]
	b	.Lb2bda
.Lb2bd6:
	add	r5, #2
	add	r6, #1
.Lb2bda:
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r6, r3
	bge	.Lb2bfa
	add	r3, r7, #2
	ldrsh	r2, [r3, r5]
	mov	r10, r2
	mov	r0, r10
	mov	r1, r9
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2bd6
.Lb2bfa:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.Lb2c4a
	ldr	r2, =0x3a7
	mov	r1, #0
	str	r1, [sp, #4]
	add	r3, r7, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	add	r0, r6, r1
	bl	Func_b1c_from_thumb
	mov	r3, #0xdb
	mov	r6, r0
	lsl	r1, r6, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r7, #2
	add	r1, r6
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r11
	mov	r2, #0
	mov	r10, r4
	bl	Func_80b0a6c
	mov	r1, #0xea
	lsl	r1, #2
	add	r2, r7, r1
	mov	r3, #3
	mov	r0, r11
	mov	r1, r6
	strb	r3, [r2]
	bl	Func_80b2e30
	mov	r1, r10
	ldr	r0, [sp, #8]
	bl	Func_80b2ed8
.Lb2c4a:
	ldr	r1, =iwram_3001c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb2d12
	mov	r0, #1
	bl	Func_80030f8
	mov	r1, r9
	mov	r0, r10
	bl	Func_80b2778
	mov	r1, r9
	mov	r5, r0
	mov	r0, r10
	bl	Func_80b27b0
	cmp	r0, #0
	bne	.Lb2c7a
	mov	r0, #0x71
	bl	_Func_80f9080
	b	.Lb2bba
.Lb2c7a:
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, #5
	bl	_Func_8019908
	ldr	r2, =0xd27
	mov	r8, r2
	mov	r0, r8
	bl	Func_80b28d4
	mov	r0, #0
	bl	Func_80b0664
	cmp	r0, #0
	beq	.Lb2cac
	mov	r0, r8
	add	r0, #2
	bl	Func_80b2928
	mov	r3, #1
	mov	r8, r3
	b	.Lb2bba
.Lb2cac:
	ldr	r3, =ewram_2000240
	ldr	r3, [r3, #0x10]
	cmp	r5, r3
	bls	.Lb2cc8
	mov	r0, #0x71
	bl	_Func_80f9080
	mov	r0, r8
	add	r0, #1
	bl	Func_80b2928
	mov	r4, #1
	mov	r8, r4
	b	.Lb2bba
.Lb2cc8:
	mov	r1, #1
	mov	r0, r10
	bl	_Func_8019908
	mov	r0, r8
	add	r0, #3
	bl	Func_80b28d4
	bl	_Func_8019a54
	mov	r1, r9
	mov	r0, r10
	bl	Func_80b2da8
	mov	r0, r6
	bl	Func_80b3050
	neg	r0, r5
	bl	_Func_8079700
	bl	Func_80b10cc
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r8
	add	r0, #4
	bl	Func_80b28d4
	bl	Func_80b280c
	cmp	r0, #0
	beq	.Lb2d5a
	mov	r0, #1
	mov	r8, r0
	b	.Lb2bba
.Lb2d12:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d24
	mov	r0, #0x71
	bl	_Func_80f9080
	b	.Lb2d5a
.Lb2d24:
	ldr	r5, =iwram_3001b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d3c
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r1, #1
	str	r1, [sp, #4]
	sub	r6, #1
.Lb2d3c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d52
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r2, #1
	str	r2, [sp, #4]
	add	r6, #1
.Lb2d52:
	mov	r0, #1
	bl	Func_80030f8
	b	.Lb2bba
.Lb2d5a:
	bl	_Func_80a195c
	mov	r1, #2
	ldr	r0, [sp, #8]
	bl	_Func_8016418
	mov	r0, r11
	mov	r1, #2
	bl	_Func_8016418
	mov	r0, #1
	bl	Func_80030f8
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b2b10

.thumb_func_start Func_80b2da8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r5, r1
	bl	_Func_8077394
	mov	r2, r0
	cmp	r5, #0
	bne	.Lb2dc8
	ldrh	r3, [r2, #0x34]
	mov	r0, r7
	strh	r3, [r2, #0x38]
	bl	_Func_807822c
	b	.Lb2e20
.Lb2dc8:
	cmp	r5, #1
	bne	.Lb2dd0
	ldr	r3, =0x131
	b	.Lb2dd8
.Lb2dd0:
	cmp	r5, #2
	bne	.Lb2de0
	mov	r3, #0xa0
	lsl	r3, #1
.Lb2dd8:
	add	r2, r3
	mov	r3, #0
	strb	r3, [r2]
	b	.Lb2e20
.Lb2de0:
	cmp	r5, #3
	bne	.Lb2e20
	mov	r3, #0x80
	lsl	r3, #2
	mov	r5, r2
	mov	r8, r3
	mov	r6, #0xe
	add	r5, #0xd8
.Lb2df0:
	ldrh	r2, [r5]
	mov	r3, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2e18
	ldrh	r0, [r5]
	bl	_Func_8078414
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2e18
	ldrh	r2, [r5]
	mov	r3, r8
	eor	r3, r2
	strh	r3, [r5]
	mov	r0, r7
	bl	_Func_8077428
.Lb2e18:
	sub	r6, #1
	add	r5, #2
	cmp	r6, #0
	bge	.Lb2df0
.Lb2e20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2da8

.thumb_func_start Func_80b2e30
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r11, r1
	ldr	r7, [r3]
	ldr	r1, =0x3aa
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r3
	cmp	r0, #0
	beq	.Lb2eb8
	ldr	r2, =0x3a7
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lb2eb8
	mov	r2, #0x8a
	add	r3, r7, #2
	sub	r1, #0x3e
	lsl	r2, #1
	mov	r10, r3
	mov	r8, r1
	add	r5, r7, r2
.Lb2e72:
	cmp	r6, r11
	bne	.Lb2e80
	ldr	r0, [r5]
	mov	r1, #0x1e
	bl	_Func_800ba30
	b	.Lb2e88
.Lb2e80:
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Func_800ba30
.Lb2e88:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x40]
	mov	r2, r8
	mov	r3, r10
	ldrsh	r0, [r3, r2]
	mov	r1, r9
	bl	Func_80b27b0
	cmp	r0, #0
	bne	.Lb2ea2
	ldr	r3, =0xb333
	str	r3, [r5, #0x40]
.Lb2ea2:
	ldr	r1, =0x3a7
	mov	r3, #2
	add	r8, r3
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r6, #1
	add	r5, #4
	cmp	r6, r3
	blt	.Lb2e72
.Lb2eb8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2e30

.thumb_func_start Func_80b2ed8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r7, r1
	mov	r6, r0
	mov	r1, r5
	mov	r0, r7
	bl	Func_80b2778
	mov	r8, r0
	cmp	r6, #0
	beq	.Lb2f30
	mov	r0, r6
	bl	_Func_8016478
	mov	r0, r7
	mov	r1, r5
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2f12
	ldr	r5, =0xd2c
	b	.Lb2f14
.Lb2f12:
	ldr	r5, =0xd2d
.Lb2f14:
	mov	r0, r5
	bl	Func_80b2884
	mov	r1, #5
	mov	r5, r0
	mov	r0, r8
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e74c
.Lb2f30:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2ed8

.thumb_func_start Func_80b2f4c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0x40
	add	r2, r6
	mov	r7, #0
	ldrsb	r7, [r2, r7]
	sub	sp, #0xc
	mov	r8, r2
	cmp	r7, #0
	bne	.Lb2fc2
	ldr	r3, [r6, #0x14]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Func_8004458
	mov	r1, r0
	mov	r0, #0xa0
	lsl	r0, #14
	mov	r2, r5
	bl	Func_800447c
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, r6
	bl	_Func_809ba5c
	ldr	r3, [r6, #0x14]
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Func_8004458
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	Func_800447c
	ldr	r3, [r5]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x20]
	ldr	r3, =0x6666
	str	r3, [r6, #0x24]
	mov	r3, r6
	add	r3, #0x42
	strb	r7, [r3]
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.Lb2fea
.Lb2fc2:
	cmp	r7, #1
	bne	.Lb2fd6
	mov	r0, r6
	bl	_Func_809ba34
	cmp	r0, #0
	bne	.Lb2fea
	mov	r3, r8
	strb	r0, [r3]
	b	.Lb2fea
.Lb2fd6:
	cmp	r7, #2
	bne	.Lb2fea
	mov	r0, r6
	bl	_Func_809ba34
	cmp	r0, #0
	bne	.Lb2fea
	mov	r0, r6
	bl	_Func_809bb34
.Lb2fea:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2f4c

.thumb_func_start Func_80b2ffc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xec
	ldr	r7, [r3]
	lsl	r2, #2
	add	r5, r7, r2
	mov	r6, #0x17
.Lb300a:
	mov	r0, r5
	sub	r6, #1
	bl	_Func_809b804
	add	r5, #0x48
	cmp	r6, #0
	bge	.Lb300a
	ldr	r2, =0x3ab
	add	r3, r7, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.Lb3040
	bl	Func_8004458
	mov	r2, #0x8a
	lsl	r1, r0, #3
	lsl	r3, r5, #2
	lsl	r2, #1
	sub	r1, r0
	add	r3, r2
	lsr	r1, #16
	ldr	r0, [r7, r3]
	bl	_Func_800b684
.Lb3040:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2ffc

.thumb_func_start Func_80b3050
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r1, #0xe0
	mov	r8, r3
	lsl	r1, #2
	add	r1, r8
	ldr	r3, [r1]
	ldr	r2, =0x3ab
	ldrb	r3, [r3, #5]
	add	r2, r8
	mov	r11, r3
	mov	r3, #0xff
	strb	r3, [r2]
	ldr	r2, [r1]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r3, =0x3aa
	add	r3, r8
	ldr	r2, =.Lb4ab2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r10, r0
	ldrsb	r0, [r2, r3]
	sub	sp, #0xc
	bl	_Func_80f9080
	ldr	r0, =0x202108
	bl	Func_80b0840
	mov	r0, r10
	lsl	r0, #2
	mov	r3, #0x8a
	mov	r9, r0
	lsl	r3, #1
	add	r3, r9
	mov	r1, r8
	ldr	r0, [r1, r3]
	mov	r1, #0
	bl	_Func_800baf8
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80b2ffc
	bl	Func_80041d8
	mov	r3, r10
	mov	r0, #0x9a
	lsl	r2, r3, #1
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, r8
	ldrsh	r3, [r1, r3]
	mov	r6, sp
	lsl	r3, #16
	mov	r1, #0xa2
	str	r3, [r6]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, r8
	ldrsh	r3, [r2, r3]
	ldr	r1, =0xfff40000
	lsl	r3, #16
	add	r3, r1
	mov	r5, #0xec
	lsl	r5, #2
	str	r3, [r6, #8]
	mov	r7, #0
	add	r5, r8
.Lb30ee:
	mov	r1, #0x8e
	ldr	r3, [r6, #8]
	ldr	r2, [r6]
	mov	r0, r5
	lsl	r1, #1
	bl	_Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_80b2f4c
	bl	_Func_809ba7c
	mov	r1, #7
	mov	r0, r5
	bl	_Func_809ba70
	bl	Func_8004458
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	_Func_800b684
	ldr	r3, =0xb333
	mov	r0, #3
	str	r3, [r5, #0x2c]
	str	r3, [r5, #0x28]
	bl	Func_80030f8
	cmp	r7, #5
	bne	.Lb3134
	ldr	r3, =0x3ab
	mov	r2, r10
	add	r3, r8
	strb	r2, [r3]
.Lb3134:
	add	r7, #1
	add	r5, #0x48
	cmp	r7, #0x11
	ble	.Lb30ee
	bl	Func_80b04c4
	mov	r2, #0xfc
	lsl	r2, #2
	mov	r1, #2
	add	r2, r8
	mov	r7, #0x17
.Lb314a:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Lb3154
	strb	r1, [r2]
.Lb3154:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.Lb314a
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r0, #0x7e
	bl	_Func_80f9080
	ldr	r2, =0x3ab
	mov	r3, #0xff
	add	r2, r8
	strb	r3, [r2]
	add	r3, #0x15
	add	r3, r9
	mov	r1, r8
	ldr	r0, [r1, r3]
	mov	r1, #0
	bl	_Func_800b684
	mov	r0, #0x14
	bl	Func_80030f8
	ldr	r6, =0x3f5
	mov	r5, #0xec
	lsl	r5, #2
	add	r6, r8
	add	r5, r8
	mov	r7, #0x17
.Lb3190:
	ldrb	r3, [r6]
	lsl	r3, #24
	add	r6, #0x48
	cmp	r3, #0
	beq	.Lb31a0
	mov	r0, r5
	bl	_Func_809bb34
.Lb31a0:
	sub	r7, #1
	add	r5, #0x48
	cmp	r7, #0
	bge	.Lb3190
	ldr	r0, =Func_80b2ffc
	bl	Func_8004278
	mov	r3, #0x8a
	lsl	r3, #1
	add	r3, r9
	mov	r2, r8
	ldr	r0, [r2, r3]
	mov	r1, #0x10
	bl	_Func_800baf8
	bl	Func_80b0894
	mov	r0, #0x1e
	bl	Func_80030f8
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r3, [r3]
	mov	r0, r11
	strb	r0, [r3, #5]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b3050

.thumb_func_start Func_80b3210
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x3a7
	ldr	r6, [r3]
	ldr	r3, =.Lb4ab6
	ldrsb	r0, [r3, r0]
	add	r3, r6, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	sub	sp, #4
	mov	r10, r0
	mov	r7, #0
	cmp	r2, r3
	bge	.Lb3266
	add	r3, r6, #2
	mov	r5, #0xdb
	mov	r8, r3
	lsl	r5, #2
.Lb323e:
	mov	r1, r8
	ldrsh	r0, [r1, r5]
	str	r2, [sp]
	bl	_Func_8077394
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	beq	.Lb3254
	add	r2, #1
.Lb3254:
	ldr	r1, =0x3a7
	add	r3, r6, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r7, #1
	add	r5, #2
	cmp	r7, r3
	blt	.Lb323e
.Lb3266:
	mov	r0, r10
	mul	r0, r2
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b3210

.thumb_func_start Func_80b3284
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r1
	sub	sp, #4
	mov	r6, r0
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x3a9
	ldr	r5, [r3]
	mov	r2, #1
	add	r3, r5, r1
	strb	r2, [r3]
	cmp	r6, #5
	bne	.Lb32ae
	add	r1, #3
	add	r3, r5, r1
	strb	r2, [r3]
.Lb32ae:
	mov	r0, r9
	bl	_Func_8092054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0xe9
	ldrh	r3, [r3]
	lsl	r2, #2
	add	r7, r5, r2
	strh	r3, [r7]
	mov	r2, #0
	mov	r3, #0
	mov	r1, #0
	ldrh	r0, [r7]
	bl	_Func_8019da8
	mov	r8, r0
	mov	r0, r6
	bl	Func_80b3210
	mov	r1, #5
	mov	r6, r0
	bl	_Func_8019908
	ldr	r3, =0xd1c
	mov	r10, r3
	mov	r0, r10
	bl	Func_80b04dc
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0
	bl	_Func_80162d4
	str	r0, [r5, #0xc]
	bl	Func_80b10cc
	mov	r0, #0
	bl	Func_80b0634
	cmp	r0, #0
	beq	.Lb330e
	mov	r0, r10
	add	r0, #3
	b	.Lb331a
.Lb330e:
	ldr	r3, =ewram_2000240
	ldr	r3, [r3, #0x10]
	cmp	r6, r3
	bls	.Lb3328
	mov	r0, r10
	add	r0, #2
.Lb331a:
	bl	Func_80b04dc
	ldr	r0, [r5, #0xc]
	mov	r1, #2
	bl	_Func_8016418
	b	.Lb336a
.Lb3328:
	mov	r1, #2
	ldr	r0, [r5, #0xc]
	bl	_Func_8016418
	mov	r0, r10
	add	r0, #1
	bl	Func_80b04dc
	mov	r1, #2
	mov	r0, r8
	bl	_Func_8016418
	mov	r0, r6
	bl	Func_80b3398
	mov	r0, r9
	bl	_Func_8092054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	ldrh	r3, [r3]
	strh	r3, [r7]
	mov	r1, #0
	ldrh	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_8019da8
	mov	r8, r0
	mov	r0, r10
	add	r0, #4
	bl	Func_80b04dc
.Lb336a:
	mov	r0, r8
	mov	r1, #2
	bl	_Func_8016418
	bl	Func_80b0204
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b3284

.thumb_func_start Func_80b3398
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x10
	mov	r8, sp
	mov	r5, r0
	mov	r0, r8
	bl	_Func_80796c4
	neg	r5, r5
	mov	r7, r0
	mov	r0, r5
	bl	_Func_8079700
	cmp	r7, #0
	ble	.Lb33e8
	mov	r10, r8
	mov	r6, #0
	mov	r5, r7
.Lb33c0:
	mov	r2, r10
	ldrsh	r0, [r6, r2]
	bl	_Func_8077394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lb33e0
	ldrh	r3, [r0, #0x34]
	strh	r3, [r0, #0x38]
	ldrh	r3, [r0, #0x36]
	strh	r3, [r0, #0x3a]
	mov	r3, r8
	ldrsh	r0, [r6, r3]
	bl	_Func_807822c
.Lb33e0:
	sub	r5, #1
	add	r6, #2
	cmp	r5, #0
	bne	.Lb33c0
.Lb33e8:
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	mov	r5, #0xe4
	add	r3, #0x49
	str	r3, [r2]
	lsl	r5, #1
	mov	r3, #0x3c
	str	r3, [r1, r5]
	mov	r0, #0x14
	bl	Func_80030f8
	bl	_Func_8091df4
	bl	_Func_8091e20
	mov	r0, #0x56
	bl	_Func_80f9080
	bl	Func_80b04c4
	mov	r0, #0xa
	bl	Func_80030f8
	bl	_Func_8091dc8
	bl	_Func_8091e20
	mov	r0, #0x1e
	bl	Func_80030f8
	ldr	r2, [r6]
	mov	r3, #0x10
	str	r3, [r2, r5]
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b3398

.thumb_func_start Func_80b3444
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r0, [sp, #0xc]
	mov	r2, #0
	mov	r0, #1
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r9, r0
	mov	r11, r2
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r5, #2
	mov	r8, r3
	mov	r1, #0xc
	mov	r2, #0xe
	mov	r3, #8
	mov	r0, #0x10
	str	r5, [sp]
	bl	_Func_80162d4
	mov	r3, r8
	str	r0, [r3, #0x20]
	mov	r1, #0xe
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #0
	str	r5, [sp]
	bl	_Func_80162d4
	mov	r3, #0xe4
	lsl	r3, #2
	ldr	r4, [sp, #4]
	mov	r10, r0
	add	r3, r8
	mov	r1, #0x80
	ldrh	r0, [r3]
	lsl	r1, #23
	mov	r2, r10
	mov	r3, #0
	str	r4, [sp]
	bl	_Func_801eadc
	mov	r6, #0xe0
	mov	r5, r0
	add	r0, sp, #4
	ldrb	r0, [r0]
	lsl	r6, #2
	mov	r3, #4
	add	r6, r8
	mov	r1, #0x20
	strb	r3, [r5, #5]
	strb	r0, [r5, #4]
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0x70
	bl	Func_80b0a20
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r8
	mov	r3, #0xc
	str	r5, [r6]
	strb	r3, [r2]
	ldr	r2, [sp, #4]
	mov	r0, r10
	str	r2, [sp]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_80a1870
	mov	r6, #0xea
	lsl	r6, #2
	mov	r7, #0
	add	r6, r8
.Lb34ea:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lb353a
	ldr	r3, =0x3a7
	add	r3, r8
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r4, #0
	add	r0, r7, r1
	mov	r9, r4
	bl	Func_b1c_from_thumb
	mov	r7, r0
	mov	r0, #0xdb
	lsl	r0, #2
	lsl	r1, r7, #1
	mov	r3, r8
	add	r2, r1, r0
	add	r3, #2
	add	r1, r7
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r10
	mov	r2, #0
	mov	r11, r4
	bl	Func_80b0a6c
	mov	r3, #3
	mov	r0, r10
	mov	r1, r7
	mov	r2, #0
	strb	r3, [r6]
	bl	Func_80b11c4
	mov	r2, r8
	ldr	r0, [r2, #0x20]
	mov	r1, r11
	bl	Func_80b1dec
.Lb353a:
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, =iwram_3001c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb3598
	mov	r0, r11
	bl	_Func_80784d8
	cmp	r0, #0
	bne	.Lb355e
	mov	r0, #0x71
	bl	_Func_80f9080
	b	.Lb34ea
.Lb355e:
	mov	r0, #0x70
	bl	_Func_80f9080
	mov	r0, r11
	bl	Func_80b362c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lb3588
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r2, [r3]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r4, #1
	mov	r3, #0xc
	strb	r3, [r6]
	mov	r9, r4
	b	.Lb34ea
.Lb3588:
	ldr	r3, [sp, #0xc]
	mov	r2, r11
	str	r2, [r3]
	ldr	r4, [sp, #8]
	str	r0, [r4]
	mov	r0, #0
	str	r0, [sp, #4]
	b	.Lb35e8
.Lb3598:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb35b8
	mov	r0, #0x71
	bl	_Func_80f9080
	mov	r3, #1
	ldr	r2, [sp, #0xc]
	neg	r3, r3
	str	r3, [r2]
	ldr	r4, [sp, #8]
	str	r3, [r4]
	str	r3, [sp, #4]
	b	.Lb35e8
.Lb35b8:
	ldr	r5, =iwram_3001b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb35d0
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r0, #1
	sub	r7, #1
	mov	r9, r0
.Lb35d0:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb34ea
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r2, #1
	add	r7, #1
	mov	r9, r2
	b	.Lb34ea
.Lb35e8:
	bl	_Func_80a195c
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8016418
	mov	r3, r8
	ldr	r0, [r3, #0x20]
	mov	r1, #2
	bl	_Func_8016418
	mov	r0, #1
	bl	Func_80030f8
	bl	Func_80b0204
	ldr	r0, [sp, #4]
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b3444

.thumb_func_start Func_80b362c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #0x18
	str	r3, [sp, #0x14]
	mov	r11, r0
	bl	_Func_8077394
	mov	r1, #1
	mov	r2, #0
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	mov	r5, #2
	mov	r2, #0x10
	mov	r3, #4
	mov	r10, r1
	mov	r9, r1
	mov	r0, #0xe
	mov	r1, #8
	str	r5, [sp]
	bl	_Func_80162d4
	mov	r1, #5
	str	r0, [sp, #0xc]
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	str	r5, [sp]
	bl	_Func_80162d4
	mov	r2, #0xe0
	ldr	r1, [sp, #0x14]
	str	r0, [sp, #0x10]
	lsl	r2, #2
	add	r3, r1, r2
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r7, #0
.Lb3690:
	mov	r1, r9
	cmp	r1, #0
	beq	.Lb370c
	mov	r2, #0
	mov	r0, r11
	mov	r9, r2
	bl	_Func_80784d8
	mov	r10, r0
	mov	r3, r10
	sub	r3, #1
	cmp	r7, r3
	ble	.Lb36ac
	mov	r7, r3
.Lb36ac:
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x14]
	lsl	r3, r7, #1
	add	r3, #0xd8
	ldrh	r3, [r1, r3]
	ldr	r2, [r2, #0x20]
	ldr	r6, .Lb36f4	@ 0x1ff
	mov	r1, #5
	mov	r0, r7
	and	r6, r3
	mov	r8, r2
	bl	Func_b1c_from_thumb
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	Func_af0_from_thumb
	mov	r2, r0
	lsl	r5, #4
	lsl	r2, #4
	add	r2, #8
	mov	r0, r8
	mov	r1, r5
	bl	Func_80b0a6c
	mov	r1, #0xea
	ldr	r3, [sp, #0x14]
	lsl	r1, #2
	add	r2, r3, r1
	mov	r3, #3
	strb	r3, [r2]
	ldr	r0, [sp, #0xc]
	mov	r1, r11
	mov	r2, r7
	b	.Lb36fc

	.align	2, 0
.Lb36f4:
	.word	0x1ff
	.pool

.Lb36fc:
	bl	Func_80b386c
	ldr	r3, =0x75
	add	r6, r3
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	bl	Func_80b11a4
.Lb370c:
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, =iwram_3001c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb377c
	mov	r0, r11
	mov	r1, r7
	bl	_Func_8078980
	cmp	r0, #0
	bne	.Lb3734
	mov	r0, #0x70
	bl	_Func_80f9080
	str	r7, [sp, #4]
	b	.Lb382c
.Lb3734:
	mov	r2, #4
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb374a
	ldr	r0, =0xc96
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	_Func_8017658
	b	.Lb3760
.Lb374a:
	mov	r1, #3
	ldr	r3, [sp, #4]
	neg	r1, r1
	cmp	r3, r1
	bne	.Lb3760
	ldr	r0, =0xc97
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	_Func_8017658
.Lb3760:
	mov	r0, #0x71
	bl	_Func_80f9080
	b	.Lb376e
.Lb3768:
	mov	r0, #1
	bl	Func_80030f8
.Lb376e:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb3768
	bl	_Func_8019a54
	b	.Lb3690
.Lb377c:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb3794
	mov	r0, #0x71
	bl	_Func_80f9080
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #4]
	b	.Lb382c
.Lb3794:
	ldr	r5, =iwram_3001b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb37b8
	mov	r0, #0x6f
	bl	_Func_80f9080
	sub	r7, #1
	mov	r3, r10
	add	r0, r7, r3
	mov	r1, r10
	bl	Func_b1c_from_thumb
	mov	r1, #1
	mov	r7, r0
	mov	r9, r1
.Lb37b8:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb37da
	mov	r0, #0x6f
	bl	_Func_80f9080
	add	r7, #1
	mov	r2, r10
	add	r0, r7, r2
	mov	r1, r10
	bl	Func_b1c_from_thumb
	mov	r3, #1
	mov	r7, r0
	mov	r9, r3
.Lb37da:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb3800
	sub	r7, #5
	cmp	r7, #0
	bge	.Lb37ec
	add	r7, #0xf
.Lb37ec:
	cmp	r7, r10
	blt	.Lb37f6
.Lb37f0:
	sub	r7, #5
	cmp	r7, r10
	bge	.Lb37f0
.Lb37f6:
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r1, #1
	mov	r9, r1
.Lb3800:
	ldr	r3, =iwram_3001b04
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	bne	.Lb380e
	b	.Lb3690
.Lb380e:
	add	r7, #5
	cmp	r7, r10
	blt	.Lb3816
	sub	r7, #0xf
.Lb3816:
	cmp	r7, #0
	bge	.Lb3820
.Lb381a:
	add	r7, #5
	cmp	r7, #0
	blt	.Lb381a
.Lb3820:
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r2, #1
	mov	r9, r2
	b	.Lb3690
.Lb382c:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	_Func_8016418
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	_Func_8016418
	mov	r0, #1
	bl	Func_80030f8
	ldr	r0, [sp, #4]
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b362c

.thumb_func_start Func_80b386c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r7, r0
	mov	r0, r10
	mov	r9, r2
	sub	sp, #4
	bl	_Func_8077394
	mov	r2, r9
	lsl	r3, r2, #1
	mov	r6, r3
	add	r6, #0xd8
	ldrh	r3, [r0, r6]
	ldr	r5, =0x1ff
	and	r5, r3
	ldrh	r3, [r0, r6]
	lsr	r3, #11
	add	r3, #1
	mov	r8, r0
	mov	r11, r3
	cmp	r7, #0
	beq	.Lb391a
	mov	r0, r7
	bl	_Func_8016498
	ldr	r0, =0x182
	mov	r3, #0
	add	r0, r5, r0
	mov	r1, r7
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, r10
	mov	r1, r9
	bl	_Func_8078980
	mov	r3, #4
	neg	r3, r3
	cmp	r0, r3
	bne	.Lb38cc
	ldr	r0, =0xc94
	b	.Lb38d6
.Lb38cc:
	mov	r2, #3
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb38e2
	ldr	r0, =0xc95
.Lb38d6:
	mov	r1, r7
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	b	.Lb391a
.Lb38e2:
	mov	r3, r8
	ldrh	r0, [r3, r6]
	bl	Func_80b19cc
	ldr	r5, =0xc8d
	mov	r6, r11
	mul	r6, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, #8
	mov	r3, #8
	bl	_Func_801e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #5
	mov	r2, r7
	mov	r3, #0x28
	sub	r5, #5
	bl	_Func_801ea08
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x50
	mov	r3, #8
	bl	_Func_801e7c0
.Lb391a:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b386c

	.section .rodata
	.global .Lb3940
	.global .Lb39c0
	.global .Lb3a40
	.global .Lb3ac0
	.global .Lb3b40
	.global .Lb3bc0
	.global .Lb3d40
	.global .Lb3e80
	.global .Lb3f80
	.global .Lb4100
	.global .Lb413c
	.global .Lb4146

.Lb3940:
	.incrom 0xb3940, 0xb39c0
.Lb39c0:
	.incrom 0xb39c0, 0xb3a40
.Lb3a40:
	.incrom 0xb3a40, 0xb3ac0
.Lb3ac0:
	.incrom 0xb3ac0, 0xb3b40
.Lb3b40:
	.incrom 0xb3b40, 0xb3bc0
.Lb3bc0:
	.incrom 0xb3bc0, 0xb3d40
.Lb3d40:
	.incrom 0xb3d40, 0xb3e80
.Lb3e80:
	.incrom 0xb3e80, 0xb3f80
.Lb3f80:
	.incrom 0xb3f80, 0xb4100
.Lb4100:
	.incrom 0xb4100, 0xb413c
.Lb413c:
	.incrom 0xb413c, 0xb4146
.Lb4146:
	.incrom 0xb4146, 0xb41ac
.Lb41ac:
	.incrom 0xb41ac, 0xb4ab2
.Lb4ab2:
	.incrom 0xb4ab2, 0xb4ab6
.Lb4ab6:
	.incrom 0xb4ab6, 0xb4ac2
