	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a6a98  @ 0x080a6a98
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r2
	ldr	r3, =iwram_3001f2c
	ldr	r2, [r2, #8]
	mov	r1, r8
	ldr	r7, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, [r1, #0x10]
	add	r3, r2
	str	r3, [r1, #0x18]
	ldr	r0, =0x151
	sub	sp, #8
	bl	_GetFlag
	cmp	r0, #0
	bne	.La6af4
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	mov	r0, #1
	bl	WaitFrames
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	mov	r1, #0xe4
	lsl	r3, #1
	lsl	r1, #1
	add	r3, r1
	ldrh	r2, [r7, r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.La6afa
	ldr	r0, =0x1ff
	ldr	r3, =0x53a
	and	r0, r2
	add	r0, r3
	ldr	r1, [r7, #0x2c]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	b	.La6afa
.La6af4:
	ldr	r0, =0x2ff
	bl	_ClearFlag
.La6afa:
	mov	r2, #1
	mov	r6, #0
	mov	r10, r2
	mov	r5, #1
.La6b02:
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	cmp	r6, r3
	bne	.La6b20
	mov	r2, r10
	mov	r3, #0xe
	ldr	r0, [r7, #0x20]
	mov	r1, #0
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r5
	mov	r3, #0xf
	bl	Func_80a2268
	b	.La6b32
.La6b20:
	mov	r3, r10
	ldr	r0, [r7, #0x20]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, r5
	mov	r3, #0xf
	str	r3, [sp, #4]
	bl	Func_80a2268
.La6b32:
	add	r6, #1
	add	r5, #2
	cmp	r6, #4
	ble	.La6b02
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #1
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a6a98

