	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2009be8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	sub	sp, #0x84
	mov	r2, #0x10
	str	r1, [sp, #4]
	str	r1, [sp]
	mov	r11, r1
	mov	r9, r2
.Lm947_1c04:
	mov	r0, r11
	add	r0, #8
	bl	__MapActor_GetActor
	mov	r3, r11
	mov	r10, r0
	mov	r8, r11
	cmp	r3, #3
	bls	.Lm947_1c18
	b	.Lm947_1d44
.Lm947_1c18:
	ldr	r6, [sp]
	ldr	r4, [sp]
	ldr	r1, =bss_36d0
	add	r6, #0x10
	add	r7, r4, r1
.Lm947_1c22:
	mov	r0, r8
	add	r0, #8
	bl	__MapActor_GetActor
	mov	r3, r10
	mov	r4, r0
	ldr	r2, [r3, #0xc]
	ldr	r3, [r4, #0xc]
	cmp	r2, r3
	bgt	.Lm947_1c42
	mov	r1, r10
	ldr	r2, [r1, #0x10]
	ldr	r3, [r4, #0x10]
	cmp	r2, r3
	bge	.Lm947_1c42
	b	.Lm947_1d34
.Lm947_1c42:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	add	r1, sp, #0x14
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lm947_1c54:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_1c54
	ldr	r3, =REG_DMA3SAD
	mov	r0, r10
	mov	r1, r4
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lm947_1c6e:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_1c6e
	ldr	r3, =REG_DMA3SAD
	add	r0, sp, #0x14
	mov	r1, r10
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lm947_1c88:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_1c88
	ldr	r3, =REG_DMA3SAD
	mov	r0, r7
	add	r1, sp, #8
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lm947_1ca2:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_1ca2
	ldr	r2, [sp, #4]
	ldr	r4, =bss_36d0
	ldr	r3, =REG_DMA3SAD
	add	r0, r2, r4
	mov	r1, r7
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lm947_1cc0:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_1cc0
	ldr	r2, [sp, #4]
	ldr	r4, =bss_36d0
	ldr	r3, =REG_DMA3SAD
	add	r1, r2, r4
	add	r0, sp, #8
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lm947_1cde:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_1cde
	ldr	r5, =bss_36d0
	mov	r1, r9
	ldr	r0, [r5, r1]
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm947_1d0e
	ldr	r0, [r5, r6]
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm947_1d0e
	mov	r2, r9
	ldr	r0, [r5, r2]
	bl	__ClearFlag
	ldr	r0, [r5, r6]
	bl	__SetFlag
	b	.Lm947_1d34
.Lm947_1d0e:
	ldr	r5, =bss_36d0
	mov	r3, r9
	ldr	r0, [r5, r3]
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm947_1d34
	ldr	r0, [r5, r6]
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm947_1d34
	mov	r4, r9
	ldr	r0, [r5, r4]
	bl	__SetFlag
	ldr	r0, [r5, r6]
	bl	__ClearFlag
.Lm947_1d34:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0x14
	add	r7, #0x14
	cmp	r2, #3
	bhi	.Lm947_1d44
	b	.Lm947_1c22
.Lm947_1d44:
	ldr	r4, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #1
	mov	r3, #0x14
	add	r11, r2
	add	r9, r3
	add	r4, #0x14
	add	r1, #0x14
	mov	r3, r11
	str	r4, [sp, #4]
	str	r1, [sp]
	cmp	r3, #2
	bhi	.Lm947_1d60
	b	.Lm947_1c04
.Lm947_1d60:
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009be8

