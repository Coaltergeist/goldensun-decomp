	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a8f40  @ 0x080a8f40
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, =0x21a
	add	r3, r11
	mov	r8, r0
	ldrb	r0, [r3]
	mov	r5, r2
	sub	sp, #8
	bl	_GetUnit
	str	r0, [sp, #4]
	mov	r0, r8
	bl	_Func_8016498
	ldr	r2, [r5, #8]
	lsl	r3, r2, #2
	add	r6, r3, r2
	ldr	r3, [r5, #0x14]
	sub	r3, r6
	lsl	r3, #24
	lsr	r3, #24
	mov	r9, r3
	cmp	r3, #5
	bls	.La8f84
	mov	r1, #5
	mov	r9, r1
.La8f84:
	mov	r3, #0x3a
	str	r3, [sp]
	mov	r0, #5
	mov	r1, r6
	mov	r2, r8
	mov	r3, #0x50
	bl	Func_80a2324
	mov	r2, #0x1c
	ldr	r1, [r5, #0x14]
	ldr	r3, [r5, #8]
	mov	r0, r8
	str	r2, [sp]
	mov	r2, #5
	bl	Func_80a21b0
	mov	r2, #0xb0
	mov	r3, #0
	ldr	r0, =0xaed
	mov	r1, r8
	bl	_Func_801e7c0
	mov	r2, #0
	mov	r3, r9
	mov	r10, r2
	cmp	r3, #0
	bls	.La902a
	mov	r1, #0xe4
	lsl	r3, r6, #1
	lsl	r1, #1
	add	r7, r3, r1
.La8fc2:
	mov	r2, r11
	ldrh	r3, [r7, r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	mov	r1, r11
	ldrh	r3, [r7, r1]
	mov	r6, r0
	ldr	r0, =0x3fff
	mov	r2, r10
	and	r0, r3
	lsl	r5, r2, #4
	ldr	r3, =0x333
	add	r5, #0x10
	add	r0, r3
	mov	r1, r8
	mov	r2, #0x58
	mov	r3, r5
	bl	_Func_801e7c0
	ldrb	r0, [r6, #9]
	mov	r1, #2
	mov	r2, r8
	mov	r3, #0xb0
	str	r5, [sp]
	bl	_Func_801e9d4
	ldrb	r4, [r6, #8]
	cmp	r4, #0xff
	bne	.La9004
	mov	r4, #0xb
	b	.La9006
.La9004:
	sub	r4, #1
.La9006:
	mov	r3, r10
	lsl	r2, r3, #1
	mov	r3, #0
	str	r3, [sp]
	add	r2, #2
	mov	r3, r4
	mov	r0, r8
	mov	r1, #0x19
	bl	Func_80a8cc0
	mov	r3, r10
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r10, r3
	add	r7, #2
	cmp	r9, r10
	bhi	.La8fc2
.La902a:
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.La9042
	ldr	r0, =0xaef
	mov	r1, r8
	mov	r2, #0x60
	mov	r3, #0x11
	bl	_Func_801e7c0
.La9042:
	ldr	r0, [sp, #4]
	mov	r1, r8
	mov	r2, #0x28
	mov	r3, #0
	bl	_Func_801e8b0
	ldr	r2, =0x129
	ldr	r1, [sp, #4]
	add	r3, r1, r2
	ldrb	r0, [r3]
	ldr	r3, =0x741
	mov	r1, r8
	add	r0, r3
	mov	r2, #0
	mov	r3, #0x20
	bl	_Func_801e7c0
	mov	r1, r8
	ldr	r0, =.Laf22c
	mov	r2, #0
	mov	r3, #0x30
	bl	_UIDrawText
	ldr	r3, [sp, #4]
	ldrb	r0, [r3, #0xf]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #2
	mov	r2, r8
	mov	r3, #0x18
	bl	_Func_801ea08
	mov	r0, #1
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a8f40

