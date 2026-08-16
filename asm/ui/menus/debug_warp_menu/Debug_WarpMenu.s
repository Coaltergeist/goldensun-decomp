	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_WarpMenu  @ 0x08028f98
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x18
	add	r1, sp, #8
	mov	r9, r1
	mov	r7, #0
	mov	r2, r9
	strh	r7, [r2]
	mov	r1, #0xe4
	ldr	r2, =gState
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	mov	r1, #0xe5
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0xa
	add	r1, sp
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r10, r1
	mov	r2, r10
	strh	r3, [r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r3, #5
	mov	r2, #0x1e
	mov	r0, #0
	bl	CreateUIBox
	mov	r2, r10
	mov	r1, r6
	mov	r7, r0
	bl	Func_8028ef0
	add	r3, sp, #0xc
	mov	r8, r3
	add	r1, sp, #4
	mov	r0, r8
	bl	Func_801c0dc
	ldr	r2, =gKeyHeld
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L2900a
	mov	r5, r2
.L28ffe:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L28ffe
.L2900a:
	mov	r1, r6
	mov	r0, r7
	mov	r2, r10
	mov	r3, r9
	bl	Debug_WarpMenu_UI
	mov	r1, #1
	lsl	r0, #16
	asr	r5, r0, #16
	neg	r1, r1
	cmp	r5, r1
	bne	.L29040
	ldr	r0, [sp, #4]
	bl	Func_801c17c
	mov	r0, r7
	mov	r1, #2
	bl	CloseUIBox
	mov	r3, r10
	mov	r0, r6
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_SetDestMap
	mov	r0, r5
	b	.L2907a
.L29040:
	mov	r1, #2
	neg	r1, r1
	cmp	r5, r1
	bne	.L2905a
	ldr	r0, [sp, #4]
	bl	Func_801c17c
	mov	r0, r7
	mov	r1, #2
	bl	CloseUIBox
	mov	r0, r5
	b	.L2907a
.L2905a:
	mov	r1, r9
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	lsl	r2, r3, #3
	sub	r2, r3
	lsl	r2, #1
	mov	r0, r8
	add	r2, #0x3c
	mov	r1, #0x4a
	bl	Func_801c154
	mov	r0, #1
	mov	r6, r5
	bl	WaitFrames
	b	.L2900a
.L2907a:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_WarpMenu
