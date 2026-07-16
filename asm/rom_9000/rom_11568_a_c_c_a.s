	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8011644  @ 0x08011644
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r2, =gBuffer
	ldr	r7, [r3]
	mov	r10, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r7, r2
	mov	r6, #0xa0
	ldr	r5, [r3]
	lsl	r6, #19
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	ldr	r0, [r5]
	mov	r8, r3
	bl	GetFile
	mov	r1, r10
	bl	DecompressLZ1
	mov	r3, r8
	mov	r2, r10
	strh	r3, [r2]
	mov	r0, r10
	ldr	r3, =REG_DMA3SAD
	mov	r1, r6
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, [r5, #4]
	bl	GetFile
	ldr	r1, =ewram_2038000
	bl	DecompressLZ
	ldr	r0, [r5, #8]
	bl	GetFile
	ldr	r1, =ewram_203a000
	bl	DecompressLZ
	ldr	r0, [r5, #0xc]
	bl	GetFile
	ldr	r1, =ewram_203c000
	bl	DecompressLZ
	ldr	r0, [r5, #0x10]
	bl	GetFile
	ldr	r1, =ewram_203e000
	bl	DecompressLZ
	ldr	r2, =iwram_3001cfc
	ldr	r3, =Func_801161c
	str	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x9f
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, =_FILE_d5
	bl	GetFile
	mov	r1, r10
	bl	DecompressLZ
	ldr	r5, .L116fc	@ 0
	bl	Func_80113e4
	mov	r3, r7
	add	r3, #0xfc
	strb	r5, [r3]
	ldr	r0, =Func_801179c
	bl	Func_800439c
	mov	r0, #1
	bl	WaitFrames
	b	.L11730

	.align	2, 0
.L116fc:
	.word	0
	.pool

.L11730:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8011644

