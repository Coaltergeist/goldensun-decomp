	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a5388  @ 0x080a5388
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	sub	sp, #0xc
	mov	r8, r3
	mov	r3, #1
	str	r3, [sp, #8]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	ldr	r6, =0x21b
	mov	r9, r3
	add	r6, r9
	ldrb	r0, [r6]
	bl	_GetUnit
	mov	r3, #0xbb
	str	r0, [sp, #4]
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	mov	r10, r3
	ldrb	r3, [r6]
	mov	r5, #0xa6
	mov	r0, r3
	mov	r2, #0
	lsl	r5, #1
	bl	Func_80a3ef0
	mov	r0, r5
	bl	alloc_iwram
	ldr	r3, =Func_8001af8
	ldr	r1, [sp, #4]
	mov	r2, r5
	mov	r11, r0
	bl	_call_via_r3
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r7, [r3]
	mov	r3, r10
	ldrb	r0, [r6]
	ldrh	r1, [r3]
	bl	_EquipItem
	add	r0, #2
	cmp	r0, #1
	bhi	.La53fe
	b	.La54c6
.La53f6:
	mov	r0, #0xaf
	bl	_PlaySound
	b	.La54ca
.La53fe:
	ldr	r5, =0xb2c
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x18
	mov	r3, #0x18
	add	r5, #1
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x48
	mov	r3, #0x18
	bl	_Func_801e7c0
	mov	r3, #0x18
	str	r3, [sp]
	mov	r0, r7
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #0x60
	bl	_Func_80164d4
	mov	r1, r7
	ldr	r0, =0xad6
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_801e7c0
	mov	r0, #0x6e
	mov	r1, #0x20
	bl	Func_80a1ac0
	b	.La5488
.La5440:
	mov	r3, r8
	lsl	r0, r3, #1
	add	r0, r8
	lsl	r0, #4
	add	r0, #0x6e
	mov	r1, #0x20
	bl	Func_80a1a40
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La546c
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r0, #0x6f
	mov	r3, #1
	str	r3, [sp, #8]
	bl	_PlaySound
.La546c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La5482
	mov	r3, #1
	mov	r0, #0x6f
	add	r8, r3
	str	r3, [sp, #8]
	bl	_PlaySound
.La5482:
	mov	r0, #1
	bl	WaitFrames
.La5488:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La54ca
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.La54aa
	mov	r0, r8
	mov	r3, #0
	add	r0, #2
	mov	r1, #2
	str	r3, [sp, #8]
	bl	__modsi3
	mov	r8, r0
.La54aa:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.La53f6
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La5440
	mov	r0, #0x71
	bl	_PlaySound
.La54c6:
	mov	r3, #1
	mov	r8, r3
.La54ca:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La54da
	mov	r3, #1
	mov	r8, r3
.La54da:
	mov	r3, r8
	cmp	r3, #1
	bne	.La54ee
	mov	r2, #0xa6
	ldr	r3, =Func_8001af8
	ldr	r0, [sp, #4]
	mov	r1, r11
	lsl	r2, #1
	bl	_call_via_r3
.La54ee:
	ldr	r5, =0x21b
	mov	r0, r11
	add	r5, r9
	bl	free
	ldrb	r0, [r5]
	bl	_CalcStats
	ldrb	r0, [r5]
	bl	_Func_8078bf0
	mov	r0, r8
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5388

	.section .rodata.rom_a4f08
.Laf08c:
	.incrom 0xaf08c, 0xaf20c
