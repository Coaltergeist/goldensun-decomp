	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800ca98
	push	{lr}
	mov	r3, r0
	add	r3, #0x55
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lcab2
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lcac4
	ldr	r2, [r0, #0x3c]
	b	.Lcab8
.Lcab2:
	mov	r3, #0x80
	ldr	r2, [r0, #0x38]
	lsl	r3, #24
.Lcab8:
	cmp	r2, r3
	bne	.Lcac4
	ldr	r3, [r0, #0x40]
	mov	r0, #1
	cmp	r3, r2
	beq	.Lcac6
.Lcac4:
	mov	r0, #0
.Lcac6:
	pop	{r1}
	bx	r1
.func_end Func_800ca98

.thumb_func_start Func_800cacc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e64
	ldr	r6, [r3]
	mov	r1, r6
	mov	r2, r6
	sub	sp, #0x30
	mov	r0, #0x3f
	add	r1, #0x55
	add	r2, #0x56
	str	r0, [sp, #0x20]
	str	r1, [sp, #4]
	str	r2, [sp]
.Lcaf0:
	mov	r3, #0
	str	r3, [sp, #0xc]
	ldr	r2, [r6]
	cmp	r2, #0
	bne	.Lcafc
	b	.Ld0fe
.Lcafc:
	ldr	r3, [r6, #0x6c]
	cmp	r3, #0
	beq	.Lcb0a
	mov	r0, r6
	bl	_call_via_r3
	ldr	r2, [r6]
.Lcb0a:
	cmp	r2, #0
	bne	.Lcb10
	b	.Ld0fe
.Lcb10:
	ldr	r4, [sp, #4]
	ldrb	r3, [r4, #6]
	cmp	r3, #0
	beq	.Lcb1a
	b	.Ld0fe
.Lcb1a:
	ldr	r0, [sp]
	mov	r4, #8
	ldrsh	r3, [r0, r4]
	ldrh	r1, [r0, #8]
	cmp	r3, #0
	beq	.Lcb2c
	sub	r3, r1, #1
	strh	r3, [r0, #8]
	b	.Lcb5a
.Lcb2c:
	ldr	r5, =Data_8013624
	b	.Lcb36
.Lcb30:
	add	r3, r1, #1
	strh	r3, [r6, #4]
.Lcb34:
	ldr	r2, [r6]
.Lcb36:
	mov	r4, #4
	ldrsh	r3, [r6, r4]
	lsl	r3, #2
	ldr	r3, [r2, r3]
	ldrh	r1, [r6, #4]
	cmp	r3, #0x3f
	bhi	.Lcb30
	lsl	r3, #2
	ldr	r3, [r5, r3]
	mov	r0, r6
	bl	_call_via_r3
	cmp	r0, #0
	bne	.Lcb34
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.Lcb5a
	b	.Ld0fe
.Lcb5a:
	ldr	r0, [r6, #8]
	str	r0, [sp, #0x1c]
	ldr	r1, [r6, #0xc]
	str	r1, [sp, #0x18]
	ldr	r2, [r6, #0x10]
	ldr	r4, [sp, #4]
	str	r2, [sp, #0x14]
	ldrb	r3, [r4, #0xc]
	cmp	r3, #0
	beq	.Lcb70
	b	.Lcfd6
.Lcb70:
	str	r4, [sp, #8]
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.Lcb7a
	b	.Lccf8
.Lcb7a:
	mov	r0, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r0, #24
	cmp	r3, r0
	bne	.Lcb86
	b	.Lcc7c
.Lcb86:
	ldr	r1, [sp, #0x1c]
	sub	r0, r3, r1
	cmp	r0, #0
	bge	.Lcb92
	ldr	r2, =0xffff
	add	r0, r2
.Lcb92:
	ldr	r3, [r6, #0x3c]
	ldr	r4, [sp, #0x18]
	asr	r0, #16
	mov	r8, r0
	sub	r0, r3, r4
	cmp	r0, #0
	bge	.Lcba4
	ldr	r1, =0xffff
	add	r0, r1
.Lcba4:
	ldr	r3, [r6, #0x40]
	ldr	r2, [sp, #0x14]
	asr	r0, #16
	mov	r11, r0
	sub	r0, r3, r2
	cmp	r0, #0
	bge	.Lcbb6
	ldr	r3, =0xffff
	add	r0, r3
.Lcbb6:
	asr	r0, #16
	mov	r9, r0
	mov	r4, r8
	mov	r1, r11
	mov	r0, r8
	mul	r0, r4
	mov	r3, r11
	mul	r3, r1
	mov	r4, r9
	mov	r2, r9
	mul	r2, r4
	add	r0, r3
	add	r0, r2
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	cmp	r0, #0
	bne	.Lcbe8
	ldr	r0, [r6, #0x38]
	str	r0, [sp, #0x1c]
	ldr	r1, [r6, #0x3c]
	str	r1, [sp, #0x18]
	ldr	r2, [r6, #0x40]
	str	r2, [sp, #0x14]
	b	.Lcfd6
.Lcbe8:
	ldr	r1, [r6, #0x34]
	ldr	r3, =Func_80008ac
	lsl	r0, #16
	bl	_call_via_r3
	mov	r5, r0
	mov	r3, r8
	mul	r3, r5
	ldr	r0, [r6, #0x24]
	add	r0, r3
	mov	r3, r11
	mul	r3, r5
	mov	r2, r9
	mul	r2, r5
	ldr	r1, [r6, #0x28]
	add	r1, r3
	ldr	r3, [r6, #0x2c]
	ldr	r4, =Func_8000888
	add	r3, r2
	mov	r10, r0
	str	r1, [r6, #0x28]
	mov	r7, r1
	str	r0, [r6, #0x24]
	str	r3, [r6, #0x2c]
	mov	r9, r3
	mov	r8, r4
	mov	r1, r10
	.call_via r8
	mov	r3, r0
	mov	r1, r7
	mov	r0, r7
	.call_via r8
	mov	r4, r0
	mov	r1, r9
	mov	r0, r9
	.call_via r8
	add	r3, r4
	add	r3, r0
	mov	r0, r3
	bl	Func_80045d4
	ldr	r1, [r6, #0x30]
	cmp	r0, r1
	bgt	.Lcc4e
	b	.Lcfd6
.Lcc4e:
	ldr	r2, =Func_80008ac
	bl	_call_via_r2
	mov	r5, r0
	mov	r1, r5
	mov	r0, r10
	.call_via r8
	str	r0, [r6, #0x24]
	mov	r1, r5
	mov	r0, r7
	.call_via r8
	str	r0, [r6, #0x28]
	mov	r1, r5
	mov	r0, r9
	.call_via r8
	str	r0, [r6, #0x2c]
	b	.Lcfd6
.Lcc7c:
	ldr	r3, [r6, #0x24]
	ldr	r0, [r6, #0x2c]
	ldr	r4, [r6, #0x28]
	mov	r8, r3
	mov	r9, r0
	mov	r11, r4
	ldr	r7, =Func_8000888
	mov	r0, r8
	mov	r1, r8
	.call_via r7
	mov	r3, r0
	mov	r1, r11
	mov	r0, r11
	.call_via r7
	mov	r4, r0
	mov	r1, r9
	mov	r0, r9
	.call_via r7
	add	r3, r4
	add	r3, r0
	mov	r0, r3
	bl	Func_80045d4
	cmp	r0, #0
	beq	.Lccf0
	ldr	r3, [r6, #0x34]
	sub	r1, r0, r3
	cmp	r1, #0
	bge	.Lccc4
	mov	r1, #0
.Lccc4:
	ldr	r3, =Func_80008ac
	bl	_call_via_r3
	mov	r5, r0
	mov	r1, r5
	mov	r0, r8
	.call_via r7
	str	r0, [r6, #0x24]
	mov	r1, r5
	mov	r0, r11
	.call_via r7
	str	r0, [r6, #0x28]
	mov	r1, r5
	mov	r0, r9
	.call_via r7
	str	r0, [r6, #0x2c]
	b	.Lcfd6
.Lccf0:
	str	r0, [r6, #0x24]
	str	r0, [r6, #0x28]
	str	r0, [r6, #0x2c]
	b	.Lcfd6
.Lccf8:
	mov	r1, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r1, #24
	cmp	r3, r1
	bne	.Lcd04
	b	.Lce0e
.Lcd04:
	ldr	r2, [sp, #0x1c]
	sub	r0, r3, r2
	cmp	r0, #0
	bge	.Lcd10
	ldr	r3, =0xffff
	add	r0, r3
.Lcd10:
	ldr	r3, [r6, #0x40]
	ldr	r4, [sp, #0x14]
	asr	r0, #16
	mov	r8, r0
	sub	r0, r3, r4
	cmp	r0, #0
	bge	.Lcd22
	ldr	r1, =0xffff
	add	r0, r1
.Lcd22:
	asr	r0, #16
	mov	r9, r0
	mov	r2, r8
	mov	r4, r9
	mov	r3, r9
	mul	r3, r4
	mov	r0, r8
	mul	r0, r2
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	ldr	r1, =0xffffff
	lsl	r0, #16
	cmp	r0, r1
	bgt	.Lcd70
	ldr	r3, [r6, #0x38]
	ldr	r2, [sp, #0x1c]
	ldr	r4, [sp, #0x14]
	sub	r2, r3, r2
	ldr	r3, [r6, #0x40]
	mov	r8, r2
	sub	r4, r3, r4
	mov	r9, r4
	mov	r0, r8
	ldr	r4, =Func_8000888
	mov	r1, r8
	.call_via r4
	mov	r3, r0
	mov	r1, r9
	mov	r0, r9
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	Func_80045d4
.Lcd70:
	cmp	r0, #0
	bne	.Lcd9c
	ldr	r0, [r6, #0x38]
	str	r0, [sp, #0x1c]
	ldr	r1, [r6, #0x40]
	str	r1, [sp, #0x14]
	b	.Lce66

	.pool_aligned

.Lcd9c:
	ldr	r2, =Func_80008ac
	ldr	r1, [r6, #0x34]
	mov	r11, r2
	bl	_call_via_r11
	mov	r5, r0
	ldr	r7, =Func_8000888
	mov	r0, r8
	mov	r1, r5
	.call_via r7
	ldr	r4, [r6, #0x24]
	add	r4, r0
	str	r4, [r6, #0x24]
	mov	r0, r9
	mov	r1, r5
	.call_via r7
	ldr	r3, [r6, #0x2c]
	mov	r10, r4
	add	r3, r0
	str	r3, [r6, #0x2c]
	mov	r9, r3
	mov	r0, r10
	mov	r1, r10
	.call_via r7
	mov	r3, r0
	mov	r1, r9
	mov	r0, r9
	.call_via r7
	add	r3, r0
	mov	r0, r3
	bl	Func_80045d4
	ldr	r1, [r6, #0x30]
	cmp	r0, r1
	ble	.Lce66
	bl	_call_via_r11
	mov	r5, r0
	mov	r1, r5
	mov	r0, r10
	.call_via r7
	str	r0, [r6, #0x24]
	mov	r1, r5
	mov	r0, r9
	.call_via r7
	b	.Lce64
.Lce0e:
	ldr	r3, [r6, #0x24]
	ldr	r4, [r6, #0x2c]
	mov	r8, r3
	mov	r9, r4
	ldr	r7, =Func_8000888
	mov	r0, r8
	mov	r1, r8
	.call_via r7
	mov	r3, r0
	mov	r1, r9
	mov	r0, r9
	.call_via r7
	add	r3, r0
	mov	r0, r3
	bl	Func_80045d4
	cmp	r0, #0
	beq	.Lce62
	ldr	r3, [r6, #0x34]
	sub	r1, r0, r3
	cmp	r1, #0
	bge	.Lce42
	mov	r1, #0
.Lce42:
	ldr	r3, =Func_80008ac
	bl	_call_via_r3
	mov	r5, r0
	mov	r1, r5
	mov	r0, r8
	.call_via r7
	str	r0, [r6, #0x24]
	mov	r1, r5
	mov	r0, r9
	.call_via r7
	b	.Lce64
.Lce62:
	str	r0, [r6, #0x24]
.Lce64:
	str	r0, [r6, #0x2c]
.Lce66:
	ldr	r0, [sp, #8]
	ldrb	r2, [r0]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lce74
	b	.Lcf42
.Lce74:
	ldr	r3, [r6, #0x24]
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x14]
	add	r1, r3
	ldr	r3, [r6, #0x2c]
	add	r2, r3
	mov	r3, r6
	add	r3, #0x22
	ldrb	r0, [r3]
	mov	r10, r1
	mov	r9, r2
	bl	Func_8011f54
	str	r0, [sp, #0x10]
	ldr	r4, [sp, #0x18]
	ldr	r3, [r6, #0x14]
	sub	r7, r0, r3
	sub	r3, r0, r4
	ldr	r0, =0xfffc0000
	cmp	r3, r0
	ble	.Lcea2
	add	r4, r7
	str	r4, [sp, #0x18]
.Lcea2:
	cmp	r7, #0
	bge	.Lcea8
	neg	r7, r7
.Lcea8:
	ldr	r3, [r6, #0x34]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	cmp	r7, r3
	ble	.Lceb6
	mov	r7, r3
.Lceb6:
	lsl	r3, r7, #1
	add	r7, r3, r7
	cmp	r7, #0
	beq	.Lcf3e
	ldr	r1, [sp, #8]
	ldrb	r2, [r1]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	bne	.Lcf3e
	ldr	r2, [r6, #0x24]
	ldr	r0, =Func_8000888
	ldr	r3, [r6, #0x28]
	ldr	r4, [r6, #0x2c]
	mov	r8, r2
	mov	r10, r0
	mov	r11, r3
	mov	r9, r4
	mov	r0, r8
	mov	r1, r8
	.call_via r10
	mov	r3, r0
	mov	r1, r11
	mov	r0, r11
	.call_via r10
	mov	r4, r0
	mov	r1, r9
	mov	r0, r9
	.call_via r10
	add	r3, r4
	add	r3, r0
	mov	r0, r3
	bl	Func_80045d4
	cmp	r0, #0
	beq	.Lcf3e
	sub	r1, r0, r7
	cmp	r1, #0
	bge	.Lcf12
	mov	r1, #0
.Lcf12:
	ldr	r3, =Func_80008ac
	bl	_call_via_r3
	mov	r5, r0
	mov	r1, r5
	mov	r0, r8
	.call_via r10
	str	r0, [r6, #0x24]
	mov	r1, r5
	mov	r0, r11
	.call_via r10
	str	r0, [r6, #0x28]
	mov	r1, r5
	mov	r0, r9
	.call_via r10
	str	r0, [r6, #0x2c]
.Lcf3e:
	ldr	r1, [sp, #0x10]
	str	r1, [r6, #0x14]
.Lcf42:
	ldr	r3, [sp, #8]
	ldrb	r2, [r3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lcf8a
	ldr	r4, [r6, #0x14]
	ldr	r0, [sp, #0x18]
	str	r4, [sp, #0x10]
	cmp	r0, r4
	ble	.Lcf60
	ldr	r3, [r6, #0x28]
	ldr	r2, [r6, #0x48]
	sub	r3, r2
	b	.Lcf88
.Lcf60:
	ldr	r0, [r6, #0x28]
	cmp	r0, #0
	bge	.Lcf8a
	ldr	r1, [sp, #0x10]
	str	r1, [sp, #0x18]
	ldr	r3, =Func_8000888
	ldr	r1, [r6, #0x44]
	.call_via r3
	neg	r3, r0
	mov	r2, r3
	str	r3, [r6, #0x28]
	cmp	r2, #0
	bge	.Lcf80
	mov	r2, r0
.Lcf80:
	ldr	r3, [r6, #0x48]
	cmp	r2, r3
	bgt	.Lcf8a
	mov	r3, #0
.Lcf88:
	str	r3, [r6, #0x28]
.Lcf8a:
	ldr	r3, [sp, #8]
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lcfd6
	ldr	r1, [r6, #0x44]
	mov	r3, #0x3f
	and	r1, r3
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lcfba
	ldr	r2, =.L131c0
	lsr	r3, r1, #1
	lsl	r3, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r6, #0x48]
	mul	r3, r2
	cmp	r3, #0
	bge	.Lcfb6
	add	r3, #0xf
.Lcfb6:
	asr	r3, #4
	b	.Lcfce
.Lcfba:
	ldr	r2, =.L131c0
	lsr	r3, r1, #1
	lsl	r3, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r6, #0x48]
	mul	r3, r2
	cmp	r3, #0
	bge	.Lcfcc
	add	r3, #0x3f
.Lcfcc:
	asr	r3, #6
.Lcfce:
	str	r3, [r6, #0x28]
	ldr	r3, [r6, #0x44]
	add	r3, #1
	str	r3, [r6, #0x44]
.Lcfd6:
	ldr	r3, [r6, #0x24]
	ldr	r4, [sp, #0x1c]
	add	r4, r3
	str	r4, [sp, #0x1c]
	ldr	r0, [sp, #0x18]
	ldr	r3, [r6, #0x28]
	add	r0, r3
	str	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r6, #0x2c]
	add	r1, r3
	str	r1, [sp, #0x14]
	ldr	r3, [sp, #4]
	ldrb	r2, [r3, #4]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Ld01c
	add	r1, sp, #0x24
	str	r0, [r1, #4]
	str	r4, [r1]
	ldr	r4, [sp, #0x14]
	mov	r0, r6
	str	r4, [r1, #8]
	bl	Func_800d924
	cmp	r0, #0
	beq	.Ld018
	ldr	r0, [sp, #4]
	ldrb	r3, [r0, #0xb]
	add	r3, #1
	strb	r3, [r0, #0xb]
	b	.Ld0fe
.Ld018:
	ldr	r1, [sp, #4]
	strb	r0, [r1, #0xb]
.Ld01c:
	ldr	r1, [sp]
	ldrb	r3, [r1]
	cmp	r3, #0x11
	beq	.Ld042
	cmp	r3, #0x11
	bgt	.Ld02e
	cmp	r3, #0x10
	beq	.Ld034
	b	.Ld07a
.Ld02e:
	cmp	r3, #0x12
	beq	.Ld060
	b	.Ld07a
.Ld034:
	ldr	r2, [r6, #0x38]
	ldr	r3, [sp, #0x1c]
	cmp	r3, r2
	beq	.Ld076
	ldr	r3, [r6, #8]
	ldr	r4, [sp, #0x1c]
	b	.Ld06c
.Ld042:
	ldr	r2, [r6, #0x3c]
	ldr	r3, [sp, #0x18]
	cmp	r3, r2
	beq	.Ld076
	ldr	r3, [r6, #0xc]
	ldr	r4, [sp, #0x18]
	b	.Ld06c

	.pool_aligned

.Ld060:
	ldr	r2, [r6, #0x40]
	ldr	r3, [sp, #0x14]
	cmp	r3, r2
	beq	.Ld076
	ldr	r3, [r6, #0x10]
	ldr	r4, [sp, #0x14]
.Ld06c:
	sub	r3, r2
	sub	r2, r4, r2
	eor	r3, r2
	cmp	r3, #0
	bge	.Ld07a
.Ld076:
	mov	r0, #1
	str	r0, [sp, #0xc]
.Ld07a:
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	beq	.Ld0b0
	ldr	r4, [sp, #4]
	ldrb	r3, [r4, #3]
	cmp	r3, #0
	beq	.Ld0a2
	ldr	r0, [r6, #0x38]
	str	r0, [sp, #0x1c]
	ldr	r2, [r6, #0x40]
	mov	r3, #0
	str	r3, [r6, #0x24]
	str	r2, [sp, #0x14]
	str	r3, [r6, #0x2c]
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.Ld0a2
	ldr	r4, [r6, #0x3c]
	str	r4, [sp, #0x18]
	str	r3, [r6, #0x28]
.Ld0a2:
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r3, #0
	strb	r3, [r1]
.Ld0b0:
	ldr	r0, [sp, #0x1c]
	str	r0, [r6, #8]
	ldr	r1, [sp, #0x18]
	str	r1, [r6, #0xc]
	ldr	r2, [sp, #0x14]
	str	r2, [r6, #0x10]
	ldr	r3, [sp, #4]
	ldrb	r2, [r3, #5]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Ld0fe
	ldr	r4, [r6, #0x24]
	str	r4, [sp, #0x1c]
	ldr	r0, [r6, #0x2c]
	str	r0, [sp, #0x14]
	cmp	r4, #0
	bne	.Ld0d8
	cmp	r0, #0
	beq	.Ld0fe
.Ld0d8:
	ldr	r0, [sp, #0x14]
	ldr	r1, [sp, #0x1c]
	bl	Func_80044d0
	ldrh	r3, [r6, #6]
	sub	r0, r3
	lsl	r0, #16
	mov	r2, #0x80
	asr	r0, #16
	lsl	r2, #5
	cmp	r0, r2
	ble	.Ld0f2
	mov	r0, r2
.Ld0f2:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.Ld0fa
	mov	r0, r2
.Ld0fa:
	add	r3, r0
	strh	r3, [r6, #6]
.Ld0fe:
	ldr	r1, [sp, #0x20]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	sub	r1, #1
	add	r2, #0x70
	add	r3, #0x70
	str	r1, [sp, #0x20]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r6, #0x70
	cmp	r1, #0
	blt	.Ld118
	b	.Lcaf0
.Ld118:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800cacc

