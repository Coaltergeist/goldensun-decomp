	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SystemMsgBox  @ 0x080208e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	mov	r5, r0
	mov	r8, r1
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L2090c
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r2, #9
	neg	r2, r2
	mov	r8, r2
	b	.L20978
.L2090c:
	bl	Func_8005c68
	ldr	r3, =ewram_2002004
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, r5
	mov	r10, r3
	bl	Func_8020244
	mov	r2, #1
	mov	r7, r0
	neg	r2, r2
	cmp	r7, r2
	bne	.L2092c
	mov	r8, r7
	b	.L20978
.L2092c:
	ldr	r5, =ewram_2000000
	mov	r0, r7
	mov	r1, r5
	bl	Func_8005a78
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	mov	r6, r0
	mov	r1, r5
	add	r0, r7, #3
	bl	Func_8005a78
	orr	r6, r0
	cmp	r6, #0
	beq	.L2095c
	mov	r1, #1
	ldr	r0, =_MSG_0c
	bl	Func_801776c
	mov	r1, #2
	neg	r1, r1
	mov	r8, r1
	b	.L20978
.L2095c:
	ldr	r3, =gState
	ldr	r1, =iwram_3001c9c
	ldr	r2, [r3, #4]
	str	r2, [r1]
	ldr	r1, =0x22a
	add	r3, r1
	ldrb	r3, [r3]
	ldr	r2, =iwram_3001d08
	strb	r3, [r2]
	ldr	r3, =iwram_3001d24
	mov	r2, r8
	strh	r2, [r3]
	mov	r3, r10
	strh	r7, [r3]
.L20978:
	bl	Func_8005cf8
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SystemMsgBox
