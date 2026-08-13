	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8026fa8  @ 0x08026fa8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e74
	ldr	r1, =0x22b
	ldr	r2, [r3]
	ldr	r3, =gState
	add	r3, r1
	ldrb	r3, [r3]
	sub	sp, #0x84
	cmp	r3, #2
	beq	.L26fce
	cmp	r3, #2
	ble	.L26fce
	mov	r1, #1
	mov	r8, r1
	cmp	r3, #4
	ble	.L26fd2
.L26fce:
	mov	r3, #0
	mov	r8, r3
.L26fd2:
	mov	r1, r8
	cmp	r1, #0
	bne	.L26ff0
	mov	r3, r2
	add	r3, #0x43
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L26fea
	mov	r3, #1
	mov	r8, r3
.L26fea:
	mov	r1, r8
	cmp	r1, #0
	beq	.L27042
.L26ff0:
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r3, #4
	mov	r1, #7
	mov	r2, #0x1e
	mov	r0, #0
	bl	CreateUIBox
	mov	r10, r0
	bl	Func_8016738
	add	r5, sp, #4
	mov	r1, r5
	mov	r2, #0x34
	ldr	r0, =0x845
	bl	Func_801965c
	mov	r0, r5
	mov	r1, r10
	mov	r2, #0
	mov	r3, #4
	bl	Func_8017aa4
	ldr	r7, =gKeyPress
	ldr	r5, =iwram_3001f34
	mov	r6, #3
.L27024:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r7]
	and	r3, r6
	cmp	r3, #0
	bne	.L2703a
	ldr	r3, [r5]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	bne	.L27024
.L2703a:
	mov	r0, r10
	mov	r1, #1
	bl	CloseUIBox
.L27042:
	mov	r0, r8
	add	sp, #0x84
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8026fa8
