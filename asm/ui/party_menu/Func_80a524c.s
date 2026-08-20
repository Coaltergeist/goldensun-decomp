	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a524c  @ 0x080a524c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #3
	mov	r2, #0x11
	mov	r5, r0
	mov	r3, #0xa
	mov	r0, #0xd
	bl	_CreateUIBox
	ldr	r3, =0x1ff
	and	r5, r3
	mov	r7, r0
	mov	r0, r5
	bl	_GetItemInfo
	ldr	r3, =0x182
	add	r5, r3
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x18
	mov	r3, #0
	bl	_Func_801e7c0
	ldr	r5, =0xad4
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #1
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x18
	bl	_Func_801e7c0
	ldr	r5, =0xb2c
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x18
	mov	r3, #0x28
	add	r5, #1
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x18
	mov	r3, #0x38
	bl	_Func_801e7c0
	mov	r6, #1
	mov	r0, #0x68
	mov	r1, #0x56
	mov	r8, r6
	bl	Func_80a1ac0
	b	.La5306
.La52c8:
	lsl	r1, r6, #4
	add	r1, #0x46
	mov	r0, #0x68
	bl	Func_80a1a40
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.La52ea
	mov	r2, #1
	mov	r0, #0x6f
	sub	r6, #1
	mov	r8, r2
	bl	_PlaySound
.La52ea:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.La5300
	mov	r3, #1
	mov	r0, #0x6f
	add	r6, #1
	mov	r8, r3
	bl	_PlaySound
.La5300:
	mov	r0, #1
	bl	WaitFrames
.La5306:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La534c
	mov	r2, r8
	cmp	r2, #0
	beq	.La5326
	mov	r3, #0
	add	r0, r6, #2
	mov	r1, #2
	mov	r8, r3
	bl	__modsi3
	mov	r6, r0
.La5326:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La533a
	mov	r0, #0x70
	bl	_PlaySound
	b	.La534c
.La533a:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La52c8
	mov	r0, #0x71
	bl	_PlaySound
	mov	r6, #1
.La534c:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La535a
	mov	r6, #1
.La535a:
	mov	r0, r7
	mov	r1, #1
	bl	_CloseUIBox
	mov	r0, r6
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a524c

