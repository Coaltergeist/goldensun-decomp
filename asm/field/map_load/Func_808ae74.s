	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808ae74  @ 0x0808ae74
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	ldr	r0, =0x15f
	mov	r11, r3
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8ae9a
	b	.L8afa0
.L8ae9a:
	mov	r0, #0xb0
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8af26
	ldr	r0, =0x161
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8af26
	ldr	r2, [sp, #4]
	mov	r0, #0
	cmp	r2, #0
	bne	.L8aeba
	b	.L8affc
.L8aeba:
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8aecc
	b	.L8affc
.L8aecc:
	ldr	r2, [sp, #4]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =.L9c610
	lsl	r3, #2
	add	r3, r2
	ldrh	r7, [r3]
	mov	r9, r3
	cmp	r7, #0
	bne	.L8aee2
	b	.L8affc
.L8aee2:
	mov	r0, #5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8aefe
	mov	r0, #5
	bl	_GetUnit
	mov	r3, #0x92
	lsl	r3, #1
	add	r0, r3
	ldr	r0, [r0]
	cmp	r0, #0x82
	bgt	.L8af26
.L8aefe:
	bl	_Func_8077348
	mov	r2, r9
	ldrh	r3, [r2, #2]
	sub	r0, r3
	cmp	r0, #0
	bge	.L8af0e
	mov	r0, #0
.L8af0e:
	cmp	r0, #5
	ble	.L8af14
	mov	r0, #5
.L8af14:
	cmp	r0, #0
	ble	.L8af2a
	ldr	r3, =gState
	mov	r2, #0x91
	lsl	r2, #2
	add	r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L8af2a
.L8af26:
	mov	r0, #0
	b	.L8affc
.L8af2a:
	lsl	r3, r0, #2
	add	r3, r0
	add	r7, r3
	mov	r3, #0xd4
	lsl	r3, #1
	add	r3, r11
	ldr	r5, [r3]
	mov	r10, r3
	cmp	r5, #0
	bne	.L8af66
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r8, r0
	bl	Random
	mov	r6, r0
	bl	Random
	mov	r2, r8
	sub	r5, r2
	add	r5, r6
	sub	r5, r0
	lsr	r3, r5, #31
	add	r5, r3
	asr	r5, #1
	mov	r3, r10
	str	r5, [r3]
.L8af66:
	lsl	r3, r7, #4
	sub	r3, #0x10
	mul	r3, r5
	lsl	r0, r7, #20
	mov	r1, #0x80
	add	r0, r3
	lsl	r1, #13
	ldr	r3, =Func_80008ac
	bl	_call_via_r3
	ldr	r3, =Func_8000888
	ldr	r1, [sp]
	.call_via r3
	ldr	r3, =gState
	mov	r2, #0x8e
	lsl	r2, #2
	add	r3, r2
	ldr	r2, [r3]
	add	r2, r0
	str	r2, [r3]
	mov	r3, #0xd6
	lsl	r3, #1
	add	r3, r11
	ldr	r3, [r3]
	mov	r0, #0
	cmp	r2, r3
	blt	.L8affc
.L8afa0:
	mov	r2, #0xd4
	lsl	r2, #1
	add	r2, r11
	mov	r3, #0
	str	r3, [r2]
	mov	r2, r9
	mov	r5, #0
	add	r2, #0x14
	mov	r1, #7
.L8afb2:
	ldrb	r3, [r2]
	sub	r1, #1
	add	r2, #1
	add	r5, r3
	cmp	r1, #0
	bge	.L8afb2
	mov	r0, #0
	cmp	r5, #0
	beq	.L8affc
	bl	Random
	mov	r3, r5
	mul	r3, r0
	mov	r2, r9
	lsr	r0, r3, #16
	ldrb	r3, [r2, #0x14]
	sub	r0, r3
	mov	r1, #0
	cmp	r0, #0
	blt	.L8afec
	add	r2, #0x14
.L8afdc:
	add	r1, #1
	cmp	r1, #7
	bgt	.L8afec
	add	r2, #1
	ldrb	r3, [r2]
	sub	r0, r3
	cmp	r0, #0
	bge	.L8afdc
.L8afec:
	lsl	r3, r1, #1
	add	r3, #4
	mov	r2, r9
	ldrh	r5, [r2, r3]
	ldr	r0, [sp, #4]
	bl	Func_808b320
	mov	r0, r5
.L8affc:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808ae74
