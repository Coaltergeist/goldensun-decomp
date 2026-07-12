	.include "macros.inc"
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
