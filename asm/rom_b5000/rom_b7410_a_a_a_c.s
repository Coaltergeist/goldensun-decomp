	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7424
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r11, r2
	mov	r9, r1
	str	r3, [sp]
	mov	r2, #0x1e
	cmp	r1, #4
	ble	.Lb7442
	mov	r2, #0x1b
.Lb7442:
	mov	r3, r9
	sub	r3, #1
	mul	r3, r2
	lsr	r2, r3, #31
	add	r3, r2
	mov	r1, #0
	mov	r2, r9
	asr	r7, r3, #1
	mov	r10, r1
	cmp	r2, #0
	beq	.Lb74fe
	mov	r6, r0
	mov	r8, r1
.Lb745c:
	mov	r3, #0x50
	neg	r3, r3
	mov	r0, r8
	mov	r1, r11
	str	r3, [r0, r1]
	mov	r3, r10
	mov	r2, #0
	cmp	r3, #0
	beq	.Lb74b6
	ldrh	r3, [r6]
	ldr	r0, =0xff02
	mov	r1, #0x80
	add	r3, r0
	lsl	r3, #16
	lsl	r1, #9
	mov	r2, #0x19
	cmp	r3, r1
	bls	.Lb74b6
	ldrh	r0, [r6]
	bl	_GetUnit
	mov	r2, #0x94
	lsl	r2, #1
	mov	r5, r0
	add	r3, r5, r2
	ldrb	r0, [r3]
	bl	Func_80c23c0
	mov	r2, #0x1b
	cmp	r0, #0
	bne	.Lb749c
	mov	r2, #0x26
.Lb749c:
	mov	r0, #0x94
	lsl	r0, #1
	add	r3, r5, r0
	ldrb	r0, [r3]
	cmp	r0, #0x94
	beq	.Lb74ac
	cmp	r0, #0x79
	bne	.Lb74b6
.Lb74ac:
	mov	r3, #0x32
	neg	r3, r3
	mov	r1, r8
	mov	r0, r11
	str	r3, [r1, r0]
.Lb74b6:
	lsr	r3, r2, #1
	sub	r7, r3
	ldr	r2, [sp]
	ldrh	r3, [r6]
	ldr	r0, =0xff02
	mov	r1, r8
	str	r7, [r1, r2]
	add	r3, r0
	mov	r1, #0x80
	lsl	r3, #16
	lsl	r1, #9
	mov	r2, #0x19
	cmp	r3, r1
	bls	.Lb74ec
	ldrh	r0, [r6]
	bl	_GetUnit
	mov	r2, #0x94
	lsl	r2, #1
	add	r0, r2
	ldrb	r0, [r0]
	bl	Func_80c23c0
	mov	r2, #0x1b
	cmp	r0, #0
	bne	.Lb74ec
	mov	r2, #0x26
.Lb74ec:
	lsr	r3, r2, #1
	mov	r0, #1
	sub	r7, r3
	add	r10, r0
	mov	r3, #4
	add	r6, #2
	add	r8, r3
	cmp	r10, r9
	bne	.Lb745c
.Lb74fe:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b7424

