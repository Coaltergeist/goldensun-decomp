	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a7d68  @ 0x080a7d68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r0, #0x1c
	ldrsb	r0, [r7, r0]
	sub	sp, #8
	mov	r2, #1
	mov	r8, r0
	mov	r0, #0x88
	mov	r1, #0x1e
	ldrsb	r1, [r7, r1]
	lsl	r0, #2
	str	r2, [sp, #4]
	add	r3, r7, r0
	ldrh	r3, [r3]
	mov	r9, r1
	mov	r1, r8
	str	r3, [sp]
	lsl	r1, #1
	mov	r3, #0x82
	mov	r10, r1
	lsl	r3, #2
	add	r3, r10
	ldrh	r0, [r7, r3]
	bl	_GetUnit
	mov	r2, #0x86
	lsl	r2, #1
	add	r6, r7, r2
	ldr	r0, [r6]
	bl	_Func_8016498
	ldr	r5, =0xc05
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	add	r5, #1
	bl	_Func_801e7c0
	mov	r3, #0x10
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r3, #0xe4
	lsl	r3, #1
	add	r3, r7
	mov	r11, r3
.La7dd8:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.La7e84
	mov	r1, #0
	mov	r0, r8
	str	r1, [sp, #4]
	add	r0, r9
	mov	r1, r9
	bl	__modsi3
	mov	r8, r0
	mov	r2, r8
	lsl	r2, #1
	mov	r5, #0x82
	mov	r10, r2
	lsl	r5, #2
	add	r5, r10
	ldrh	r0, [r7, r5]
	bl	_GetUnit
	ldr	r0, [sp]
	mov	r1, #3
	add	r0, #3
	bl	__modsi3
	str	r0, [sp]
	ldr	r1, [sp]
	ldrh	r0, [r7, r5]
	bl	Func_80a8088
	ldrh	r1, [r7, r5]
	mov	r0, r7
	bl	Func_80a1804
	mov	r0, #0xa9
	lsl	r0, #1
	ldr	r1, .La7e58	@ 0x1e
	mov	r6, r10
	mov	r2, #7
	add	r3, r7, r0
.La7e28:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7e28
	mov	r1, #0xa2
	lsl	r1, #1
	ldr	r3, .La7e5c	@ 0x1a
	add	r2, r6, r1
	strh	r3, [r7, r2]
	mov	r2, #0x82
	lsl	r2, #2
	add	r3, r6, r2
	ldrh	r0, [r7, r3]
	bl	_GetUnit
	mov	r2, #0
	mov	r1, r11
	bl	Func_80a68ec
	mov	r1, #0x86
	lsl	r1, #2
	b	.La7e68

	.align	2, 0
.La7e58:
	.word	0x1e
.La7e5c:
	.word	0x1a
	.pool

.La7e68:
	add	r3, r7, r1
	strb	r0, [r3]
	mov	r0, r11
	bl	Func_80a68a8
	mov	r0, #0x60
	mov	r1, #0x60
	mov	r2, #8
	bl	Func_80a9b94
	mov	r0, r11
	bl	Func_80a3d24
	b	.La7e8a
.La7e84:
	mov	r2, r8
	lsl	r2, #1
	mov	r10, r2
.La7e8a:
	mov	r0, r10
	add	r0, r8
	lsl	r0, #3
	mov	r1, #0x10
	sub	r0, #0xa
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La7eb4
	mov	r0, #0x70
	bl	_PlaySound
	mov	r0, #1
	b	.La7f0e
.La7eb4:
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La7eca
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, #1
	neg	r0, r0
	b	.La7f0e
.La7eca:
	ldr	r5, =gKeyRepeat
	ldr	r2, [r5]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.La7eec
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, r9
	cmp	r3, #1
	ble	.La7eec
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	str	r1, [sp, #4]
	add	r8, r0
.La7eec:
	ldr	r2, [r5]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	bne	.La7ef8
	b	.La7dd8
.La7ef8:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, r9
	cmp	r2, #1
	bgt	.La7f06
	b	.La7dd8
.La7f06:
	mov	r3, #1
	add	r8, r3
	str	r3, [sp, #4]
	b	.La7dd8
.La7f0e:
	mov	r1, r8
	mov	r2, #0x82
	strb	r1, [r7, #0x1c]
	lsl	r2, #2
	add	r2, r10
	ldrh	r3, [r7, r2]
	str	r3, [r7, #8]
	ldr	r1, =0x21a
	ldrh	r2, [r7, r2]
	add	r3, r7, r1
	strb	r2, [r3]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a7d68

