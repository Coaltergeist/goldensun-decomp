	.include "macros.inc"

.thumb_func_start Func_809ad70
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r5, =.L9f160
	bl	Func_8004458
	lsl	r0, #3
	lsr	r0, #16
	ldrsb	r1, [r5, r0]
	mov	r0, r6
	bl	_Func_800c598
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_809ad70

.thumb_func_start Func_809ad90
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L9add6
	ldr	r1, =ewram_2000240
	mov	r3, #0x94
	lsl	r3, #2
	add	r2, r1, r3
	ldr	r3, [r0, #0x6c]
	str	r3, [r2]
	ldr	r3, =0x249
	add	r1, r3
	mov	r3, #0
	strb	r3, [r1]
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9adc4
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	cmp	r3, #0
	beq	.L9adc4
	ldrb	r3, [r3, #5]
	strb	r3, [r1]
.L9adc4:
	ldr	r3, =Func_809ad70
	mov	r2, r0
	str	r3, [r0, #0x6c]
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r1, #0
	bl	_Func_800c344
.L9add6:
	pop	{r0}
	bx	r0
.func_end Func_809ad90

.thumb_func_start Func_809ade8
	push	{r5, lr}
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L9ae28
	ldr	r2, [r5, #0x6c]
	ldr	r3, =Func_809ad70
	cmp	r2, r3
	bne	.L9ae18
	ldr	r2, =ewram_2000240
	mov	r3, #0x94
	lsl	r3, #2
	add	r1, r2, r3
	ldr	r3, [r1]
	str	r3, [r5, #0x6c]
	mov	r3, #0
	str	r3, [r1]
	ldr	r3, =0x249
	add	r2, r3
	mov	r1, #0
	ldrsb	r1, [r2, r1]
	bl	_Func_800c598
.L9ae18:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0x10
	bl	_Func_800c344
.L9ae28:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_809ade8

.thumb_func_start Func_809ae3c
	push	{r5, lr}
	mov	r5, r0
	bl	Func_80915dc
	cmp	r0, #0xff
	bne	.L9ae4e
	mov	r0, #1
	neg	r0, r0
	b	.L9ae50
.L9ae4e:
	mov	r0, r5
.L9ae50:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_809ae3c

.thumb_func_start Func_809ae58
	push	{lr}
	bl	Func_809ae64
	pop	{r0}
	bx	r0
.func_end Func_809ae58

.thumb_func_start Func_809ae64
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r5, [r3]
	ldr	r1, [r5, #0x14]
	ldr	r7, [r5, #0x10]
	sub	sp, #0x28
	str	r1, [sp]
	ldr	r3, [r7, #8]
	add	r2, sp, #0x10
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	mov	r1, #0x80
	lsl	r1, #13
	add	r3, r1
	str	r3, [r2, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r2, #8]
	mov	r3, r5
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r11, r2
	cmp	r3, #0
	beq	.L9aec4
	ldr	r3, [r7, #8]
	add	r2, sp, #4
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	mov	r0, #0x80
	lsl	r0, #14
	add	r3, r0
	str	r3, [r2, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r2, #8]
	ldr	r1, [r5]
	mov	r9, r2
	bl	Func_800447c
	b	.L9aedc

	.pool_aligned

.L9aec4:
	add	r3, sp, #4
	mov	r9, r3
	ldr	r3, [r5, #4]
	mov	r1, r9
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r5, #8]
	lsl	r2, #14
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r5, #0xc]
	str	r3, [r1, #8]
.L9aedc:
	ldr	r1, [r5, #4]
	add	r0, sp, #0x1c
	str	r1, [r0]
	mov	r3, #0x80
	ldr	r2, [r5, #8]
	lsl	r3, #14
	add	r2, r3
	str	r2, [r0, #4]
	ldr	r3, [r5, #0xc]
	str	r3, [r0, #8]
	mov	r0, #0xd7
	bl	Func_8096c80
	mov	r6, r0
	cmp	r6, #0
	bne	.L9aefe
	b	.L9b092
.L9aefe:
	bl	Func_8097384
	mov	r0, #0x8a
	bl	_Func_80f9080
	ldrh	r3, [r7, #6]
	strh	r3, [r6, #6]
	ldr	r3, =0x14ccc
	ldr	r2, .L9af30	@ 0
	str	r3, [r6, #0x30]
	mov	r3, r6
	add	r3, #0x55
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #5
	bl	_Func_800c300
	mov	r0, r6
	mov	r1, #1
	bl	_Func_800c598
	mov	r7, #0
	mov	r10, r11
	mov	r8, r9
	b	.L9af38

	.align	2, 0
.L9af30:
	.word	0
	.pool

.L9af38:
	mov	r2, r10
	mov	r1, r8
	ldr	r5, [r2]
	ldr	r3, [r1]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r6, #8]
	mov	r2, r10
	mov	r1, r8
	ldr	r5, [r2, #4]
	ldr	r3, [r1, #4]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r6, #0xc]
	mov	r2, r10
	mov	r1, r8
	ldr	r5, [r2, #8]
	ldr	r3, [r1, #8]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r3, #0xc0
	lsl	r3, #8
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r7
	mul	r0, r3
	str	r5, [r6, #0x10]
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	add	r0, r3
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	add	r7, #1
	mov	r0, #1
	bl	Func_80030f8
	cmp	r7, #0xb
	blt	.L9af38
	mov	r0, #0xa
	bl	Func_80030f8
	mov	r0, r6
	mov	r1, #6
	bl	_Func_800c300
	mov	r0, #0xf
	bl	Func_80030f8
	mov	r5, #9
.L9afba:
	ldr	r3, [r6, #0xc]
	ldr	r1, =0xfffe0000
	add	r3, r1
	str	r3, [r6, #0xc]
	mov	r0, #1
	sub	r5, #1
	bl	Func_80030f8
	cmp	r5, #0
	bge	.L9afba
	mov	r0, r6
	mov	r1, #5
	bl	_Func_800c300
	mov	r0, #0x84
	bl	_Func_80f9080
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.L9afee
	ldr	r3, =0xfff70000
	ldr	r2, [r2, #0xc]
	ldr	r0, [sp]
	mov	r1, r3
	bl	_Func_800d130
.L9afee:
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r5, #0xc
.L9aff6:
	ldr	r3, [r6, #0xc]
	mov	r1, #0xc0
	lsl	r1, #9
	add	r3, r1
	str	r3, [r6, #0xc]
	mov	r0, #1
	sub	r5, #1
	bl	Func_80030f8
	cmp	r5, #0
	bge	.L9aff6
	mov	r0, #0xa
	bl	Func_80030f8
	mov	r0, #0x72
	bl	_Func_80f9080
	mov	r7, #0
	mov	r10, r9
	mov	r8, r11
.L9b01e:
	mov	r2, r8
	mov	r1, r10
	ldr	r3, [r2]
	ldr	r5, [r1]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r6, #8]
	mov	r2, r8
	mov	r1, r10
	ldr	r3, [r2, #4]
	ldr	r5, [r1, #4]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r6, #0xc]
	mov	r2, r8
	mov	r1, r10
	ldr	r3, [r2, #8]
	ldr	r5, [r1, #8]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	ldr	r3, =0xffff4000
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r7
	mul	r0, r3
	str	r5, [r6, #0x10]
	bl	Func_af0_from_thumb
	mov	r2, #0x80
	lsl	r2, #9
	add	r0, r2
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	add	r7, #1
	mov	r0, #1
	bl	Func_80030f8
	cmp	r7, #0xb
	blt	.L9b01e
	mov	r0, r6
	bl	_Func_800c0f4
	bl	Func_809748c
.L9b092:
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809ae64

