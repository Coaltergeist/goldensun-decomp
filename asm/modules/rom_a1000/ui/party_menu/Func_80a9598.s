	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a9598  @ 0x080a9598
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r9, r3
	ldr	r3, =0x21a
	add	r3, r9
	mov	r7, r0
	ldrb	r0, [r3]
	mov	r5, r2
	sub	sp, #4
	bl	_GetUnit
	mov	r3, #0x60
	str	r3, [sp]
	mov	r2, #8
	mov	r3, #0xe0
	mov	r11, r0
	mov	r1, #0x80
	mov	r0, r7
	bl	_Func_80164d4
	ldr	r2, [r5, #8]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r8, r3
	ldr	r3, [r5, #0x14]
	mov	r2, r8
	sub	r3, r2
	lsl	r3, #24
	lsr	r3, #24
	mov	r10, r3
	cmp	r3, #5
	bls	.La95ea
	mov	r3, #5
	mov	r10, r3
.La95ea:
	mov	r3, #0x34
	str	r3, [sp]
	mov	r0, #5
	mov	r1, r8
	mov	r2, r7
	mov	r3, #0x77
	bl	Func_80a2324
	mov	r2, #0x1c
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #0x14]
	mov	r0, r7
	str	r2, [sp]
	mov	r2, #5
	bl	Func_80a21b0
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.La9624
	ldr	r0, =0xad7
	mov	r1, r7
	mov	r2, #0x78
	mov	r3, #8
	bl	_Func_801e7c0
	b	.La965e
.La9624:
	mov	r2, r10
	mov	r6, #0
	cmp	r2, #0
	bls	.La965e
	mov	r2, r8
	lsl	r3, r2, #1
	mov	r2, #0xe4
	add	r3, r9
	lsl	r2, #1
	add	r5, r3, r2
	ldr	r3, =0x1ff
	mov	r8, r3
.La963c:
	ldrh	r3, [r5]
	mov	r0, r8
	and	r0, r3
	ldr	r3, =0x182
	add	r0, r3
	lsl	r3, r6, #4
	add	r3, #8
	mov	r1, r7
	mov	r2, #0x80
	bl	_Func_801e7c0
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	add	r5, #2
	cmp	r10, r6
	bhi	.La963c
.La965e:
	mov	r0, r11
	mov	r1, r7
	mov	r2, #0x28
	mov	r3, #0
	bl	_Func_801e8b0
	ldr	r5, =0xaf7
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0x10
	add	r5, #1
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x20
	mov	r3, #0x18
	bl	_Func_801e7c0
	mov	r2, r11
	mov	r3, #0x10
	ldrh	r0, [r2, #0x3c]
	mov	r1, #3
	str	r3, [sp]
	mov	r2, r7
	mov	r3, #0x50
	bl	_Func_801ea08
	mov	r3, r11
	ldrh	r0, [r3, #0x3e]
	mov	r3, #0x18
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r7
	mov	r3, #0x50
	bl	_Func_801ea08
	mov	r0, #1
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a9598

