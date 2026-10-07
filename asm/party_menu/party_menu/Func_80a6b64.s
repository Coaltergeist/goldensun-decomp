	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a6b64  @ 0x080a6b64
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #4
	mov	r10, r3
	mov	r8, r0
	mov	r6, r2
	bl	_Func_8016498
	mov	r3, #0xb
	str	r3, [sp]
	mov	r2, #0xb
	mov	r3, #0x10
	mov	r0, r8
	mov	r1, #0
	bl	_Func_801e41c
	mov	r3, #0x88
	lsl	r3, #2
	add	r3, r10
	ldrh	r2, [r3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La6bb0
	ldr	r0, =0xae1
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0x58
	bl	_Func_801e7c0
	b	.La6bbc
.La6bb0:
	ldr	r0, =0xb89
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0x58
	bl	_Func_801e7c0
.La6bbc:
	ldr	r2, [r6, #8]
	lsl	r3, r2, #2
	add	r5, r3, r2
	ldr	r3, [r6, #0x14]
	sub	r3, r5
	lsl	r3, #24
	lsr	r3, #24
	mov	r11, r3
	cmp	r3, #5
	bls	.La6bd4
	mov	r1, #5
	mov	r11, r1
.La6bd4:
	mov	r3, #0x22
	str	r3, [sp]
	mov	r0, #5
	mov	r1, r5
	mov	r2, r8
	mov	r3, #0x70
	bl	Func_80a2324
	mov	r2, #0xf
	ldr	r1, [r6, #0x14]
	ldr	r3, [r6, #8]
	mov	r0, r8
	str	r2, [sp]
	mov	r2, #5
	bl	Func_80a21b0
	mov	r2, #0x60
	mov	r3, #0
	ldr	r0, =0xaed
	mov	r1, r8
	bl	_Func_801e7c0
	mov	r2, #0
	mov	r3, r11
	mov	r9, r2
	cmp	r3, #0
	bls	.La6c9c
	mov	r1, #0xe4
	lsl	r3, r5, #1
	lsl	r1, #1
	add	r6, r3, r1
.La6c12:
	ldr	r3, =0x21a
	add	r3, r10
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r2, r10
	ldrh	r3, [r6, r2]
	mov	r5, r0
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	mov	r7, r0
	ldrb	r2, [r7, #9]
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	ble	.La6c3e
	mov	r0, #2
	bl	_SetTextColor
	b	.La6c5c
.La6c3e:
	mov	r2, r10
	ldrh	r3, [r6, r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	Func_80a735c
	cmp	r0, #0
	beq	.La6c56
	mov	r0, #4
	bl	_SetTextColor
	b	.La6c5c
.La6c56:
	mov	r0, #0xf
	bl	_SetTextColor
.La6c5c:
	mov	r1, r10
	ldrh	r3, [r6, r1]
	ldr	r0, =0x3fff
	mov	r2, r9
	and	r0, r3
	lsl	r5, r2, #4
	ldr	r3, =0x333
	add	r5, #8
	add	r0, r3
	mov	r1, r8
	mov	r2, #0x10
	mov	r3, r5
	bl	_Func_801e7c0
	ldrb	r0, [r7, #9]
	mov	r3, #0x68
	mov	r1, #2
	mov	r2, r8
	str	r5, [sp]
	bl	_Func_801e9d4
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, r9
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r9, r3
	add	r6, #2
	cmp	r11, r9
	bhi	.La6c12
.La6c9c:
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
.func_end Func_80a6b64

