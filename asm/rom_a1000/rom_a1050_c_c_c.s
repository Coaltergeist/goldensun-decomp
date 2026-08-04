	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a153c  @ 0x080a153c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r2, #0
	ldr	r0, =.Laf210
	mov	r3, #0x28
	mov	r6, r1
	bl	_Func_801e8b0
	ldr	r3, =.Laf214
	mov	r8, r3
	mov	r0, r8
	mov	r3, #0x28
	mov	r1, r6
	mov	r2, #0x30
	bl	_UIDrawText
	mov	r3, #0x34
	ldrsh	r5, [r7, r3]
	mov	r1, r6
	mov	r3, #0x28
	mov	r0, r5
	mov	r2, #0x58
	bl	Func_80a14f0
	mov	r3, #0x38
	ldrsh	r5, [r7, r3]
	ldrh	r3, [r7, #0x34]
	lsl	r3, #16
	asr	r3, #18
	cmp	r5, r3
	bge	.La1584
	mov	r0, #4
	bl	_SetTextColor
.La1584:
	cmp	r5, #0
	bne	.La158e
	mov	r0, #2
	bl	_SetTextColor
.La158e:
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0x30
	mov	r3, #0x28
	bl	Func_80a14f0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r1, r6
	ldr	r0, =.Laf218
	mov	r2, #0
	mov	r3, #0x30
	bl	_Func_801e8b0
	mov	r0, r8
	mov	r1, r6
	mov	r3, #0x30
	mov	r2, #0x30
	bl	_UIDrawText
	mov	r3, #0x3a
	ldrsh	r5, [r7, r3]
	mov	r1, r6
	mov	r0, r5
	mov	r3, #0x30
	mov	r2, #0x30
	bl	Func_80a14f0
	mov	r3, #0x36
	ldrsh	r5, [r7, r3]
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0x58
	mov	r3, #0x30
	bl	Func_80a14f0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a153c

.thumb_func_start Func_80a15f0  @ 0x080a15f0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r2
	mov	r5, r1
	mov	r8, r0
	mov	r1, r6
	ldr	r0, =0xb1c
	mov	r2, #0
	mov	r3, #0x20
	sub	sp, #4
	bl	_Func_801e7c0
	mov	r7, #0x28
	ldrh	r0, [r5, #0x3c]
	mov	r2, r6
	mov	r3, #0x10
	mov	r1, #3
	str	r7, [sp]
	bl	_Func_801e9d4
	mov	r3, r8
	ldrh	r2, [r3, #0x3c]
	ldrh	r3, [r5, #0x3c]
	cmp	r2, r3
	beq	.La1658
	mov	r0, r2
	mov	r3, #0x40
	mov	r2, r6
	mov	r1, #3
	str	r7, [sp]
	bl	_Func_801e9d4
	mov	r3, r8
	ldrh	r2, [r3, #0x3c]
	ldrh	r3, [r5, #0x3c]
	cmp	r2, r3
	bls	.La164c
	mov	r0, r6
	mov	r1, #0x2c
	mov	r2, #0x24
	mov	r3, #0
	bl	Func_80ae99c
	b	.La1658
.La164c:
	mov	r0, r6
	mov	r1, #0x2c
	mov	r2, #0x24
	mov	r3, #1
	bl	Func_80ae99c
.La1658:
	ldr	r0, =0xb1d
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x30
	bl	_Func_801e7c0
	mov	r7, #0x38
	ldrh	r0, [r5, #0x3e]
	mov	r2, r6
	mov	r3, #0x10
	mov	r1, #3
	str	r7, [sp]
	bl	_Func_801e9d4
	mov	r3, r8
	ldrh	r2, [r3, #0x3e]
	ldrh	r3, [r5, #0x3e]
	cmp	r2, r3
	beq	.La16b0
	mov	r0, r2
	mov	r3, #0x40
	mov	r2, r6
	mov	r1, #3
	str	r7, [sp]
	bl	_Func_801e9d4
	mov	r3, r8
	ldrh	r2, [r3, #0x3e]
	ldrh	r3, [r5, #0x3e]
	cmp	r2, r3
	bls	.La16a4
	mov	r0, r6
	mov	r1, #0x2c
	mov	r2, #0x34
	mov	r3, #0
	bl	Func_80ae99c
	b	.La16b0
.La16a4:
	mov	r0, r6
	mov	r1, #0x2c
	mov	r2, #0x34
	mov	r3, #1
	bl	Func_80ae99c
.La16b0:
	ldr	r0, =0xb20
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x40
	bl	_Func_801e7c0
	mov	r7, r5
	mov	r3, #0x48
	add	r7, #0x40
	mov	r5, r8
	ldrh	r0, [r7]
	mov	r2, r6
	str	r3, [sp]
	mov	r10, r3
	mov	r1, #3
	mov	r3, #0x10
	add	r5, #0x40
	bl	_Func_801e9d4
	ldrh	r2, [r5]
	ldrh	r3, [r7]
	cmp	r2, r3
	beq	.La1710
	mov	r3, r10
	mov	r0, r2
	str	r3, [sp]
	mov	r2, r6
	mov	r3, #0x40
	mov	r1, #3
	bl	_Func_801e9d4
	ldrh	r2, [r5]
	ldrh	r3, [r7]
	cmp	r2, r3
	bls	.La1704
	mov	r0, r6
	mov	r1, #0x2c
	mov	r2, #0x44
	mov	r3, #0
	bl	Func_80ae99c
	b	.La1710
.La1704:
	mov	r0, r6
	mov	r1, #0x2c
	mov	r2, #0x44
	mov	r3, #1
	bl	Func_80ae99c
.La1710:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a15f0

	.section .rodata
	.global .Laf20c

.Laf20c:
	.incrom 0xaf20c, 0xaf210
.Laf210:
	.incrom 0xaf210, 0xaf214
.Laf214:
	.incrom 0xaf214, 0xaf218
.Laf218:
	.incrom 0xaf218, 0xaf21c
