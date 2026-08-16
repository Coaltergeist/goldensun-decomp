	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CheckSpecialExits  @ 0x0808bde0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x2c]
	bl	_call_via_r0
	mov	r5, r0
	cmp	r5, #0
	beq	.L8bea4
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r2, #1
	mov	r1, #0
	ldrsh	r6, [r5, r1]
	neg	r2, r2
	cmp	r6, r2
	beq	.L8bea4
.L8be16:
	mov	r1, #2
	ldrsh	r3, [r5, r1]
	mov	r8, r3
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	mov	r11, r2
	mov	r2, #6
	ldrsh	r1, [r5, r2]
	mov	r10, r1
	mov	r2, #0xa
	ldrsh	r1, [r5, r2]
	mov	r9, r1
	mov	r2, #0xe
	ldrsh	r1, [r5, r2]
	mov	r3, #0xc
	ldrsh	r0, [r5, r3]
	mov	r3, #8
	ldrsh	r7, [r5, r3]
	str	r1, [sp, #4]
	bl	Func_808d428
	cmp	r0, #0
	beq	.L8be90
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	lsl	r3, r1, #16
	cmp	r2, r3
	blt	.L8be90
	lsl	r3, r7, #16
	cmp	r2, r3
	bge	.L8be90
	ldr	r1, [sp, #0x10]
	lsl	r3, r6, #16
	cmp	r1, r3
	blt	.L8be90
	mov	r2, r10
	lsl	r3, r2, #16
	cmp	r1, r3
	bge	.L8be90
	mov	r1, r11
	ldr	r2, [sp, #8]
	lsl	r3, r1, #16
	cmp	r2, r3
	blt	.L8be90
	mov	r1, r9
	lsl	r3, r1, #16
	cmp	r2, r3
	bge	.L8be90
	ldr	r2, [sp]
	mov	r1, #0xb8
	lsl	r1, #1
	add	r3, r2, r1
	add	r2, sp, #4
	ldrh	r2, [r2]
	mov	r0, #0x7b
	strh	r2, [r3]
	bl	_PlaySound
	bl	ResetPlayerSpeed
	b	.L8bea4
.L8be90:
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	str	r3, [sp]
	add	r5, #0x10
	mov	r1, #1
	mov	r3, #0
	ldrsh	r6, [r5, r3]
	neg	r1, r1
	cmp	r6, r1
	bne	.L8be16
.L8bea4:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end CheckSpecialExits
