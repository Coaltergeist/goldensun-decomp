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

.thumb_func_start Func_801fba8  @ 0x0801fba8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0
	mov	r8, r3
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1fbca
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #9
	b	.L1fc4c
.L1fbca:
	bl	Func_8005c68
	mov	r0, #0
	mov	r1, #2
	bl	Func_8020244
	mov	r3, #1
	mov	r5, r0
	neg	r3, r3
	cmp	r5, r3
	bne	.L1fbe4
	mov	r8, r5
	b	.L1fc5a
.L1fbe4:
	ldr	r7, =ewram_2000000
	mov	r0, r5
	mov	r1, r7
	bl	Func_8005a78
	mov	r3, #0x80
	lsl	r3, #5
	add	r3, r7
	mov	r10, r3
	mov	r6, r0
	mov	r1, r10
	add	r0, r5, #3
	bl	Func_8005a78
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fc12
	ldr	r0, =_MSG_0c
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #2
	b	.L1fc4c
.L1fc12:
	bl	Func_801f704
	ldr	r3, =0x3e7
	mov	r5, r0
	cmp	r5, r3
	bne	.L1fc2a
	ldr	r0, =_MSG_0d
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #5
	b	.L1fc4c
.L1fc2a:
	mov	r1, r7
	mov	r0, r5
	bl	SomethingSaveHeader
	mov	r1, r10
	mov	r6, r0
	add	r0, r5, #3
	bl	SomethingSaveHeader
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fc52
	ldr	r0, =_MSG_0d
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #3
.L1fc4c:
	neg	r3, r3
	mov	r8, r3
	b	.L1fc5a
.L1fc52:
	ldr	r0, =_MSG_19
	mov	r1, #1
	bl	Func_801776c
.L1fc5a:
	bl	Func_8005cf8
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801fba8

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

