	.include "macros.inc"

.thumb_func_start Func_801c304  @ 0x0801c304
	push	{r5, lr}
	ldr	r3, =iwram_3001e98
	ldr	r1, =0x39e
	ldr	r3, [r3]
	add	r2, r3, r1
	strh	r0, [r2]
	mov	r2, #0xee
	lsl	r2, #2
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	Func_801a7f4
	bl	Func_801b228
	mov	r1, #5
	mov	r0, #0
	bl	Func_801b010
	bl	Func_801a968
	mov	r0, #1
	bl	Func_801b424
	mov	r5, r0
	bl	Func_801b148
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_801c304

.thumb_func_start Func_801c34c  @ 0x0801c34c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	sub	sp, #0x14
	ldr	r6, [r3]
	ldr	r2, =gState
	mov	r3, #8
	mov	r1, #0xe0
	str	r3, [sp, #0x10]
	str	r3, [sp, #0xc]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_GetLocationName
	ldr	r3, =0x99b
	mov	r5, r0
	add	r5, r3
	add	r0, sp, #4
	add	r1, sp, #0x10
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r0, [sp]
	mov	r0, r5
	bl	TextBox
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0xa
	sub	r0, r2
	sub	r1, r3
	mov	r4, #2
	asr	r1, #1
	asr	r0, #1
	str	r1, [sp, #0xc]
	str	r4, [sp]
	str	r0, [sp, #0x10]
	bl	CreateUIBox
	mov	r2, #0x8c
	lsl	r2, #2
	mov	r1, r0
	add	r3, r6, r2
	str	r1, [r3]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	DrawSmallText
	mov	r3, #0x8d
	lsl	r3, #2
	add	r2, r6, r3
	mov	r1, #0xc8
	mov	r3, #0x5a
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_801c3e8
	bl	StartTask
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801c34c

