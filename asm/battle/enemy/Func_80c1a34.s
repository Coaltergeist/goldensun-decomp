	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1a34  @ 0x080c1a34
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.Lc5c38
	lsl	r0, #4
	add	r0, r3
	ldrb	r3, [r0, #6]
	mov	r2, #0
	sub	sp, #0x1c
	mov	r9, r2
	mov	r11, r2
	mov	r10, r0
	mov	r7, #0
	cmp	r3, #0
	bne	.Lc1a6c
	mov	r2, r10
	add	r2, #6
.Lc1a5e:
	add	r7, #1
	cmp	r7, #4
	bhi	.Lc1a6c
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lc1a5e
.Lc1a6c:
	cmp	r7, #5
	bne	.Lc1a76
	mov	r0, #1
	neg	r0, r0
	b	.Lc1ae6
.Lc1a76:
	mov	r3, #0xb
	add	r3, r10
	mov	r7, #0
	mov	r8, r3
.Lc1a7e:
	mov	r2, r8
	ldrb	r3, [r2]
	mov	r2, #1
	add	r8, r2
	cmp	r3, #0
	beq	.Lc1ac6
	mov	r3, r10
	add	r3, #1
	ldrb	r6, [r3, r7]
	mov	r0, r6
	add	r0, #8
	bl	_GetEnemyInfo
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc1ac6
	ldrb	r3, [r5, #0xf]
	cmp	r3, #3
	bls	.Lc1abe
	mov	r0, #0xba
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lc1abe
	mov	r3, #0xc1
	lsl	r3, #3
	add	r0, r6, r3
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lc1ad8
.Lc1abe:
	ldrb	r3, [r5, #0xf]
	mov	r2, #1
	add	r11, r3
	add	r9, r2
.Lc1ac6:
	add	r7, #1
	cmp	r7, #4
	bls	.Lc1a7e
	mov	r3, r9
	cmp	r3, #0
	bne	.Lc1ade
	mov	r0, #3
	neg	r0, r0
	b	.Lc1ae6
.Lc1ad8:
	mov	r0, #2
	neg	r0, r0
	b	.Lc1ae6
.Lc1ade:
	mov	r0, r11
	mov	r1, r9
	bl	__divsi3
.Lc1ae6:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1a34

