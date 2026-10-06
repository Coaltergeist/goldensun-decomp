	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80e6d3c  @ 0x080e6d3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001eec
	mov	r10, r2
	ldr	r2, [r3]
	ldr	r3, =Data_edab8
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	sub	sp, #0x20
	str	r3, [sp, #8]
	str	r4, [sp, #0xc]
	ldr	r3, =Data_edac0
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	mov	r9, r1
	str	r3, [sp]
	str	r4, [sp, #4]
	add	r1, sp, #0x10
	mov	r3, #0
	str	r3, [r1, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r1, #4]
	cmp	r0, #1
	beq	.Le6dc4
	cmp	r0, #1
	bgt	.Le6d7e
	cmp	r0, #0
	beq	.Le6d88
	b	.Le6e6a
.Le6d7e:
	cmp	r0, #2
	beq	.Le6e00
	cmp	r0, #3
	beq	.Le6e3a
	b	.Le6e6a
.Le6d88:
	add	r3, sp, #8
	mov	r8, r3
	ldr	r3, =0x77d8
	mov	r5, #0
	mov	r7, r1
	add	r6, r2, r3
.Le6d94:
	mov	r0, r5
	mov	r1, #3
	bl	__modsi3
	lsl	r0, #21
	add	r0, r9
	str	r0, [r7]
	mov	r1, #3
	mov	r0, r5
	bl	__divsi3
	lsl	r0, #21
	add	r0, r10
	str	r0, [r7, #8]
	mov	r1, r7
	ldmia	r6!, {r0}
	mov	r2, r8
	mov	r3, #0
	add	r5, #1
	bl	_UpdateSprite
	cmp	r5, #9
	bne	.Le6d94
	b	.Le6e6a
.Le6dc4:
	add	r3, sp, #8
	mov	r8, r3
	ldr	r3, =0x77d8
	mov	r5, #0
	mov	r6, r1
	add	r7, r2, r3
.Le6dd0:
	ldr	r3, =.Leee1e
	ldrb	r3, [r3, r5]
	ldr	r2, =0xfff00000
	lsl	r3, #16
	add	r3, r9
	add	r3, r2
	str	r3, [r6]
	ldr	r3, =.Leee2a
	ldrb	r3, [r3, r5]
	ldr	r2, =0xffe00000
	lsl	r3, #16
	add	r3, r10
	add	r3, r2
	str	r3, [r6, #8]
	ldmia	r7!, {r0}
	mov	r1, r6
	mov	r2, r8
	mov	r3, #0
	add	r5, #1
	bl	_UpdateSprite
	cmp	r5, #0xc
	bne	.Le6dd0
	b	.Le6e6a
.Le6e00:
	add	r3, sp, #8
	mov	r8, r3
	ldr	r3, =0x77d8
	mov	r5, #0
	mov	r6, r1
	add	r7, r2, r3
.Le6e0c:
	ldr	r3, =.Leee36
	ldrb	r3, [r3, r5]
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #13
	add	r3, r9
	add	r3, r2
	str	r3, [r6]
	ldr	r3, =.Leee3e
	ldrb	r3, [r3, r5]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r6, #8]
	ldmia	r7!, {r0}
	mov	r1, r6
	mov	r2, r8
	mov	r3, #0
	add	r5, #1
	bl	_UpdateSprite
	cmp	r5, #8
	bne	.Le6e0c
	b	.Le6e6a
.Le6e3a:
	ldr	r3, =0x77d8
	mov	r5, #0
	mov	r8, sp
	mov	r6, r1
	add	r7, r2, r3
.Le6e44:
	ldr	r3, =.Leee46
	ldrb	r3, [r3, r5]
	lsl	r3, #16
	add	r3, r9
	str	r3, [r6]
	ldr	r3, =.Leee4e
	ldrb	r3, [r3, r5]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r6, #8]
	ldmia	r7!, {r0}
	mov	r1, r6
	mov	r2, r8
	mov	r3, #0
	add	r5, #1
	bl	_UpdateSprite
	cmp	r5, #8
	bne	.Le6e44
.Le6e6a:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80e6d3c
