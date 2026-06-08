	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6cdc
	push	{r5, lr}
	bl	Func_80c23c0
	ldr	r3, =iwram_3001e74
	ldr	r4, [r3]
	mov	r2, #4
	ldrsh	r3, [r4, r2]
	mov	r1, #0
	cmp	r3, #0
	bne	.Lb6cfc
	cmp	r0, #0
	bne	.Lb6d1c
	mov	r5, #6
	ldrsh	r3, [r4, r5]
	cmp	r3, #0
	beq	.Lb6d1c
.Lb6cfc:
	add	r1, #1
	cmp	r1, #5
	bgt	.Lb6d1c
	lsl	r2, r1, #1
	add	r3, r2, #4
	ldrsh	r3, [r4, r3]
	cmp	r3, #0
	bne	.Lb6cfc
	cmp	r0, #0
	bne	.Lb6d1c
	cmp	r1, #4
	bgt	.Lb6cfc
	add	r3, r2, #6
	ldrsh	r3, [r4, r3]
	cmp	r3, #0
	bne	.Lb6cfc
.Lb6d1c:
	mov	r3, #6
	eor	r3, r1
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b6cdc

.thumb_func_start Func_80b6d30
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	sub	sp, #4
	ldr	r6, [r3]
	mov	r11, r0
	bl	_GetUnit
	mov	r5, #0x94
	mov	r9, r0
	lsl	r5, #1
	add	r5, r9
	ldrb	r0, [r5]
	bl	Func_80c23c0
	mov	r1, #0
	mov	r8, r0
	ldrb	r0, [r5]
	mov	r10, r1
	bl	Func_80c2384
	mov	r4, r10
	mov	r7, r0
.Lb6d68:
	ldr	r3, =0x129
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb6e04
	mov	r2, #4
	ldrsh	r3, [r6, r2]
	mov	r5, #0
	cmp	r3, #0
	bne	.Lb6d8a
	mov	r3, r8
	cmp	r3, #0
	bne	.Lb6dac
	mov	r1, #6
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	beq	.Lb6dac
.Lb6d8a:
	add	r5, #1
	cmp	r5, #5
	bgt	.Lb6dac
	lsl	r2, r5, #1
	add	r3, r2, #4
	ldrsh	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lb6d8a
	mov	r3, r8
	cmp	r3, #0
	bne	.Lb6dac
	cmp	r5, #4
	bgt	.Lb6d8a
	add	r3, r2, #6
	ldrsh	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lb6d8a
.Lb6dac:
	cmp	r5, #6
	beq	.Lb6e0a
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r9
	ldrb	r0, [r3]
	str	r4, [sp]
	bl	Func_80c23a0
	ldr	r2, =ewram_2018000
	ldr	r4, [sp]
	lsl	r1, r5, #14
	mov	r3, r0
	add	r1, r2
	mov	r0, r5
	add	r2, r7, r4
	bl	_PreloadSpriteGFX
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Lb6dda
	mov	r0, #0
	b	.Lb6e0c
.Lb6dda:
	cmp	r4, #0
	bne	.Lb6de4
	lsl	r3, r5, #12
	orr	r3, r7
	mov	r10, r3
.Lb6de4:
	lsl	r0, r5, #1
	add	r3, r0, #4
	mov	r1, r11
	mov	r2, r8
	strh	r1, [r6, r3]
	cmp	r2, #0
	bne	.Lb6df6
	add	r3, r0, #6
	strh	r1, [r6, r3]
.Lb6df6:
	mov	r2, #0xee
	lsl	r2, #1
	cmp	r7, r2
	beq	.Lb6e04
	ldr	r3, =0x1e3
	cmp	r7, r3
	bne	.Lb6e0a
.Lb6e04:
	add	r4, #1
	cmp	r4, #1
	ble	.Lb6d68
.Lb6e0a:
	mov	r0, r10
.Lb6e0c:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b6d30

.thumb_func_start Func_80b6e30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e74
	ldr	r2, .Lb6e60	@ 0
	ldr	r7, [r3]
	mov	r8, r0
	mov	r6, #0
	mov	r10, r2
	mov	r5, #4
.Lb6e46:
	ldrsh	r3, [r5, r7]
	cmp	r3, r8
	bne	.Lb6e68
	mov	r3, #0
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	bl	_PreloadSpriteGFX
	mov	r3, r10
	strh	r3, [r5, r7]
	b	.Lb6e68

	.align	2, 0
.Lb6e60:
	.word	0
	.pool

.Lb6e68:
	add	r6, #1
	add	r5, #2
	cmp	r6, #5
	ble	.Lb6e46
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b6e30

	.section .rodata
	.global .Lc2a10

.Lc2a10:
	.incrom 0xc2a10, 0xc2a1c
