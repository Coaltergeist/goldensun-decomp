	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801fc84  @ 0x0801fc84
	push	{r5, r6, r7, lr}
	bl	Func_80056cc
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.L1fc9e
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	sub	r7, #9
	b	.L1fd18
.L1fc9e:
	bl	Func_8005c68
	mov	r0, #0
	mov	r1, #3
	bl	Func_8020244
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	cmp	r6, r3
	bne	.L1fcb8
	mov	r7, r6
	b	.L1fd18
.L1fcb8:
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	ldr	r0, =0x16
	bl	Func_8017658
	b	.L1fccc
.L1fcc6:
	mov	r0, #1
	bl	WaitFrames
.L1fccc:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L1fcc6
	mov	r0, #1
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	YesNoMenu
	cmp	r0, #0
	beq	.L1fcea
	bl	Func_8019a54
	b	.L1fd18
.L1fcea:
	bl	Func_8019a54
	mov	r0, r6
	bl	Func_8005ac0
	mov	r5, r0
	add	r0, r6, #3
	bl	Func_8005ac0
	orr	r5, r0
	cmp	r5, #0
	beq	.L1fd10
	ldr	r0, =_MSG_0d
	mov	r1, #1
	mov	r7, #4
	bl	Func_801776c
	neg	r7, r7
	b	.L1fd18
.L1fd10:
	ldr	r0, =_MSG_18
	mov	r1, #1
	bl	Func_801776c
.L1fd18:
	bl	Func_8005cf8
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801fc84

.thumb_func_start Func_801fd34  @ 0x0801fd34
	push	{r5, r6, r7, lr}
	ldr	r7, =iwram_3001800
	ldr	r6, =0x50001d0
	mov	r5, #0
.L1fd3c:
	ldr	r3, [r7]
	lsl	r2, r5, #3
	add	r3, r2
	lsl	r0, r3, #1
	add	r0, r3
	lsl	r0, #8
	bl	sin
	cmp	r0, #0
	bge	.L1fd54
	ldr	r3, =0x3fff
	add	r0, r3
.L1fd54:
	asr	r3, r0, #14
	lsl	r1, r3, #1
	mov	r2, r3
	add	r1, #0x16
	add	r2, #0x10
	add	r3, #0x14
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r6]
	add	r6, #2
	add	r5, #1
	cmp	r5, #3
	ble	.L1fd3c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801fd34

