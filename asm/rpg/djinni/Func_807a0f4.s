	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_807a0f4  @ 0x0807a0f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	lsl	r3, r7, #2
	add	r3, r7
	mov	r10, r1
	lsl	r3, #2
	add	r3, r10
	add	r3, #0x30
	mov	r11, r3
	ldr	r3, =0x3e7
	mov	r2, #0
	mov	r0, r11
	mov	r9, r2
	mov	r8, r3
	bl	GetFlag
	cmp	r0, #0
	beq	.L7a12a
	mov	r0, #1
	neg	r0, r0
	b	.L7a19a
.L7a12a:
	bl	GetPartySize
	cmp	r9, r0
	bge	.L7a172
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L7a13c:
	ldrb	r0, [r6]
	bl	GetUnit
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r7, r2
	ldrb	r3, [r0, r3]
	cmp	r3, #9
	bhi	.L7a16a
	add	r0, r2
	mov	r1, #0
	mov	r2, #3
.L7a154:
	ldrb	r3, [r0]
	sub	r2, #1
	add	r0, #1
	add	r1, r3
	cmp	r2, #0
	bge	.L7a154
	cmp	r8, r1
	ble	.L7a16a
	ldrb	r3, [r6]
	mov	r8, r1
	mov	r9, r3
.L7a16a:
	sub	r5, #1
	add	r6, #1
	cmp	r5, #0
	bne	.L7a13c
.L7a172:
	ldr	r2, =0x3e7
	cmp	r8, r2
	bne	.L7a17e
	mov	r0, #2
	neg	r0, r0
	b	.L7a19a
.L7a17e:
	mov	r1, r7
	mov	r2, r10
	mov	r0, r9
	bl	GiveDjinni
	mov	r1, r7
	mov	r2, r10
	mov	r0, r9
	bl	Func_807a458
	mov	r0, r11
	bl	SetFlag
	mov	r0, r9
.L7a19a:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a0f4

