	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_FaceTest  @ 0x0802977c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	sub	sp, #0x18
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r1, #0
	mov	r2, #0xa
	mov	r11, r3
	mov	r0, #0
	mov	r3, #5
	bl	Func_8019da8
	mov	r3, #2
	mov	r2, #0xe
	str	r0, [sp, #0xc]
	str	r3, [sp]
	mov	r1, #0xa
	mov	r3, #3
	mov	r0, #0xa
	bl	CreateUIBox
	mov	r7, r0
	ldr	r0, =Data_367e4
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	mov	r2, #1
	neg	r2, r2
	mov	r1, #0
	cmp	r3, r2
	beq	.L297d6
	mov	r12, r2
	mov	r2, r0
.L297ca:
	add	r2, #4
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	add	r1, #1
	cmp	r3, r12
	bne	.L297ca
.L297d6:
	ldr	r0, =Data_3680c
	mov	r8, r1
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	beq	.L297f6
	mov	r12, r2
	mov	r2, r0
.L297ea:
	add	r2, #4
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	add	r1, #1
	cmp	r3, r12
	bne	.L297ea
.L297f6:
	add	r1, r8
	mov	r10, r1
	ldr	r6, =gKeyRepeat
	mov	r1, #2
	mov	r9, r1
.L29800:
	ldr	r3, [r6]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L29810
	mov	r2, #1
	str	r2, [sp, #8]
	sub	r5, #1
.L29810:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L29820
	mov	r3, #1
	str	r3, [sp, #8]
	add	r5, #1
.L29820:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L29832
	mov	r0, #1
	str	r0, [sp, #8]
	sub	r5, #0xa
.L29832:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L29844
	mov	r1, #1
	str	r1, [sp, #8]
	add	r5, #0xa
.L29844:
	ldr	r3, [r6]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L298ce
	ldr	r3, [r6]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	bne	.L298ce
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L298c6
	mov	r0, #0
	mov	r1, r10
	str	r0, [sp, #8]
	add	r0, r5, r1
	bl	__modsi3
	mov	r5, r0
	mov	r0, r7
	bl	Func_8016478
	cmp	r5, r8
	bge	.L29880
	ldr	r2, =Data_367e4
	lsl	r3, r5, #2
	add	r3, #2
	ldrsh	r0, [r2, r3]
	b	.L29890
.L29880:
	mov	r0, r8
	sub	r2, r5, r0
	ldr	r3, =Data_3680c
	lsl	r2, #2
	add	r2, #2
	ldrsh	r3, [r3, r2]
	mov	r0, r3
	add	r0, #0x80
.L29890:
	ldr	r1, =0x12f2
	mov	r2, r11
	ldrh	r3, [r2, r1]
	mov	r2, #0xf
	str	r3, [sp, #0x14]
	mov	r3, #1
	str	r2, [sp]
	str	r3, [sp, #4]
	add	r2, sp, #0x14
	add	r3, sp, #0x10
	mov	r1, #0
	bl	LoadPortrait
	mov	r3, #0
	mov	r0, r5
	mov	r1, #2
	mov	r2, r7
	str	r3, [sp]
	bl	Func_801ea08
	ldr	r0, =0xdd2
	mov	r1, r7
	add	r0, r5, r0
	mov	r2, #0x18
	mov	r3, #0
	bl	Func_801e7c0
.L298c6:
	mov	r0, #1
	bl	WaitFrames
	b	.L29800
.L298ce:
	mov	r0, r7
	mov	r1, #2
	bl	CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_FaceTest
