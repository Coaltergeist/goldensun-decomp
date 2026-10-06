	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8090a5c  @ 0x08090a5c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r8, r2
	mov	r1, #0xe0
	mov	r2, r3
	mov	r3, #0x80
	sub	sp, #0x28
	lsl	r1, #1
	lsl	r3, #8
	str	r1, [sp, #0x24]
	cmp	r0, r3
	bne	.L90a86
	mov	r3, #0xa0
	lsl	r3, #19
	ldrh	r0, [r3]
.L90a86:
	cmp	r2, #1
	bne	.L90a90
	mov	r1, #0xe0
	str	r1, [sp, #0x24]
	b	.L90aa4
.L90a90:
	cmp	r2, #2
	bne	.L90aa4
	mov	r3, #0xa8
	lsl	r3, #3
	add	r8, r3
	mov	r1, #0xe0
	mov	r3, #0xe0
	lsl	r1, #1
	str	r3, [sp, #0x24]
	add	r10, r1
.L90aa4:
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r0, r1
	bcs	.L90afe
	ldr	r2, =0x7c00
	mov	r3, r0
	and	r3, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	ldr	r2, =0x3e0
	add	r8, r3
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
	b	.L90af4

	.pool_aligned

.L90af4:
	mov	r0, r8
	lsr	r2, #1
	ldr	r3, =REG_DMA3SAD
	sub	r0, #6
	b	.L91156
.L90afe:
	mov	r3, #0x80
	lsl	r3, #13
	cmp	r0, r3
	bcc	.L90b08
	b	.L90f3e
.L90b08:
	ldr	r1, =0xfffeffff
	add	r0, r1
	cmp	r0, #6
	bls	.L90b12
	b	.L90ef0
.L90b12:
	ldr	r2, =.L90b1c
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L90b1c:
	.word	.L90b38
	.word	.L90b86
	.word	.L90c22
	.word	.L90cb4
	.word	.L90d4e
	.word	.L90dd0
	.word	.L90e64
.L90b38:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90b44
	b	.L9115e
.L90b44:
	ldr	r6, =divsi3_RAM
	mov	r5, r8
.L90b48:
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
	bcc	.L90b48
	b	.L9115e
.L90b86:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90b92
	b	.L9115e
.L90b92:
	mov	r1, #0x1f
	ldr	r2, =gScript_0809e96e
	mov	r11, r1
.L90b98:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r1, #2
	mov	r6, r4
	mov	r3, r11
	lsr	r0, r4, #5
	and	r6, r3
	and	r0, r3
	add	r10, r1
	lsr	r3, r4, #10
	mov	r1, r11
	and	r3, r1
	add	r0, r6, r0
	add	r0, r3
	str	r2, [sp]
	ldr	r3, =divsi3_RAM
	mov	r1, #0xa
	bl	_call_via_r3
	mov	r4, r0
	lsl	r3, r4, #2
	add	r6, r3, #5
	lsl	r3, r4, #1
	add	r3, r4
	add	r5, r3, #5
	mov	r7, r5
	ldr	r2, [sp]
	cmp	r6, #7
	bgt	.L90bd4
	mov	r6, #8
.L90bd4:
	cmp	r5, #7
	bgt	.L90be0
	mov	r7, #8
	cmp	r5, #7
	bgt	.L90be0
	mov	r5, #8
.L90be0:
	cmp	r6, #0x1c
	ble	.L90be6
	mov	r6, #0x1c
.L90be6:
	cmp	r7, #0x1c
	ble	.L90bec
	mov	r7, #0x1c
.L90bec:
	cmp	r5, #0x1c
	ble	.L90bf2
	mov	r5, #0x1c
.L90bf2:
	lsl	r3, r5, #1
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
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #2
	add	r8, r3
	mov	r1, #1
	ldr	r3, [sp, #0x24]
	add	r9, r1
	cmp	r9, r3
	bcc	.L90b98
	b	.L9115e
.L90c22:
	mov	r1, #0
	ldr	r2, [sp, #0x24]
	mov	r9, r1
	cmp	r9, r2
	bcc	.L90c2e
	b	.L9115e
.L90c2e:
	mov	r3, #0x1f
	mov	r11, r3
.L90c32:
	mov	r1, r10
	ldrh	r4, [r1]
	mov	r3, r11
	mov	r6, r4
	and	r6, r3
	lsr	r7, r4, #5
	lsr	r5, r4, #10
	and	r7, r3
	and	r5, r3
	mov	r3, r6
	orr	r3, r7
	mov	r2, #2
	orr	r3, r5
	add	r10, r2
	cmp	r3, #0
	beq	.L90c7e
	lsr	r3, r6, #1
	mov	r1, #3
	mov	r0, r7
	sub	r6, r3
	bl	__divsi3
	add	r6, #0xa
	sub	r7, r0
	mov	r0, r6
	bl	Func_8091294
	add	r7, #8
	mov	r6, r0
	mov	r0, r7
	bl	Func_8091294
	sub	r5, #7
	mov	r7, r0
	mov	r0, r5
	bl	Func_8091294
	mov	r5, r0
.L90c7e:
	ldr	r2, =gScript_0809e9ae
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	mov	r2, #2
	strh	r3, [r1]
	add	r8, r2
	ldr	r2, =gScript_0809e96e
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	mov	r2, #2
	strh	r3, [r1]
	add	r8, r2
	ldr	r2, =gScript_0809e92e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #2
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.L90c32
	b	.L9115e
.L90cb4:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90cc0
	b	.L9115e
.L90cc0:
	ldr	r1, =gScript_0809e92e
	mov	r11, r1
.L90cc4:
	mov	r2, r10
	ldrh	r4, [r2]
	mov	r1, #0x1f
	mov	r6, r4
	mov	r3, #2
	lsr	r7, r4, #5
	lsr	r5, r4, #10
	and	r6, r1
	add	r10, r3
	and	r7, r1
	and	r5, r1
	cmp	r6, #9
	bgt	.L90ce0
	mov	r6, #0xa
.L90ce0:
	cmp	r7, #0xf
	bgt	.L90ce6
	mov	r7, #0x10
.L90ce6:
	cmp	r5, #0xf
	bgt	.L90cec
	mov	r5, #0x10
.L90cec:
	cmp	r6, #0x1c
	ble	.L90cf2
	mov	r6, #0x1c
.L90cf2:
	cmp	r7, #0x18
	ble	.L90cf8
	mov	r7, #0x18
.L90cf8:
	cmp	r5, #0x1a
	ble	.L90cfe
	mov	r5, #0x1a
.L90cfe:
	mov	r0, r6
	bl	Func_8091294
	add	r7, #2
	mov	r6, r0
	mov	r0, r7
	bl	Func_8091294
	add	r5, #2
	mov	r7, r0
	mov	r0, r5
	bl	Func_8091294
	mov	r5, r0
	mov	r2, r11
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	mov	r2, #2
	mov	r1, r11
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	add	r8, r2
	mov	r2, r8
	strh	r3, [r2]
	mov	r3, #2
	add	r8, r3
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #2
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.L90cc4
	b	.L9115e
.L90d4e:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90d5a
	b	.L9115e
.L90d5a:
	ldr	r1, =gScript_0809e9ae
	mov	r11, r1
.L90d5e:
	mov	r2, r10
	ldrh	r4, [r2]
	mov	r1, #0x1f
	mov	r6, r4
	lsr	r7, r4, #5
	lsr	r5, r4, #10
	and	r6, r1
	and	r7, r1
	and	r5, r1
	add	r0, r6, r7
	mov	r1, #3
	mov	r3, #2
	add	r0, r5
	add	r10, r3
	bl	__divsi3
	bl	Func_8091294
	asr	r3, r6, #1
	add	r6, r3, r0
	asr	r3, r7, #1
	add	r7, r3, r0
	asr	r3, r5, #1
	add	r5, r3, r0
	mov	r0, r6
	bl	Func_8091294
	mov	r6, r0
	mov	r0, r7
	bl	Func_8091294
	mov	r7, r0
	mov	r0, r5
	bl	Func_8091294
	mov	r5, r0
	mov	r2, r11
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	mov	r1, r11
	lsl	r3, r6, #1
	ldrh	r3, [r1, r3]
	strh	r3, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.L90d5e
	b	.L9115e
.L90dd0:
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcc	.L90ddc
	b	.L9115e
.L90ddc:
	mov	r2, #0x1f
	mov	r11, r2
.L90de0:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, r11
	lsr	r7, r4, #5
	lsr	r5, r4, #10
	mov	r6, r4
	and	r7, r2
	and	r5, r2
	and	r6, r2
	asr	r3, r7, #3
	asr	r2, r5, #3
	add	r3, r2
	add	r6, r3
	mov	r1, #2
	mov	r0, r6
	add	r10, r1
	bl	Func_8091294
	mov	r1, #3
	mov	r6, r0
	mov	r0, r7
	bl	__divsi3
	mov	r1, #3
	sub	r7, r0
	mov	r0, r5
	bl	__divsi3
	ldr	r1, =gScript_0809e92e
	sub	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r1, r3]
	mov	r2, r8
	strh	r3, [r2]
	lsl	r3, r7, #1
	ldrh	r3, [r1, r3]
	mov	r1, r8
	strh	r3, [r1, #2]
	ldr	r2, =gScript_0809e96e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #4]
	mov	r1, #1
	ldr	r2, [sp, #0x24]
	mov	r3, #6
	add	r9, r1
	add	r8, r3
	cmp	r9, r2
	bcc	.L90de0
	b	.L9115e

	.pool_aligned

.L90e64:
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcc	.L90e70
	b	.L9115e
.L90e70:
	mov	r2, #0x1f
	mov	r11, r2
.L90e74:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, r11
	mov	r6, r4
	lsr	r7, r4, #5
	and	r6, r2
	and	r7, r2
	mov	r1, #2
	lsr	r3, r6, #1
	lsr	r5, r4, #10
	mov	r0, r7
	add	r10, r1
	mov	r1, #3
	and	r5, r2
	sub	r6, r3
	bl	__divsi3
	add	r6, #6
	sub	r7, r0
	mov	r0, r6
	bl	Func_8091294
	add	r7, #4
	mov	r6, r0
	mov	r0, r7
	bl	Func_8091294
	sub	r5, #6
	mov	r7, r0
	mov	r0, r5
	bl	Func_8091294
	ldr	r2, =gScript_0809e9ae
	mov	r5, r0
	lsl	r3, r5, #1
	ldrh	r3, [r2, r3]
	mov	r1, r8
	strh	r3, [r1]
	ldr	r2, =gScript_0809e96e
	lsl	r3, r7, #1
	ldrh	r3, [r2, r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	ldr	r2, =gScript_0809e92e
	lsl	r3, r6, #1
	ldrh	r3, [r2, r3]
	strh	r3, [r1, #4]
	ldr	r1, [sp, #0x24]
	mov	r3, #1
	mov	r2, #6
	add	r9, r3
	add	r8, r2
	cmp	r9, r1
	bcc	.L90e74
	b	.L9115e

	.pool_aligned

.L90ef0:
	mov	r2, #0
	ldr	r3, [sp, #0x24]
	mov	r9, r2
	cmp	r9, r3
	bcc	.L90efc
	b	.L9115e
.L90efc:
	ldr	r5, =0x7c00
	ldr	r0, =0x3e0
	ldr	r2, =0x1f
	mov	r1, r8
	b	.L90f14

	.pool_aligned

.L90f14:
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
	bcc	.L90f14
	b	.L9115e
.L90f3e:
	mov	r3, #0x80
	lsl	r3, #14
	and	r3, r0
	cmp	r3, #0
	beq	.L90fde
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
	bcc	.L90f6e
	b	.L9115e
.L90f6e:
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
	ldr	r3, =divsi3_RAM
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
	bl	Func_80912a8
	mov	r7, r0
	mov	r0, r6
	bl	Func_80912a8
	mov	r6, r0
	mov	r0, r5
	bl	Func_80912a8
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
	bcc	.L90f6e
	b	.L9115e
.L90fde:
	mov	r3, #0x80
	lsl	r3, #15
	and	r3, r0
	cmp	r3, #0
	bne	.L90fea
	b	.L910e8
.L90fea:
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
	bcc	.L91010
	b	.L9115e
.L91010:
	ldr	r2, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	ldr	r3, [sp, #0x18]
	add	r1, r2
	str	r1, [sp, #0x10]
	lsl	r1, r2, #16
	mov	r2, r11
	lsl	r3, #16
	lsl	r2, #16
	str	r3, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.L91028:
	mov	r3, r10
	ldrh	r4, [r3]
	mov	r2, #0x1f
	mov	r6, r4
	lsr	r0, r4, #5
	and	r6, r2
	and	r0, r2
	lsr	r3, r4, #10
	mov	r1, #2
	and	r3, r2
	add	r10, r1
	add	r0, r6, r0
	ldr	r1, [sp, #0x10]
	add	r0, r3
	add	r1, r11
	ldr	r3, =divsi3_RAM
	lsl	r0, #4
	bl	_call_via_r3
	ldr	r3, [sp, #0x18]
	mov	r4, r0
	mov	r0, r3
	mul	r0, r4
	ldr	r2, [sp, #0xc]
	lsr	r0, #4
	lsl	r0, #16
	asr	r1, r2, #4
	ldr	r3, =Func_8000888
	.call_via r3
	ldr	r1, [sp, #0x14]
	mov	r7, r0
	mov	r0, r1
	mul	r0, r4
	ldr	r2, [sp, #8]
	lsr	r0, #4
	lsl	r0, #16
	asr	r1, r2, #4
	.call_via r3
	mov	r6, r0
	mov	r0, r11
	mul	r0, r4
	ldr	r3, [sp, #4]
	lsr	r0, #4
	asr	r1, r3, #4
	lsl	r0, #16
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r5, r0
	lsr	r0, r7, #16
	bl	Func_8091294
	mov	r7, r0
	lsr	r0, r6, #16
	bl	Func_8091294
	mov	r6, r0
	lsr	r0, r5, #16
	bl	Func_8091294
	ldr	r1, =gScript_0809e92e
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
	ldr	r1, =gScript_0809e92e
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
	bcc	.L91028
	b	.L9115e

	.pool_aligned

.L910e8:
	mov	r3, #0x80
	lsl	r3, #16
	and	r3, r0
	cmp	r3, #0
	beq	.L9113e
	mov	r3, #0
	ldr	r1, [sp, #0x24]
	mov	r9, r3
	cmp	r9, r1
	bcs	.L9115e
	ldr	r5, =0x7c00
	ldr	r0, =0x3e0
	ldr	r2, =0x1f
	mov	r1, r8
	b	.L91114

	.pool_aligned

.L91114:
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
	bcc	.L91114
	b	.L9115e
.L9113e:
	cmp	r2, #2
	bne	.L91148
	mov	r1, #0xa8
	lsl	r1, #3
	add	r0, r1
.L91148:
	ldr	r3, [sp, #0x24]
	lsl	r2, r3, #1
	add	r2, r3
	mov	r4, #0x84
	lsl	r4, #24
	lsr	r2, #1
	ldr	r3, =REG_DMA3SAD
.L91156:
	mov	r1, r8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L9115e:
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8090a5c

