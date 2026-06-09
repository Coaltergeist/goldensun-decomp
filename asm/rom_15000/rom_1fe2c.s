	.include "macros.inc"

.thumb_func_start Func_801fe2c  @ 0x0801fe2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r2, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r10, r3
	ldr	r3, =iwram_3001f2c
	mov	r2, #0
	ldr	r1, [r3]
	str	r2, [sp, #4]
	mov	r3, #0x2c
	mov	r2, r10
	ldrsb	r3, [r2, r3]
	mov	r2, #1
	neg	r2, r2
	mov	r9, r0
	cmp	r3, r2
	beq	.L1feee
	mov	r3, r10
	add	r3, #0x33
	mov	r2, #0x9a
	lsl	r2, #1
	str	r3, [sp]
	mov	r3, #0
	add	r7, r1, r2
	mov	r11, r3
	sub	r2, #0x20
	mov	r3, #0x2c
	add	r6, r1, r2
	mov	r8, r3
.L1fe72:
	ldr	r3, [sp]
	mov	r2, r10
	mov	r1, r8
	ldrsb	r0, [r1, r2]
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	bl	_Func_808b3d0
	bl	_CreateSprite
	mov	r5, r0
	cmp	r5, #0
	beq	.L1fea6
	mov	r1, #1
	bl	_Sprite_SetAnim
	mov	r2, r5
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0xd
	ldrb	r3, [r5, #9]
	neg	r1, r1
	mov	r2, r1
	and	r3, r2
	strb	r3, [r5, #9]
.L1fea6:
	str	r5, [r6]
	mov	r2, r9
	ldr	r1, [sp, #0xc]
	ldrh	r3, [r2, #0xc]
	add	r3, r1, r3
	add	r3, r11
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r7]
	ldrh	r3, [r2, #0xe]
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x40]
	ldr	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #3
	add	r2, #1
	add	r8, r3
	add	r7, #2
	add	r11, r1
	add	r6, #4
	str	r2, [sp, #4]
	cmp	r2, #3
	bgt	.L1feee
	mov	r1, r8
	mov	r2, r10
	ldrsb	r3, [r1, r2]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.L1fe72
.L1feee:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_801ff58
	bl	StartTask
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801fe2c

.thumb_func_start Func_801ff14  @ 0x0801ff14
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r0, =Func_801ff58
	ldr	r7, [r3]
	mov	r5, #0x8a
	bl	StopTask
	mov	r3, #0
	mov	r8, r3
	lsl	r5, #1
	mov	r6, #3
.L1ff2e:
	ldr	r0, [r5, r7]
	cmp	r0, #0
	beq	.L1ff3c
	bl	_DeleteSprite
	mov	r3, r8
	str	r3, [r5, r7]
.L1ff3c:
	sub	r6, #1
	add	r5, #4
	cmp	r6, #0
	bge	.L1ff2e
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ff14

.thumb_func_start Func_801ff58  @ 0x0801ff58
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0
	ldr	r3, =iwram_3001f2c
	mov	r8, r2
	mov	r2, #0xfa
	lsl	r2, #17
	ldr	r3, [r3]
	mov	r10, r2
	mov	r2, #0x9a
	lsl	r2, #1
	sub	sp, #0x1c
	add	r7, r3, r2
	sub	r2, #0x20
	add	r4, sp, #4
	add	r6, sp, #0xc
	add	r5, r3, r2
.L1ff7e:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L1ffb6
	ldr	r3, [r5, #0x40]
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x40]
	str	r3, [r4, #4]
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	str	r3, [r6]
	mov	r3, r10
	str	r3, [r6, #4]
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r6, #8]
	mov	r3, #0
	str	r3, [r6, #0xc]
	mov	r3, #0x80
	mov	r2, r4
	mov	r1, r6
	lsl	r3, #7
	str	r4, [sp]
	bl	_UpdateSprite
	ldr	r4, [sp]
.L1ffb6:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	add	r7, #2
	add	r5, #4
	cmp	r2, #3
	ble	.L1ff7e
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ff58

.thumb_func_start Func_801ffd8  @ 0x0801ffd8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #4
	mov	r8, r0
	mov	r11, r1
	mov	r9, r2
	ldr	r3, [r3]
	cmp	r0, #0
	beq	.L20068
	mov	r1, #0x8d
	lsl	r1, #2
	add	r6, r3, r1
	sub	r1, #0x10
	add	r1, r3, r1
	mov	r2, #0
	str	r1, [sp]
	mov	r7, #0
	mov	r10, r2
.L20008:
	ldr	r3, =.L73854
	lsl	r2, r7, #2
	ldr	r0, [r3, r2]
	bl	_CreateSprite
	mov	r5, r0
	cmp	r5, #0
	beq	.L20032
	mov	r1, #2
	bl	_Sprite_SetAnim
	mov	r2, r5
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0xd
	ldrb	r3, [r5, #9]
	neg	r1, r1
	mov	r2, r1
	and	r3, r2
	strb	r3, [r5, #9]
.L20032:
	ldr	r3, [sp]
	stmia	r3!, {r5}
	mov	r2, r3
	str	r2, [sp]
	mov	r1, r8
	ldrh	r3, [r1, #0xc]
	add	r3, r11
	add	r3, r10
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r6]
	ldrh	r3, [r1, #0xe]
	add	r3, r9
	lsl	r3, #3
	add	r3, #0x10
	mov	r2, #3
	add	r7, #1
	strh	r3, [r6, #8]
	add	r10, r2
	add	r6, #2
	cmp	r7, #3
	ble	.L20008
	mov	r1, #0xc8
	ldr	r0, =Func_80200cc
	lsl	r1, #4
	bl	StartTask
.L20068:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ffd8

.thumb_func_start Func_8020088  @ 0x08020088
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r0, =Func_80200cc
	ldr	r7, [r3]
	mov	r5, #0x89
	bl	StopTask
	mov	r3, #0
	mov	r8, r3
	lsl	r5, #2
	mov	r6, #3
.L200a2:
	ldr	r0, [r5, r7]
	cmp	r0, #0
	beq	.L200b0
	bl	_DeleteSprite
	mov	r3, r8
	str	r3, [r5, r7]
.L200b0:
	sub	r6, #1
	add	r5, #4
	cmp	r6, #0
	bge	.L200a2
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8020088

.thumb_func_start Func_80200cc  @ 0x080200cc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r2, #0
	mov	r8, r2
	mov	r2, #0x80
	lsl	r2, #9
	ldr	r3, =iwram_3001f2c
	mov	r9, r2
	mov	r2, #0xfa
	lsl	r2, #17
	ldr	r3, [r3]
	mov	r10, r2
	mov	r2, #0x8d
	lsl	r2, #2
	sub	sp, #0x1c
	add	r6, r3, r2
	sub	r2, #0x10
	add	r4, sp, #4
	add	r5, sp, #0xc
	add	r7, r3, r2
.L200fa:
	ldmia	r7!, {r0}
	cmp	r0, #0
	beq	.L20130
	mov	r3, r9
	str	r3, [sp, #4]
	str	r3, [r4, #4]
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	lsl	r3, #16
	str	r3, [r5]
	mov	r3, r10
	str	r3, [r5, #4]
	mov	r2, #8
	ldrsh	r3, [r6, r2]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0
	str	r3, [r5, #0xc]
	mov	r3, #0x80
	mov	r2, r4
	mov	r1, r5
	lsl	r3, #7
	str	r4, [sp]
	bl	_UpdateSprite
	ldr	r4, [sp]
.L20130:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	add	r6, #2
	cmp	r2, #3
	ble	.L200fa
	add	sp, #0x1c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80200cc

.thumb_func_start Func_8020150  @ 0x08020150
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	sub	sp, #8
	cmp	r7, #0
	beq	.L2018c
	mov	r3, #0x10
	mov	r5, r1
	mov	r4, #0
	mov	r8, r3
	mov	r6, #3
	add	r5, #0x28
.L2016a:
	ldrb	r0, [r5]
	mov	r3, r8
	lsl	r0, #24
	str	r3, [sp]
	asr	r0, #24
	mov	r3, r4
	mov	r1, #2
	mov	r2, r7
	str	r4, [sp, #4]
	bl	Func_801e9d4
	ldr	r4, [sp, #4]
	sub	r6, #1
	add	r5, #1
	add	r4, #0x18
	cmp	r6, #0
	bge	.L2016a
.L2018c:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8020150

	.section .rodata

.L73854:
	.incrom 0x73854, 0x73864
