	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8026e80  @ 0x08026e80
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f34
	ldr	r7, [r3]
	sub	sp, #8
	cmp	r7, #0
	bne	.L26e8e
	b	.L26f8e
.L26e8e:
	ldr	r0, [r7, #0x28]
	ldr	r5, [r7, #0x2c]
	cmp	r0, r5
	beq	.L26eb4
	sub	r6, r0, r5
	mov	r0, r6
	mov	r1, #3
	bl	__divsi3
	cmp	r0, #0
	bne	.L26eac
	sub	r0, #1
	cmp	r6, #0
	blt	.L26eac
	mov	r0, #1
.L26eac:
	add	r0, r5, r0
	str	r0, [r7, #0x2c]
	bl	_Func_80b8fd4
.L26eb4:
	mov	r5, r7
	mov	r6, r7
	add	r5, #0x24
	mov	r2, #2
.L26ebc:
	ldrb	r3, [r5]
	add	r5, #1
	cmp	r3, #0
	beq	.L26ed0
	mov	r0, r6
	mov	r1, #0xf0
	str	r2, [sp, #4]
	bl	Func_8003dec
	ldr	r2, [sp, #4]
.L26ed0:
	sub	r2, #1
	add	r6, #0xc
	cmp	r2, #0
	bge	.L26ebc
	ldr	r0, =0x6006680
	bl	Func_80219c8
	ldr	r3, [r7, #0x50]
	cmp	r3, #0
	beq	.L26f8e
	ldr	r3, =iwram_3001e74
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0x52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26f0e
	mov	r3, #0
	str	r3, [r7, #0x4c]
	b	.L26f8e
.L26ef8:
	ldrh	r3, [r2, #0xc]
	cmp	r3, #0x56
	bne	.L26f34
	ldrh	r3, [r2, #0xe]
	cmp	r3, #0x53
	bne	.L26f34
	mov	r3, #0xe1
	lsl	r3, #2
	str	r3, [r7, #0x4c]
	mov	r6, r3
	b	.L26f34
.L26f0e:
	ldr	r6, [r7, #0x4c]
	cmp	r6, #0
	bge	.L26f38
	mov	r3, r2
	add	r3, #0x50
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2002024
	lsl	r2, #3
	add	r2, r3
	ldrh	r3, [r2, #8]
	cmp	r3, #0x45
	bne	.L26f34
	ldrh	r3, [r2, #0xa]
	cmp	r3, #0x44
	beq	.L26ef8
.L26f34:
	cmp	r6, #0
	blt	.L26f8e
.L26f38:
	ldr	r3, [r7, #0x44]
	cmp	r3, #0
	bne	.L26f4c
	ldr	r3, [r7, #0x48]
	cmp	r3, #0
	bne	.L26f4c
	bl	Func_8021c34
	ldr	r6, [r7, #0x4c]
	str	r0, [r7, #0x44]
.L26f4c:
	cmp	r6, #0
	ble	.L26f56
	sub	r3, r6, #1
	str	r3, [r7, #0x4c]
	mov	r6, r3
.L26f56:
	cmp	r6, #0
	blt	.L26f8e
	mov	r0, r6
	add	r0, #0x3b
	mov	r1, #0x3c
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.L26f7a
	lsl	r3, r5, #4
	sub	r3, r5
	lsl	r3, #2
	cmp	r3, r6
	bne	.L26f7a
	mov	r0, #0x6c
	bl	_PlaySound
.L26f7a:
	ldr	r2, [r7, #0x44]
	cmp	r2, #0
	beq	.L26f8e
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #2
	mov	r3, #0x10
	bl	Func_801ea08
.L26f8e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8026e80
