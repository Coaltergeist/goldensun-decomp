	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AnimEnd  @ 0x080cdbc0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldr	r0, =0x121
	ldr	r5, [r3]
	sub	r3, #0x78
	ldr	r7, [r3]
	bl	_PlaySound
	ldr	r2, =0x77a0
	add	r3, r5, r2
	ldr	r6, =iwram_3001ad0
	ldr	r3, [r3]
	strh	r3, [r6, #4]
	ldr	r3, =0x77a4
	add	r5, r3
	ldr	r3, [r5]
	ldr	r2, =gPhysVec
	strh	r3, [r6, #6]
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	str	r3, [r2, #0x10]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lcdc1c	@ 0x787
	mov	r1, #0x80
	strh	r3, [r2]
	lsl	r1, #7
	ldr	r3, =Func_80008d4
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r0, =Func_80cd4b4
	bl	StopTask
	ldr	r1, =gDMATaskCount
	mov	r3, #0x20
	strh	r3, [r6, #6]
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcdc6e
	b	.Lcdc50

	.align	2, 0
.Lcdc1c:
	.word	0x787
	.pool

.Lcdc50:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcdc6e:
	strh	r4, [r0]
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lcdca4	@ 0
	mov	r0, #1
	strh	r3, [r2]
	bl	WaitFrames
	mov	r2, #0xc9
	lsl	r2, #3
	add	r3, r7, r2
	ldrh	r1, [r3]
	mov	r2, #7
	mov	r0, #2
	bl	_Func_80c0774
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0xc9
	lsl	r3, #3
	mov	r2, #0x15
	mov	r6, #0
	add	r7, r3
	mov	r5, #0
	mov	r8, r2
	b	.Lcdcb0

	.align	2, 0
.Lcdca4:
	.word	0
	.pool

.Lcdcb0:
	mov	r3, r8
	sub	r1, r3, r5
	ldrh	r0, [r7]
	bl	_Func_80c0700
	add	r6, #1
	mov	r0, #1
	bl	WaitFrames
	add	r5, #3
	cmp	r6, #8
	bne	.Lcdcb0
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcdcf6
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7541
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcdcf6:
	strh	r4, [r0]
	mov	r0, #1
	bl	WaitFrames
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end AnimEnd

