	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801faa8  @ 0x0801faa8
	push	{r5, r6, r7, lr}
	mov	r0, #0x80
	lsl	r0, #5
	bl	Func_8004970
	ldr	r6, =ewram_2002004
	mov	r5, r0
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r3, #1
	neg	r3, r3
	mov	r7, #0
	cmp	r0, r3
	beq	.L1fb28
	bl	Func_80056cc
	cmp	r0, #0
	beq	.L1fad8
	ldr	r0, =_MSG_0a
	mov	r1, #1
	mov	r7, #9
	bl	Func_801776c
	b	.L1fb1a
.L1fad8:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r1, r5
	bl	Func_8005a78
	cmp	r0, #0
	beq	.L1faf2
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r7, #2
	neg	r7, r7
.L1faf2:
	ldr	r1, =ewram_20004e4
	ldr	r3, =ewram_2000000
	add	r0, r5, r1
	sub	r0, r3
	mov	r2, #0x10
	ldr	r3, =Func_8001af8
	bl	_call_via_r3
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r1, r5
	bl	SomethingSaveHeader
	cmp	r0, #0
	beq	.L1fb1c
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r7, #3
.L1fb1a:
	neg	r7, r7
.L1fb1c:
	bl	Func_8005cf8
	mov	r0, r5
	bl	free
	mov	r0, r7
.L1fb28:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801faa8

.thumb_func_start Func_801fb48  @ 0x0801fb48
	push	{r5, lr}
	mov	r1, #8
	mov	r2, #0xc
	mov	r3, #2
	ldr	r0, =0x14
	bl	Func_8017658
	b	.L1fb5e
.L1fb58:
	mov	r0, #1
	bl	WaitFrames
.L1fb5e:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L1fb58
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	bl	YesNoMenu
	cmp	r0, #0
	beq	.L1fb7c
	bl	Func_8019a54
	b	.L1fb98
.L1fb7c:
	bl	Func_8019a54
	mov	r0, #0x55
	bl	_PlaySound
	bl	Func_801faa8
	mov	r5, r0
	cmp	r5, #0
	blt	.L1fb98
	ldr	r0, =_MSG_17
	mov	r1, #1
	bl	Func_801776c
.L1fb98:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_801fb48

