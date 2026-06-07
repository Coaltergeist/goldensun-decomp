	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f2ebc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r8, r3
	cmp	r3, #0
	ble	.Lf2efa
	ldr	r1, =Func_8000af0
	ldr	r2, =0x5ff
	mov	r10, r1
.Lf2ed8:
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r1, #0
	ldrsh	r0, [r6, r1]
	str	r2, [sp]
	sub	r0, r3
	mov	r1, r8
	bl	_call_via_r10
	ldr	r2, [sp]
	sub	r2, #1
	strh	r0, [r5]
	add	r7, #2
	add	r6, #2
	add	r5, #2
	cmp	r2, #0
	bge	.Lf2ed8
.Lf2efa:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f2ebc

.thumb_func_start Func_80f2f10
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ed0
	mov	r1, #0xe0
	ldr	r5, [r3]
	ldr	r2, =0x3001
	lsl	r1, #5
	add	r4, r5, r1
	add	r1, r5, r2
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lf2f2a
	b	.Lf3060
.Lf2f2a:
	add	r2, #1
	add	r3, r5, r2
	ldrb	r2, [r3]
	add	r2, #1
	strb	r2, [r3]
	lsl	r2, #24
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	asr	r2, #24
	cmp	r2, r3
	bge	.Lf2f6c
	mov	r3, #0x80
	lsl	r3, #3
	ldr	r6, =0x5ff
	add	r1, r5, r3
	mov	r0, #0
.Lf2f4a:
	ldrh	r3, [r1]
	ldrh	r2, [r4]
	add	r0, #1
	add	r3, r2
	strh	r3, [r1]
	add	r4, #2
	add	r1, #2
	cmp	r0, r6
	ble	.Lf2f4a
	b	.Lf2f88

	.pool_aligned

.Lf2f6c:
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #5
	lsl	r2, #3
	add	r0, r5, r1
	ldr	r3, =REG_DMA3SAD
	add	r1, r5, r2
	ldr	r2, =0x84000300
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x3001
	add	r2, r5, r3
	mov	r3, #0
	strb	r3, [r2]
.Lf2f88:
	mov	r1, #0xc0
	lsl	r1, #6
	add	r3, r5, r1
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r3, #10
	mov	r2, #0xa0
	add	r3, r5, r3
	lsl	r2, #6
	add	r4, r3, r2
	mov	r3, #0xf8
	mov	r2, #0x80
	lsl	r3, #7
	mov	r0, #0x80
	lsl	r2, #3
	ldr	r7, .Lf2fb4	@ 0x3e0
	ldr	r6, .Lf2fb8	@ 0x1f
	mov	r12, r3
	lsl	r0, #2
	add	r1, r5, r2
	b	.Lf2fc8

	.align	2, 0
.Lf2fb4:
	.word	0x3e0
.Lf2fb8:
	.word	0x1f
	.pool

.Lf2fc8:
	ldrh	r3, [r1]
	mov	r2, r12
	and	r2, r3
	ldrh	r3, [r1, #2]
	lsl	r3, #16
	asr	r3, #21
	and	r3, r7
	orr	r2, r3
	ldrh	r3, [r1, #4]
	lsl	r3, #16
	asr	r3, #26
	and	r3, r6
	orr	r2, r3
	sub	r0, #1
	strh	r2, [r4]
	add	r1, #6
	add	r4, #2
	cmp	r0, #0
	bne	.Lf2fc8
	mov	r3, #0xc0
	lsl	r3, #6
	add	r1, r5, r3
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	ldrb	r3, [r1]
	mov	r1, #0xa0
	lsl	r3, #10
	add	r0, r5, r3
	lsl	r1, #6
	ldr	r5, =ewram_2002090
	add	r6, r0, r1
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r1, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.Lf3032
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r5
	add	r3, #4
	add	r2, #1
	stmia	r3!, {r6}
	strh	r2, [r5]
	mov	r2, #0xa0
	lsl	r2, #19
	stmia	r3!, {r2}
	ldr	r2, =0x84000080
	str	r2, [r3]
.Lf3032:
	strh	r1, [r4]
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.Lf305e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r1, #0xa8
	add	r2, #1
	add	r3, r5
	lsl	r1, #6
	add	r3, #4
	strh	r2, [r5]
	add	r2, r0, r1
	stmia	r3!, {r2}
	ldr	r2, =0x5000200
	stmia	r3!, {r2}
	ldr	r2, =0x84000080
	str	r2, [r3]
.Lf305e:
	strh	r6, [r4]
.Lf3060:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f2f10

.thumb_func_start Func_80f3078
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r8, r2
	mov	r1, #0x80
	mov	r2, r3
	mov	r3, #0x80
	sub	sp, #0x28
	lsl	r1, #2
	lsl	r3, #8
	str	r1, [sp, #0x24]
	cmp	r0, r3
	bne	.Lf30a0
	mov	r1, r10
	ldrh	r0, [r1]
.Lf30a0:
	cmp	r2, #1
	bne	.Lf30ac
	mov	r3, #0x80
	lsl	r3, #1
	str	r3, [sp, #0x24]
	b	.Lf30c2
.Lf30ac:
	cmp	r2, #2
	bne	.Lf30c2
	mov	r1, #0xc0
	lsl	r1, #3
	add	r8, r1
	mov	r1, #0x80
	mov	r3, #0x80
	lsl	r1, #1
	lsl	r3, #2
	str	r1, [sp, #0x24]
	add	r10, r3
.Lf30c2:
	mov	r3, #0x80
	lsl	r3, #8
	cmp	r0, r3
	bcs	.Lf311a
	ldr	r2, =0x7c00
	mov	r3, r0
	and	r3, r2
	mov	r2, #2
	mov	r1, r8
	add	r8, r2
	ldr	r2, =0x3e0
	strh	r3, [r1]
	mov	r3, r0
	and	r3, r2
	mov	r1, r8
	lsl	r3, #5
	strh	r3, [r1]
	ldr	r3, =0x1f
	mov	r2, #2
	add	r8, r2
	and	r0, r3
	lsl	r3, r0, #10
	mov	r1, r8
	strh	r3, [r1]
	ldr	r3, [sp, #0x24]
	sub	r3, #1
	add	r8, r2
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #1
	mov	r4, #0x80
	lsl	r4, #24
	b	.Lf3110

	.pool_aligned

.Lf3110:
	mov	r0, r8
	lsr	r2, #1
	ldr	r3, =REG_DMA3SAD
	sub	r0, #6
	b	.Lf375e
.Lf311a:
	mov	r3, #0x80
	lsl	r3, #13
	cmp	r0, r3
	bcc	.Lf3124
	b	.Lf3546
.Lf3124:
	ldr	r1, =0xfffeffff
	add	r0, r1
	cmp	r0, #6
	bls	.Lf312e
	b	.Lf34f8
.Lf312e:
	ldr	r2, =.Lf3138
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lf3138:
	.word	.Lf3154
	.word	.Lf31a2
	.word	.Lf323e
	.word	.Lf32bc
	.word	.Lf3356
	.word	.Lf33d8
	.word	.Lf346c
.Lf3154:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf3160
	b	.Lf3766
.Lf3160:
	ldr	r6, =Func_8000af0
	mov	r5, r8
.Lf3164:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, #0xf8
	lsl	r0, r4, #11
	lsl	r3, #8
	mov	r2, #2
	and	r0, r3
	mov	r3, #0xf8
	lsl	r3, #9
	add	r10, r2
	lsl	r2, r4, #7
	and	r2, r3
	mov	r3, #0xf8
	lsl	r3, #7
	and	r3, r4
	add	r0, r2
	add	r0, r3
	mov	r1, #7
	bl	_call_via_r6
	mov	r4, r0
	strh	r4, [r5]
	strh	r4, [r5, #2]
	strh	r4, [r5, #4]
	mov	r3, #1
	ldr	r1, [sp, #0x24]
	add	r9, r3
	add	r5, #6
	cmp	r9, r1
	bcc	.Lf3164
	b	.Lf3766
.Lf31a2:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf31ae
	b	.Lf3766
.Lf31ae:
	mov	r1, #0x1f
	ldr	r2, =.Lf3a2e
	mov	r11, r1
.Lf31b4:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r1, #2
	mov	r7, r4
	mov	r3, r11
	lsr	r0, r4, #5
	and	r7, r3
	and	r0, r3
	add	r10, r1
	lsr	r3, r4, #10
	mov	r1, r11
	and	r3, r1
	add	r0, r7, r0
	add	r0, r3
	str	r2, [sp]
	ldr	r3, =Func_8000af0
	mov	r1, #0xa
	bl	_call_via_r3
	mov	r4, r0
	lsl	r3, r4, #2
	add	r7, r3, #5
	lsl	r3, r4, #1
	add	r3, r4
	add	r5, r3, #5
	mov	r6, r5
	ldr	r2, [sp]
	cmp	r7, #7
	bgt	.Lf31f0
	mov	r7, #8
.Lf31f0:
	cmp	r5, #7
	bgt	.Lf31fc
	mov	r6, #8
	cmp	r5, #7
	bgt	.Lf31fc
	mov	r5, #8
.Lf31fc:
	cmp	r7, #0x1c
	ble	.Lf3202
	mov	r7, #0x1c
.Lf3202:
	cmp	r6, #0x1c
	ble	.Lf3208
	mov	r6, #0x1c
.Lf3208:
	cmp	r5, #0x1c
	ble	.Lf320e
	mov	r5, #0x1c
.Lf320e:
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	mov	r1, #1
	ldr	r3, [sp, #0x24]
	add	r9, r1
	cmp	r9, r3
	bcc	.Lf31b4
	b	.Lf3766
.Lf323e:
	mov	r1, #0
	ldr	r2, [sp, #0x24]
	mov	r9, r1
	cmp	r9, r2
	bcc	.Lf324a
	b	.Lf3766
.Lf324a:
	mov	r3, #0x1f
	mov	r11, r3
.Lf324e:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, r11
	mov	r7, r4
	lsr	r6, r4, #5
	lsr	r5, r4, #10
	and	r6, r3
	and	r7, r3
	mov	r2, #2
	mov	r1, #3
	and	r5, r3
	mov	r0, r6
	lsr	r3, r7, #1
	sub	r7, r3
	add	r10, r2
	bl	Func_af0_from_thumb
	add	r7, #6
	sub	r6, r0
	mov	r0, r7
	bl	Func_80f3898
	add	r6, #4
	mov	r7, r0
	mov	r0, r6
	bl	Func_80f3898
	sub	r5, #6
	mov	r6, r0
	mov	r0, r5
	bl	Func_80f3898
	ldr	r2, =.Lf3a6e
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r2, =.Lf3a2e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	ldr	r2, =.Lf39ee
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	strh	r3, [r1, #4]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #6
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.Lf324e
	b	.Lf3766
.Lf32bc:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf32c8
	b	.Lf3766
.Lf32c8:
	ldr	r1, =.Lf39ee
	mov	r11, r1
.Lf32cc:
	mov	r2, r10
	ldrh	r4, [r2]
	mov	r1, #0x1f
	mov	r7, r4
	mov	r3, #2
	lsr	r6, r4, #5
	lsr	r5, r4, #10
	and	r7, r1
	add	r10, r3
	and	r6, r1
	and	r5, r1
	cmp	r7, #9
	bgt	.Lf32e8
	mov	r7, #0xa
.Lf32e8:
	cmp	r6, #0xf
	bgt	.Lf32ee
	mov	r6, #0x10
.Lf32ee:
	cmp	r5, #0xf
	bgt	.Lf32f4
	mov	r5, #0x10
.Lf32f4:
	cmp	r7, #0x1c
	ble	.Lf32fa
	mov	r7, #0x1c
.Lf32fa:
	cmp	r6, #0x18
	ble	.Lf3300
	mov	r6, #0x18
.Lf3300:
	cmp	r5, #0x1a
	ble	.Lf3306
	mov	r5, #0x1a
.Lf3306:
	mov	r0, r7
	bl	Func_80f3898
	add	r6, #2
	mov	r7, r0
	mov	r0, r6
	bl	Func_80f3898
	add	r5, #2
	mov	r6, r0
	mov	r0, r5
	bl	Func_80f3898
	mov	r5, r0
	mov	r2, r11
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r2, #2
	mov	r1, r11
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	add	r8, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #2
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.Lf32cc
	b	.Lf3766
.Lf3356:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf3362
	b	.Lf3766
.Lf3362:
	ldr	r1, =.Lf3a6e
	mov	r11, r1
.Lf3366:
	mov	r2, r10
	ldrh	r4, [r2]
	mov	r1, #0x1f
	mov	r7, r4
	lsr	r6, r4, #5
	lsr	r5, r4, #10
	and	r7, r1
	and	r6, r1
	and	r5, r1
	add	r0, r7, r6
	mov	r1, #3
	mov	r3, #2
	add	r0, r5
	add	r10, r3
	bl	Func_af0_from_thumb
	bl	Func_80f3898
	asr	r3, r7, #1
	add	r7, r3, r0
	asr	r3, r6, #1
	add	r6, r3, r0
	asr	r3, r5, #1
	add	r5, r3, r0
	mov	r0, r7
	bl	Func_80f3898
	mov	r7, r0
	mov	r0, r6
	bl	Func_80f3898
	mov	r6, r0
	mov	r0, r5
	bl	Func_80f3898
	mov	r5, r0
	mov	r2, r11
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	mov	r1, r11
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	strh	r3, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.Lf3366
	b	.Lf3766
.Lf33d8:
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcc	.Lf33e4
	b	.Lf3766
.Lf33e4:
	mov	r2, #0x1f
	mov	r11, r2
.Lf33e8:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, r11
	lsr	r6, r4, #5
	lsr	r5, r4, #10
	mov	r7, r4
	and	r6, r2
	and	r5, r2
	and	r7, r2
	asr	r3, r6, #3
	asr	r2, r5, #3
	add	r3, r2
	add	r7, r3
	mov	r1, #2
	mov	r0, r7
	add	r10, r1
	bl	Func_80f3898
	mov	r1, #3
	mov	r7, r0
	mov	r0, r6
	bl	Func_af0_from_thumb
	mov	r1, #3
	sub	r6, r0
	mov	r0, r5
	bl	Func_af0_from_thumb
	ldr	r1, =.Lf39ee
	sub	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r1, r3]
	mov	r2, r8
	strh	r3, [r2]
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1, #2]
	ldr	r2, =.Lf3a2e
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.Lf33e8
	b	.Lf3766

	.pool_aligned

.Lf346c:
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcc	.Lf3478
	b	.Lf3766
.Lf3478:
	mov	r2, #0x1f
	mov	r11, r2
.Lf347c:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, r11
	mov	r7, r4
	lsr	r6, r4, #5
	and	r7, r2
	and	r6, r2
	mov	r1, #2
	lsr	r3, r7, #1
	lsr	r5, r4, #10
	mov	r0, r6
	add	r10, r1
	mov	r1, #3
	and	r5, r2
	sub	r7, r3
	bl	Func_af0_from_thumb
	add	r7, #6
	sub	r6, r0
	mov	r0, r7
	bl	Func_80f3898
	add	r6, #4
	mov	r7, r0
	mov	r0, r6
	bl	Func_80f3898
	sub	r5, #6
	mov	r6, r0
	mov	r0, r5
	bl	Func_80f3898
	ldr	r2, =.Lf3a6e
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r2, =.Lf3a2e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	ldr	r2, =.Lf39ee
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	strh	r3, [r1, #4]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #6
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.Lf347c
	b	.Lf3766

	.pool_aligned

.Lf34f8:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.Lf3504
	b	.Lf3766
.Lf3504:
	ldr	r5, =0x7c00
	ldr	r0, =0x3e0
	ldr	r2, =0x1f
	mov	r1, r8
	b	.Lf351c

	.pool_aligned

.Lf351c:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r3, #2
	add	r10, r3
	mov	r3, r4
	and	r3, r5
	strh	r3, [r1]
	mov	r3, r4
	and	r3, r0
	lsl	r3, #5
	and	r4, r2
	strh	r3, [r1, #2]
	lsl	r3, r4, #10
	strh	r3, [r1, #4]
	mov	r3, #1
	add	r9, r3
	ldr	r3, [sp, #0x24]
	add	r1, #6
	cmp	r9, r3
	bcc	.Lf351c
	b	.Lf3766
.Lf3546:
	mov	r3, #0x80
	lsl	r3, #14
	and	r3, r0
	cmp	r3, #0
	beq	.Lf35e6
	mov	r3, #0x1f
	str	r0, [sp, #0x20]
	mov	r1, r0
	lsr	r2, r0, #5
	lsr	r0, #10
	and	r1, r3
	mov	r11, r0
	and	r2, r3
	str	r1, [sp, #0x20]
	mov	r1, r11
	and	r1, r3
	str	r2, [sp, #0x1c]
	ldr	r3, [sp, #0x24]
	mov	r2, #0
	mov	r9, r2
	mov	r11, r1
	cmp	r9, r3
	bcc	.Lf3576
	b	.Lf3766
.Lf3576:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, #0xf8
	lsl	r0, r4, #11
	lsl	r3, #8
	mov	r2, #2
	and	r0, r3
	mov	r3, #0xf8
	lsl	r3, #9
	add	r10, r2
	lsl	r2, r4, #7
	and	r2, r3
	mov	r3, #0xf8
	lsl	r3, #7
	and	r3, r4
	add	r0, r2
	add	r0, r3
	mov	r1, #0x60
	ldr	r3, =Func_8000af0
	bl	_call_via_r3
	ldr	r1, [sp, #0x20]
	mov	r4, r0
	mov	r7, r1
	mul	r7, r4
	ldr	r2, [sp, #0x1c]
	mov	r0, r7
	mov	r6, r2
	mul	r6, r4
	mov	r5, r11
	mul	r5, r4
	bl	Func_80f38ac
	mov	r7, r0
	mov	r0, r6
	bl	Func_80f38ac
	mov	r6, r0
	mov	r0, r5
	bl	Func_80f38ac
	mov	r3, r8
	mov	r1, r8
	mov	r2, r8
	mov	r5, r0
	strh	r5, [r3]
	strh	r6, [r1, #2]
	strh	r7, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.Lf3576
	b	.Lf3766
.Lf35e6:
	mov	r3, #0x80
	lsl	r3, #15
	and	r3, r0
	cmp	r3, #0
	bne	.Lf35f2
	b	.Lf36f0
.Lf35f2:
	mov	r3, #0x1f
	str	r0, [sp, #0x18]
	mov	r1, r0
	lsr	r2, r0, #5
	lsr	r0, #10
	and	r1, r3
	mov	r11, r0
	and	r2, r3
	str	r1, [sp, #0x18]
	mov	r1, r11
	and	r1, r3
	str	r2, [sp, #0x14]
	ldr	r3, [sp, #0x24]
	mov	r2, #0
	mov	r9, r2
	mov	r11, r1
	cmp	r9, r3
	bcc	.Lf3618
	b	.Lf3766
.Lf3618:
	ldr	r2, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	ldr	r3, [sp, #0x18]
	add	r1, r2
	str	r1, [sp, #4]
	lsl	r1, r2, #16
	mov	r2, r11
	lsl	r3, #16
	lsl	r2, #16
	str	r3, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
.Lf3630:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, #0x1f
	mov	r7, r4
	lsr	r0, r4, #5
	and	r7, r2
	and	r0, r2
	lsr	r3, r4, #10
	mov	r1, #2
	and	r3, r2
	add	r10, r1
	add	r0, r7, r0
	ldr	r1, [sp, #4]
	add	r0, r3
	add	r1, r11
	ldr	r3, =Func_8000af0
	lsl	r0, #4
	bl	_call_via_r3
	ldr	r3, [sp, #0x18]
	mov	r4, r0
	mov	r0, r3
	mul	r0, r4
	ldr	r2, [sp, #0x10]
	lsr	r0, #4
	lsl	r0, #16
	asr	r1, r2, #4
	ldr	r3, =Func_8000888
	.call_via r3
	ldr	r1, [sp, #0x14]
	mov	r7, r0
	mov	r0, r1
	mul	r0, r4
	ldr	r2, [sp, #0xc]
	lsr	r0, #4
	lsl	r0, #16
	asr	r1, r2, #4
	.call_via r3
	mov	r6, r0
	mov	r0, r11
	mul	r0, r4
	ldr	r3, [sp, #8]
	lsr	r0, #4
	asr	r1, r3, #4
	lsl	r0, #16
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r5, r0
	lsr	r0, r7, #16
	bl	Func_80f3898
	mov	r7, r0
	lsr	r0, r6, #16
	bl	Func_80f3898
	mov	r6, r0
	lsr	r0, r5, #16
	bl	Func_80f3898
	ldr	r1, =.Lf39ee
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r1, r3]
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, =.Lf39ee
	mov	r2, #2
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	add	r8, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #2
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.Lf3630
	b	.Lf3766

	.pool_aligned

.Lf36f0:
	mov	r3, #0x80
	lsl	r3, #16
	and	r3, r0
	cmp	r3, #0
	beq	.Lf3746
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcs	.Lf3766
	ldr	r5, =0x7c00
	ldr	r0, =0x3e0
	ldr	r2, =0x1f
	mov	r1, r8
	b	.Lf371c

	.pool_aligned

.Lf371c:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r3, #2
	add	r10, r3
	mov	r3, r4
	and	r3, r5
	strh	r3, [r1]
	mov	r3, r4
	and	r3, r0
	lsl	r3, #5
	and	r4, r2
	strh	r3, [r1, #2]
	lsl	r3, r4, #10
	strh	r3, [r1, #4]
	mov	r3, #1
	add	r9, r3
	ldr	r3, [sp, #0x24]
	add	r1, #6
	cmp	r9, r3
	bcc	.Lf371c
	b	.Lf3766
.Lf3746:
	cmp	r2, #2
	bne	.Lf3750
	mov	r1, #0xc0
	lsl	r1, #3
	add	r0, r1
.Lf3750:
	ldr	r3, [sp, #0x24]
	lsl	r2, r3, #1
	add	r2, r3
	mov	r4, #0x84
	lsl	r4, #24
	lsr	r2, #1
	ldr	r3, =REG_DMA3SAD
.Lf375e:
	mov	r1, r8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lf3766:
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f3078

.thumb_func_start Func_80f377c
	push	{lr}
	ldr	r1, =0x3004
	mov	r0, #0x20
	sub	sp, #4
	bl	Func_80048f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000c01
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0xa0
	lsl	r0, #19
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	lsl	r2, #2
	add	r1, r4, r2
	ldr	r0, =0x5000200
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	lsl	r3, #5
	mov	r0, #0x80
	add	r2, r4, r3
	mov	r1, r4
	mov	r3, #0
	lsl	r0, #9
	bl	Func_80f3078
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80f2f10
	bl	StartTask
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80f377c

.thumb_func_start Func_80f37ec
	push	{lr}
	ldr	r0, =Func_80f2f10
	bl	Func_8004278
	mov	r0, #0x20
	bl	Func_8002dd8
	pop	{r0}
	bx	r0
.func_end Func_80f37ec

.thumb_func_start Func_80f3804
	push	{lr}
	ldr	r3, =iwram_3001ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lf381c
	mov	r3, #0x80
	lsl	r3, #5
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_80f3078
.Lf381c:
	pop	{r0}
	bx	r0
.func_end Func_80f3804

.thumb_func_start Func_80f3824
	push	{lr}
	ldr	r3, =iwram_3001ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lf383c
	mov	r3, #0x80
	lsl	r3, #3
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_80f3078
.Lf383c:
	pop	{r0}
	bx	r0
.func_end Func_80f3824

