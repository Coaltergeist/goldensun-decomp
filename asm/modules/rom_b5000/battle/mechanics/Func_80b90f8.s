	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b90f8  @ 0x080b90f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	sub	sp, #0x24
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001e74
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0x45
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lb9120
	mov	r3, #1
	str	r3, [sp, #4]
	b	.Lb91d4
.Lb9120:
	add	r2, #0x46
	str	r2, [sp]
	ldrb	r2, [r2]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #2
	add	r3, r2
	ldr	r2, =0x1388
	lsl	r3, #4
	add	r2, r3
	add	r3, sp, #8
	mov	r10, r3
	mov	r0, #1
	mov	r1, r10
	mov	r9, r2
	bl	Func_80b6b40
	ldr	r2, [sp, #4]
	mov	r8, r0
	mov	r6, #0
	cmp	r2, r8
	bge	.Lb9166
	mov	r11, r10
	mov	r7, #0
	mov	r5, r8
.Lb9152:
	mov	r3, r11
	ldrsh	r0, [r7, r3]
	bl	_GetUnit
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, r3
	add	r7, #2
	cmp	r5, #0
	bne	.Lb9152
.Lb9166:
	lsl	r0, r6, #5
	sub	r0, r6
	lsl	r0, #2
	add	r0, r6
	mov	r1, r8
	lsl	r0, #2
	bl	__divsi3
	mov	r1, r10
	add	r9, r0
	mov	r0, #2
	bl	Func_80b6b40
	mov	r6, #0
	mov	r8, r0
	cmp	r6, r8
	bge	.Lb91a0
	mov	r7, #0
	mov	r5, r8
.Lb918c:
	mov	r3, r10
	ldrsh	r0, [r7, r3]
	bl	_GetUnit
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, r3
	add	r7, #2
	cmp	r5, #0
	bne	.Lb918c
.Lb91a0:
	lsl	r0, r6, #5
	sub	r0, r6
	lsl	r0, #2
	add	r0, r6
	lsl	r0, #2
	mov	r1, r8
	bl	__divsi3
	mov	r3, r9
	sub	r3, r0
	mov	r9, r3
	cmp	r3, #0
	ble	.Lb91cc
	bl	Random
	ldr	r3, =0x2710
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, r9
	bcs	.Lb91cc
	mov	r2, #1
	str	r2, [sp, #4]
.Lb91cc:
	ldr	r2, [sp]
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
.Lb91d4:
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.Lb91e4
	mov	r3, #0
	str	r3, [sp, #4]
.Lb91e4:
	ldr	r0, [sp, #4]
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b90f8
