	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_FlagEditor  @ 0x080291e4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	mov	r3, #8
	str	r3, [sp, #4]
	add	r6, sp, #0xc
	mov	r5, #0
	mov	r3, #2
	str	r5, [sp, #0xc]
	mov	r2, #0x1c
	str	r5, [r6, #4]
	mov	r1, #0
	str	r3, [sp]
	mov	r0, #1
	mov	r3, #0x14
	bl	CreateUIBox
	ldr	r1, [sp, #4]
	mov	r5, r0
	bl	Func_80292c4
	add	r7, sp, #0x14
	add	r1, sp, #8
	mov	r0, r7
	bl	Func_801c0dc
	add	r3, sp, #4
	mov	r8, r3
	b	.L2923e
.L29220:
	cmp	r0, #1
	bne	.L2922c
	ldr	r1, [sp, #4]
	mov	r0, r5
	bl	Func_80292c4
.L2922c:
	ldr	r1, [sp, #0xc]
	ldr	r2, [r6, #4]
	lsl	r1, #3
	lsl	r2, #3
	add	r1, #0x3a
	add	r2, #0x14
	mov	r0, r7
	bl	Func_801c154
.L2923e:
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r5
	mov	r1, r8
	mov	r2, r6
	bl	Func_802938c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L29220
	ldr	r0, [sp, #8]
	bl	Func_801c17c
	mov	r0, r5
	mov	r1, #2
	bl	CloseUIBox
	mov	r0, #0
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_FlagEditor
