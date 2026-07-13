	.include "macros.inc"
	.include "gba.inc"


.thumb_func_start Func_801f77c  @ 0x0801f77c
	push	{r5, r6, r7, lr}
	bl	Func_80056cc
	mov	r6, #9
	mov	r5, #0
	neg	r6, r6
	cmp	r0, #0
	bne	.L1f7f6
	bl	Func_8005c68
	ldr	r3, =iwram_3001f1c
	ldr	r1, [r3]
	ldr	r3, =ewram_2002010
	ldr	r2, =ewram_200200c
	strh	r5, [r3]
	mov	r7, r3
	ldr	r3, =0x1070
	strh	r5, [r2]
	ldr	r4, .L1f7d0	@ 1
	mov	r6, r0
	add	r1, r3
	mov	r0, #2
.L1f7a8:
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L1f7b4
	strh	r4, [r7]
	add	r5, #1
.L1f7b4:
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L1f7be
	strh	r4, [r2]
.L1f7be:
	sub	r0, #1
	add	r1, #0x40
	cmp	r0, #0
	bge	.L1f7a8
	ldr	r3, =gKeyHeld
	mov	r2, #0x90
	ldr	r3, [r3]
	b	.L1f7e8

	.align	2, 0
.L1f7d0:
	.word	1
	.pool

.L1f7e8:
	lsl	r2, #1
	and	r3, r2
	cmp	r3, r2
	beq	.L1f7f6
	ldr	r2, =ewram_2002010
	ldr	r3, .L1f808	@ 0
	strh	r3, [r2]
.L1f7f6:
	bl	Func_8005cf8
	cmp	r6, #0
	beq	.L1f810
	cmp	r5, r6
	bne	.L1f810
	mov	r0, r6
	add	r0, #0x64
	b	.L1f812

	.align	2, 0
.L1f808:
	.word	0
	.pool

.L1f810:
	mov	r0, r6
.L1f812:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f77c

.thumb_func_start PrepareSaveHeader  @ 0x0801f818
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	ldr	r5, =ewram_2000000
	sub	sp, #0x1c
	mov	r8, r0
	bl	_Func_8077cb8
	ldr	r2, =gState
	ldr	r3, =iwram_3001c9c
	str	r0, [r2]
	mov	r0, #0x80
	ldr	r1, [r3]
	ldr	r3, =ewram_2001000
	lsl	r0, #1
	add	r3, r0
	str	r1, [r2, #4]
	str	r1, [r3]
	ldr	r3, =iwram_3001d08
	ldr	r0, =0x22a
	ldrb	r1, [r3]
	add	r3, r2, r0
	strb	r1, [r3]
	mov	r1, #0xfa
	lsl	r1, #1
	add	r2, r1
	ldr	r0, [r2]
	bl	_GetUnit
	mov	r7, r5
	mov	r6, r0
	mov	r1, r5
	sub	r7, #0x10
	mov	r2, r6
	mov	r5, #0xb
.L1f860:
	ldrb	r3, [r2]
	sub	r5, #1
	strb	r3, [r1]
	add	r2, #1
	add	r1, #1
	cmp	r5, #0
	bge	.L1f860
	ldrb	r3, [r6, #0xf]
	ldr	r5, =gState
	strb	r3, [r7, #0x1c]
	ldr	r3, [r5, #4]
	mov	r2, #0xe0
	str	r3, [r7, #0x20]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #2
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_GetLocationName
	strh	r0, [r7, #0x1e]
	ldr	r0, =0x129
	add	r3, r6, r0
	ldrb	r3, [r3]
	strb	r3, [r7, #0x1d]
	ldr	r3, [r5, #0x10]
	mov	r0, #0
	str	r3, [r7, #0x24]
	bl	_GetNumDjinn
	mov	r3, r7
	add	r3, #0x28
	strb	r0, [r3]
	mov	r0, #1
	bl	_GetNumDjinn
	mov	r3, r7
	add	r3, #0x29
	strb	r0, [r3]
	mov	r0, #2
	bl	_GetNumDjinn
	mov	r3, r7
	add	r3, #0x2a
	strb	r0, [r3]
	mov	r0, #3
	bl	_GetNumDjinn
	mov	r3, r7
	add	r3, #0x2b
	mov	r6, sp
	strb	r0, [r3]
	mov	r5, #0
	mov	r0, r6
	bl	_Func_80796c4
	ldrh	r3, [r6, r5]
	cmp	r3, #0xff
	beq	.L1f8f8
	mov	r1, r7
	mov	r0, r6
	add	r1, #0x2c
	mov	r2, #0
.L1f8e4:
	ldrh	r3, [r2, r0]
	add	r5, #1
	strb	r3, [r1]
	add	r2, #2
	add	r1, #1
	cmp	r5, #3
	bgt	.L1f8f8
	ldrh	r3, [r2, r6]
	cmp	r3, #0xff
	bne	.L1f8e4
.L1f8f8:
	mov	r1, #1
	mov	r2, r5
	neg	r1, r1
	mov	r3, r1
	add	r2, #0x2c
	strb	r3, [r7, r2]
	ldr	r0, =0x205
	ldr	r2, =gState
	add	r3, r2, r0
	ldrb	r1, [r3]
	mov	r3, r7
	add	r3, #0x34
	strb	r1, [r3]
	ldr	r1, =0x206
	add	r3, r2, r1
	ldrb	r3, [r3]
	mov	r1, r7
	add	r1, #0x35
	strb	r3, [r1]
	ldr	r3, =0x20f
	add	r2, r3
	ldrb	r3, [r2]
	mov	r2, r7
	add	r2, #0x31
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x32
	mov	r0, #0
	strb	r0, [r3]
	mov	r5, #0x30
	mov	r6, r3
.L1f936:
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L1f946
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
.L1f946:
	add	r5, #1
	cmp	r5, #0x7f
	ble	.L1f936
	mov	r0, #0x20
	bl	_GetFlag
	neg	r3, r0
	orr	r3, r0
	mov	r2, r7
	lsr	r3, #31
	add	r2, #0x33
	strb	r3, [r2]
	ldr	r3, =gState
	mov	r1, #0xf2
	ldr	r3, [r3]
	ldr	r2, =gFlags
	mov	r5, #0
	lsl	r1, #2
	strh	r3, [r7, #0x36]
	b	.L1f974
.L1f96e:
	ldmia	r2!, {r3}
	add	r5, #1
	add	r8, r3
.L1f974:
	cmp	r5, r1
	blt	.L1f96e
	mov	r0, r8
	str	r0, [r7, #0x3c]
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end PrepareSaveHeader

.thumb_func_start Func_801f9b4  @ 0x0801f9b4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, =ewram_2002004
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1fa20
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1f9e2
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #9
	b	.L1fa16
.L1f9e2:
	bl	PrepareSaveHeader
	ldr	r5, =ewram_2000000
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r1, r5
	bl	SomethingSaveHeader
	mov	r6, r0
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	add	r0, #3
	mov	r1, r5
	bl	SomethingSaveHeader
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fa1a
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #3
.L1fa16:
	neg	r3, r3
	mov	r8, r3
.L1fa1a:
	bl	Func_8005cf8
	mov	r0, r8
.L1fa20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f9b4
