	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_c1724, "ax", %progbits

.thumb_func_start Anim_MoveIntro  @ 0x080c1798
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =iwram_3001e80
	mov	r6, r3
	mov	r3, r7
	sub	r3, #0xc
	ldr	r3, [r3]
	sub	sp, #0xf0
	mov	r10, r0
	mov	r0, #1
	str	r3, [sp, #4]
	mov	r11, r1
	mov	r5, r2
	bl	WaitFrames
	mov	r1, #0xc9
	ldr	r0, [sp, #4]
	lsl	r1, #3
	add	r3, r0, r1
	mov	r2, #0
	ldrh	r1, [r3]
	mov	r0, #1
	bl	Func_80c0774
	mov	r1, #0x80
	ldr	r3, =Func_80008d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #0x80
	lsl	r0, #19
	ldr	r1, =0x3741
	bl	SetRegAnimDest
	ldr	r0, =REG_BG2CNT
	ldr	r1, =0x784
	bl	SetRegAnimDest
	ldr	r1, =0x3f44
	ldr	r0, =REG_BLDCNT
	bl	SetRegAnimDest
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xf0
	ldr	r3, =REG_WIN0H
	strh	r2, [r3]
	ldr	r2, =0x1088
	add	r3, #4
	strh	r2, [r3]
	mov	r2, #0x3f
	add	r3, #4
	strh	r2, [r3]
	mov	r2, #0x11
	add	r3, #2
	strh	r2, [r3]
	cmp	r5, #0
	bne	.Lc18ce
	ldr	r0, =REG_BLDALPHA
	ldr	r1, =0x100e
	bl	SetRegAnimDest
	mov	r0, r11
	bl	Anim_Cast
	ldr	r4, =0x644
	ldr	r3, [sp, #4]
	add	r4, r3, r4
	mov	r2, #0
	str	r4, [sp]
	ldr	r7, =REG_IME
	mov	r8, r2
	add	r6, sp, #0xbc
	mov	r9, r2
.Lc183a:
	ldr	r3, =gPtrs
	mov	r0, r8
	add	r3, #0x9c
	ldr	r5, [r3]
	cmp	r0, #0x18
	bgt	.Lc1860
	mov	r2, #0x80
	mov	r1, r9
	ldr	r3, [sp]
	lsl	r2, #9
	sub	r2, r1
	str	r2, [r3]
	ldr	r1, =0x544
	ldr	r4, [sp, #4]
	mov	r3, #0x80
	add	r0, r4, r1
	ldr	r1, =0x50000c0
	bl	UploadBGPalette
.Lc1860:
	mov	r1, r6
	mov	r0, r10
	bl	Func_80b845c
	ldr	r3, [r6]
	mov	r4, #0x40
	ldr	r2, =0x13c4
	sub	r3, r4, r3
	add	r0, r5, r2
	lsl	r3, #8
	str	r3, [r0]
	ldr	r1, =0x13c8
	ldr	r3, [r6, #4]
	add	r2, r5, r1
	sub	r3, r4, r3
	ldr	r1, =gDMATaskCount
	lsl	r3, #8
	str	r3, [r2]
	ldrh	r3, [r7]
	mov	r4, r3
	strh	r7, [r7]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lc18a8
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r1
	add	r3, #4
	add	r2, #1
	stmia	r3!, {r0}
	strh	r2, [r1]
	ldr	r2, =REG_BG2X
	stmia	r3!, {r2}
	ldr	r2, =0x84000002
	str	r2, [r3]
.Lc18a8:
	strh	r4, [r7]
	ldr	r3, =0x13cc
	add	r2, r5, r3
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	mov	r0, #1
	ldr	r4, =0x444
	add	r8, r0
	mov	r1, r8
	add	r9, r4
	cmp	r1, #0x2c
	ble	.Lc183a
	mov	r0, r11
	bl	Func_80c16d0
	b	.Lc199e
.Lc18ce:
	cmp	r5, #1
	bne	.Lc1958
	mov	r0, r11
	bl	_Anim_UnleashIntro
	ldr	r2, =gDMATaskCount
	mov	r3, #0x27
	mov	r4, #0x40
	ldr	r6, =REG_IME
	add	r7, sp, #0xb0
	mov	r9, r2
	mov	r8, r3
	mov	r11, r4
.Lc18e8:
	ldr	r0, =iwram_3001eec
	mov	r1, r7
	ldr	r5, [r0]
	mov	r0, r10
	bl	Func_80b845c
	ldr	r3, [r7]
	mov	r4, r11
	ldr	r2, =0x13c4
	sub	r3, r4, r3
	add	r1, r5, r2
	lsl	r3, #8
	str	r3, [r1]
	ldr	r3, [r7, #4]
	ldr	r0, =0x13c8
	sub	r3, r4, r3
	add	r2, r5, r0
	lsl	r3, #8
	str	r3, [r2]
	ldrh	r3, [r6]
	mov	r0, r3
	strh	r6, [r6]
	mov	r3, r9
	ldrh	r2, [r3]
	cmp	r2, #0x1f
	bgt	.Lc1936
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r9
	add	r3, #4
	add	r2, #1
	mov	r4, r9
	stmia	r3!, {r1}
	strh	r2, [r4]
	ldr	r2, =REG_BG2X
	stmia	r3!, {r2}
	ldr	r2, =0x84000002
	str	r2, [r3]
.Lc1936:
	strh	r0, [r6]
	ldr	r0, =0x13cc
	mov	r3, #1
	add	r2, r5, r0
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bge	.Lc18e8
	bl	_Func_80ccbdc
	b	.Lc199e
.Lc1958:
	cmp	r5, #2
	bne	.Lc197e
	add	r0, sp, #0x5c
	mov	r3, #0
	str	r3, [r0, #0x1c]
	mov	r3, r11
	mov	r4, r10
	str	r3, [r0]
	mov	r1, r10
	mov	r3, #1
	str	r6, [r0, #0x18]
	str	r4, [r0, #8]
	strh	r1, [r0, #0x24]
	str	r4, [r0, #0xc]
	str	r3, [r0, #0x14]
	str	r3, [r0, #0x10]
	bl	_Anim_EPowerUp
	b	.Lc199e
.Lc197e:
	add	r0, sp, #8
	mov	r3, #0
	str	r3, [r0, #0x1c]
	str	r3, [r0, #0x18]
	mov	r3, r10
	mov	r2, r11
	str	r3, [r0, #8]
	mov	r4, r10
	str	r3, [r0, #0xc]
	mov	r3, #1
	str	r2, [r0]
	strh	r4, [r0, #0x24]
	str	r3, [r0, #0x14]
	str	r3, [r0, #0x10]
	bl	_Anim_DjinnSet
.Lc199e:
	add	sp, #0xf0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_MoveIntro

