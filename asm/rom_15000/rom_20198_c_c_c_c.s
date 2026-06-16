	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DecompressIcon  @ 0x08021be0
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r5, =0x278
	mov	r0, #0x31
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8015afc
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =gPtrs
	ldr	r1, =0x604
	add	r3, #0xc4
	add	r2, r6, r1
	ldr	r0, [r2]
	ldr	r3, [r3]
	mov	r1, r6
	bl	_call_via_r3
	mov	r0, #0x31
	bl	gfree
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end DecompressIcon

.thumb_func_start Func_8021c34  @ 0x08021c34
	push	{r5, lr}
	sub	sp, #4
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #6
	mov	r3, #4
	mov	r0, #0
	bl	CreateUIBox
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L37300
	mov	r2, #0
	mov	r3, #0
	bl	UIDrawText
	mov	r0, r5
	add	sp, #4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021c34

.thumb_func_start Func_8021c64  @ 0x08021c64
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r1
	mov	r1, #0xc1
	mov	r8, r0
	lsl	r1, #3
	mov	r0, #0x11
	bl	galloc_iwram
	mov	r6, r0
	ldr	r0, =_FILE_f1
	bl	GetFile
	ldr	r3, =0x604
	lsl	r5, #1
	add	r2, r6, r3
	ldrh	r3, [r5, r0]
	add	r0, r3
	str	r0, [r2]
	mov	r1, r6
	bl	DecompressLZ1
	mov	r1, r6
	mov	r0, r8
	bl	UploadSprite2
	mov	r5, r0
	mov	r0, #0x11
	bl	gfree
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8021c64

.thumb_func_start Func_8021cb8  @ 0x08021cb8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r1
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r7, r0
	mov	r0, #0x11
	mov	r8, r2
	bl	galloc_iwram
	mov	r6, r0
	ldr	r0, =_FILE_f1
	bl	GetFile
	ldr	r3, =0x604
	lsl	r5, #1
	add	r2, r6, r3
	ldrh	r3, [r5, r0]
	add	r0, r3
	str	r0, [r2]
	mov	r1, r6
	bl	DecompressLZ1
	mov	r0, #0x80
	lsl	r0, #3
	bl	Func_8004938
	mov	r2, #0
	mov	r14, r0
	mov	r5, r14
	mov	r12, r2
.L21cfa:
	ldrb	r4, [r6]
	ldrb	r2, [r7, r4]
	mov	r3, r2
	add	r6, #1
	cmp	r3, #0xff
	bne	.L21d36
	mov	r3, #0x80
	lsl	r3, #1
	add	r0, r7, r3
	ldr	r3, [r0]
	strb	r3, [r7, r4]
	ldr	r1, [r0]
	cmp	r1, #0x3f
	bgt	.L21d34
	mov	r3, #0xa0
	lsl	r2, r1, #1
	lsl	r3, #19
	add	r3, r2
	ldr	r2, =0x5000200
	mov	r10, r3
	lsl	r3, r4, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, r10
	strh	r3, [r2]
	add	r3, r1, #1
	str	r3, [r0]
	ldrb	r2, [r7, r4]
	b	.L21d36
.L21d34:
	mov	r2, r3
.L21d36:
	strb	r2, [r5]
	mov	r3, #1
	mov	r2, #0x80
	add	r12, r3
	lsl	r2, #3
	add	r5, #1
	cmp	r12, r2
	blt	.L21cfa
	mov	r3, r8
	ldr	r2, =0x6004000
	lsl	r1, r3, #6
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r14
	ldr	r2, =0x84000100
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r14
	bl	free
	mov	r0, #0x11
	bl	gfree
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021cb8

.thumb_func_start Func_8021d88  @ 0x08021d88
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r3, r1
	lsl	r5, r3, #3
	sub	r5, r3
	mov	r4, r0
	mov	r8, r2
	lsl	r5, #2
	mov	r2, #0x82
	add	r6, r4, r5
	lsl	r3, #4
	lsl	r2, #1
	sub	sp, #4
	add	r6, r2
	mov	r1, r8
	mov	r2, r3
	str	r4, [sp]
	bl	Func_8021cb8
	mov	r2, #0x8e
	lsl	r2, #1
	ldr	r4, [sp]
	add	r3, r5, r2
	mov	r2, r8
	str	r2, [r4, r3]
	ldr	r3, =0x80002000
	str	r3, [r6, #4]
	mov	r3, #0
	str	r3, [r6, #8]
	mov	r3, #0x88
	lsl	r3, #1
	add	r5, r3
	ldrh	r0, [r4, r5]
	mov	r1, r8
	bl	Func_8021c64
	ldr	r3, .L21de4	@ 0x3ff
	ldrh	r2, [r6, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r6, #8]
	add	sp, #4
	b	.L21df0

	.align	2, 0
.L21de4:
	.word	0x3ff
	.pool

.L21df0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8021d88

	.section .rodata
	.global .L371f6
	.global .L371fe
	.global .L37206
	.global .L37216
	.global .L37226
	.global .L37230
	.global .L37250
	.global .L37280
	.global .L372c0
	.global .L371e0

.L371e0:
	.incrom 0x371e0, 0x371f6
.L371f6:
	.incrom 0x371f6, 0x371fe
.L371fe:
	.incrom 0x371fe, 0x37206
.L37206:
	.incrom 0x37206, 0x37216
.L37216:
	.incrom 0x37216, 0x37226
.L37226:
	.incrom 0x37226, 0x37230
.L37230:
	.incrom 0x37230, 0x37250
.L37250:
	.incrom 0x37250, 0x37280
.L37280:
	.incrom 0x37280, 0x372c0
.L372c0:
	.incrom 0x372c0, 0x37300
.L37300:
	.incrom 0x37300, 0x37308
