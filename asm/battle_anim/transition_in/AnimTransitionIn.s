	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AnimTransitionIn  @ 0x080c08ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r2
	ldr	r2, =iwram_3001f00
	ldr	r2, [r2]
	mov	r9, r0
	mov	r0, r1
	mov	r10, r2
	bl	GetFile
	ldr	r3, =iwram_3001f00
	sub	r3, #0x8c
	ldr	r6, [r3]
	mov	r8, r0
	ldr	r5, =0x230
	mov	r0, #0x31
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_80b5138
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	ldr	r2, =iwram_3001f00
	lsl	r0, #1
	ldr	r3, [r2, #0x14]
	ldr	r1, =0x6008000
	add	r0, r8
	bl	_call_via_r3
	mov	r0, #0x31
	bl	gfree
	ldr	r3, =0x544
	add	r4, r6, r3
	mov	r0, r8
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	cmp	r7, #0
	blt	.Lc0974
	lsl	r3, r7, #4
	ldr	r2, =0x644
	add	r3, r7
	lsl	r3, #4
	add	r0, r6, r2
	add	r3, r7
	mov	r2, #0x80
	lsl	r3, #2
	lsl	r2, #9
	sub	r2, r3
	str	r2, [r0]
	ldr	r1, =0x50000c0
	mov	r0, r4
	mov	r3, #0x80
	bl	UploadBGPalette
.Lc0974:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50000a0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x50001e8
	ldr	r2, =0x50000bc
	ldrh	r3, [r3]
	ldr	r0, =0x6003800
	strh	r3, [r2]
	bl	Func_80c0098
	ldr	r0, =0x600f800
	bl	Func_80c00d8
	ldr	r3, =Func_80008d4
	ldr	r0, =0x600ffc0
	mov	r1, #0x40
	bl	_call_via_r3
	mov	r2, r10
	ldr	r3, [r2, #8]
	cmp	r3, #0
	bne	.Lc09ae
	ldr	r0, =Func_80c0130
	ldr	r1, =0x4ff
	bl	StartTask
.Lc09ae:
	mov	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	cmp	r3, #1
	bne	.Lc09be
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Lc09cc	@ 0x1f83
	strh	r3, [r2]
.Lc09be:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lc09cc:
	.word	0x1f83
.func_end AnimTransitionIn
