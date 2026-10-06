	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2328  @ 0x080b2328
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r1, [sp, #0xc]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r7, r0
	str	r3, [sp, #8]
	bl	_GetUnit
	ldr	r2, [sp, #0xc]
	lsl	r2, #1
	str	r2, [sp, #4]
	mov	r6, r2
	add	r6, #0xd8
	ldrh	r3, [r0, r6]
	ldr	r2, =0x1ff
	and	r2, r3
	mov	r10, r2
	mov	r8, r0
	mov	r0, r10
	bl	_GetItemInfo
	mov	r5, r0
	ldrb	r1, [r5, #2]
	mov	r0, r7
	bl	_GetEquippedItem
	str	r0, [sp]
	mov	r3, r8
	ldrh	r0, [r3, r6]
	bl	Func_80b20e8
	ldrb	r1, [r5, #0xc]
	mov	r9, r0
	cmp	r1, #2
	beq	.Lb238c
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0xcba
	bl	Func_80b0574
	b	.Lb24b0
.Lb238c:
	mov	r3, r8
	ldrh	r2, [r3, r6]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lb23aa
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0xcbb
	bl	Func_80b0574
	b	.Lb24b0
.Lb23aa:
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb23cc
	ldrb	r3, [r5, #3]
	and	r3, r1
	cmp	r3, #0
	beq	.Lb23cc
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0xcbc
	bl	Func_80b0574
	b	.Lb24b0
.Lb23cc:
	ldr	r3, =gState
	ldr	r3, [r3, #0x10]
	cmp	r9, r3
	bls	.Lb23dc
	ldr	r0, =0xcbd
	bl	Func_80b0574
	b	.Lb24b0
.Lb23dc:
	mov	r0, r10
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r9
	mov	r1, #5
	bl	_Func_8019908
	ldr	r2, =0xcbe
	mov	r11, r2
	mov	r0, r11
	bl	Func_80b0574
	mov	r0, #0
	bl	Func_80b0634
	cmp	r0, #0
	beq	.Lb240a
	mov	r0, r11
	add	r0, #1
	bl	Func_80b0574
	b	.Lb24b0
.Lb240a:
	ldr	r5, [sp, #4]
	mov	r2, r8
	add	r5, #0xd8
	mov	r3, r8
	ldrh	r6, [r3, r5]
	strh	r0, [r2, r5]
	ldr	r3, [sp, #8]
	mov	r1, r7
	ldr	r0, [r3, #0x20]
	bl	Func_80b1dec
	mov	r1, #2
	mov	r0, r10
	bl	_Func_8019908
	mov	r0, r11
	add	r0, #2
	bl	Func_80b0574
	bl	_Func_8019a54
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, #0x64
	bl	_PlaySound
	mov	r0, #0x6e
	bl	WaitFrames
	mov	r0, #0x64
	bl	_PlaySound
	mov	r0, #0x6e
	bl	WaitFrames
	mov	r0, #0x64
	bl	_PlaySound
	mov	r0, #0x6e
	bl	WaitFrames
	mov	r0, #0x70
	bl	_PlaySound
	mov	r0, #0x14
	bl	WaitFrames
	mov	r2, r8
	strh	r6, [r2, r5]
	ldr	r1, [sp, #0xc]
	mov	r0, r7
	bl	_RepairItem
	mov	r3, r9
	neg	r0, r3
	bl	_AddCoins
	bl	Func_80b10cc
	ldr	r2, [sp, #8]
	mov	r1, r7
	ldr	r0, [r2, #0x20]
	bl	Func_80b1dec
	mov	r1, #2
	mov	r0, r10
	bl	_Func_8019908
	mov	r0, r11
	add	r0, #3
	bl	Func_80b0574
	mov	r0, r7
	ldr	r1, [sp, #0xc]
	bl	Func_80b1868
	cmp	r0, #0
	beq	.Lb24b0
	mov	r0, r7
	ldr	r1, [sp]
	bl	Func_80b196c
.Lb24b0:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2328

