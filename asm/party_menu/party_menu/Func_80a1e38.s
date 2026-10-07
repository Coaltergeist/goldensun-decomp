	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1e38  @ 0x080a1e38
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x70
	str	r0, [sp, #0xc]
	add	r5, sp, #0x10
	mov	r0, #0
	str	r0, [sp, #8]
	mov	r11, r0
	mov	r0, r1
	mov	r1, r5
	bl	Func_a1f74
	add	r1, sp, #0x30
	mov	r9, r1
	mov	r2, #0
	mov	r6, #0xe
.La1e62:
	ldr	r0, [sp, #0xc]
	ldrh	r3, [r2, r0]
	sub	r6, #1
	strh	r3, [r2, r1]
	add	r2, #2
	cmp	r6, #0
	bge	.La1e62
	mov	r1, #0
	mov	r8, r1
	mov	r2, r9
	mov	r6, #0xe
.La1e78:
	ldrh	r3, [r2]
	add	r2, #2
	cmp	r3, #0
	beq	.La1e84
	mov	r3, #1
	add	r8, r3
.La1e84:
	sub	r6, #1
	cmp	r6, #0
	bge	.La1e78
	mov	r0, r8
	cmp	r0, #0xe
	bgt	.La1eac
	add	r3, sp, #0x50
	lsl	r2, r0, #1
	add	r2, r3
	ldr	r1, =0
	mov	r3, #0xf
	sub	r6, r3, r0
.La1e9c:
	sub	r6, #1
	strh	r1, [r2]
	add	r2, #2
	cmp	r6, #0
	bne	.La1e9c
	b	.La1eac

	.pool_aligned

.La1eac:
	ldrb	r3, [r5]
	cmp	r3, #0xff
	beq	.La1f44
	mov	r1, sp
	add	r1, #0x50
	str	r1, [sp, #4]
	mov	r10, r9
	mov	r7, r5
.La1ebc:
	mov	r6, #0
	mov	r4, #0
	cmp	r6, r8
	bge	.La1f12
	mov	r5, r9
.La1ec6:
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.La1f0a
	mov	r0, r3
	str	r4, [sp]
	bl	_GetItemInfo
	ldrb	r1, [r7]
	mov	r2, #0x7f
	ldrb	r3, [r0, #2]
	and	r2, r1
	ldr	r4, [sp]
	cmp	r2, r3
	bne	.La1f0a
	mov	r3, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.La1efc
	ldrh	r2, [r5]
	ldr	r3, =0x200
	and	r3, r2
	cmp	r3, #0
	beq	.La1f0a
	b	.La1efe

	.pool_aligned

.La1efc:
	ldrh	r2, [r5]
.La1efe:
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r4, r3
	bge	.La1f0a
	str	r6, [sp, #8]
	mov	r4, r3
.La1f0a:
	add	r6, #1
	add	r5, #2
	cmp	r6, r8
	blt	.La1ec6
.La1f12:
	cmp	r4, #0
	beq	.La1f3c
	ldr	r0, [sp, #8]
	mov	r3, r11
	lsl	r2, r0, #1
	mov	r0, r10
	lsl	r1, r3, #1
	ldrh	r3, [r0, r2]
	ldr	r0, [sp, #4]
	strh	r3, [r0, r1]
	ldr	r3, =0
	mov	r1, r10
	b	.La1f34

	.pool_aligned

.La1f34:
	strh	r3, [r1, r2]
	mov	r3, #1
	add	r11, r3
	b	.La1ebc
.La1f3c:
	add	r7, #1
	ldrb	r3, [r7]
	cmp	r3, #0xff
	bne	.La1ebc
.La1f44:
	mov	r0, r8
	cmp	r0, #0
	ble	.La1f5e
	add	r1, sp, #0x50
	mov	r2, #0
	mov	r6, r8
.La1f50:
	ldrh	r3, [r2, r1]
	ldr	r0, [sp, #0xc]
	sub	r6, #1
	strh	r3, [r2, r0]
	add	r2, #2
	cmp	r6, #0
	bne	.La1f50
.La1f5e:
	mov	r0, #1
	add	sp, #0x70
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a1e38

