	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8011644
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r2, =ewram_2010000
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
	bl	Func_80053e8
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
	bl	Func_8005340
	ldr	r0, [r5, #8]
	bl	GetFile
	ldr	r1, =ewram_203a000
	bl	Func_8005340
	ldr	r0, [r5, #0xc]
	bl	GetFile
	ldr	r1, =ewram_203c000
	bl	Func_8005340
	ldr	r0, [r5, #0x10]
	bl	GetFile
	ldr	r1, =ewram_203e000
	bl	Func_8005340
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
	bl	Func_80030f8
	ldr	r0, =_FILE_d5
	bl	GetFile
	mov	r1, r10
	bl	Func_8005340
	ldr	r5, .L116fc	@ 0
	bl	Func_80113e4
	mov	r3, r7
	add	r3, #0xfc
	strb	r5, [r3]
	ldr	r0, =Func_801179c
	bl	Func_800439c
	mov	r0, #1
	bl	Func_80030f8
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

.thumb_func_start Func_801173c
	push	{lr}
	ldr	r3, =iwram_3001e70
	ldr	r2, =iwram_3001cfc
	ldr	r1, [r3]
	ldr	r3, =Func_801161c
	str	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0
	strh	r3, [r2]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x9f
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	ldr	r0, =_FILE_d5
	bl	GetFile
	ldr	r1, =ewram_2010000
	bl	Func_8005340
	bl	Func_80113e4
	ldr	r0, =Func_801179c
	bl	Func_800439c
	mov	r0, #1
	bl	Func_80030f8
	pop	{r0}
	bx	r0
.func_end Func_801173c

.thumb_func_start Func_801179c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r2, =0x6004000
	mov	r8, r3
	ldr	r3, =0xffff
	mov	r1, #0
	mov	r6, #0x84
	mov	r5, r8
	ldr	r7, =0x6008000
	mov	r10, r1
	lsl	r6, #24
	mov	r12, r2
	add	r5, #0x18
	mov	r14, r3
.L117c0:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L11872
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	bne	.L11872
.L117cc:
	ldrh	r2, [r5, #8]
	mov	r3, r2
	cmp	r3, #0
	bne	.L1186c
	ldr	r4, [r5, #4]
	ldrh	r0, [r4]
	add	r4, #2
	cmp	r0, r14
	bne	.L117e4
	ldr	r3, [r5]
	str	r3, [r5, #4]
	b	.L117cc
.L117e4:
	mov	r3, #0xff
	lsl	r3, #8
	mov	r1, #0xfe
	and	r3, r0
	lsl	r1, #8
	cmp	r3, r1
	bne	.L11804
	mov	r2, #0xff
	and	r2, r0
	cmp	r2, #0xff
	beq	.L11872
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	str	r3, [r5, #4]
	b	.L117cc
.L11804:
	ldrh	r2, [r4]
	add	r4, #2
	ldrh	r3, [r4, #2]
	ldrh	r1, [r4]
	strh	r3, [r5, #8]
	mov	r4, r8
	ldrb	r3, [r4, #0x16]
	cmp	r3, #0
	bne	.L1183c
	mov	r3, #0xc0
	lsl	r3, #3
	cmp	r0, r3
	bcc	.L1182e
	ldr	r4, =ewram_201c000
	lsl	r2, #3
	lsl	r0, #5
	lsl	r1, #5
	ldr	r3, =REG_DMA3SAD
	add	r0, r4
	add	r1, r12
	b	.L1185e
.L1182e:
	lsl	r2, #3
	lsl	r0, #5
	lsl	r1, #5
	ldr	r3, =REG_DMA3SAD
	add	r0, r12
	add	r1, r12
	b	.L1185e
.L1183c:
	mov	r3, #0x80
	lsl	r3, #2
	cmp	r0, r3
	bcc	.L11852
	ldr	r4, =ewram_2020000
	lsl	r2, #4
	lsl	r0, #6
	lsl	r1, #6
	ldr	r3, =REG_DMA3SAD
	add	r0, r4
	b	.L1185c
.L11852:
	lsl	r2, #4
	lsl	r0, #6
	lsl	r1, #6
	ldr	r3, =REG_DMA3SAD
	add	r0, r7
.L1185c:
	add	r1, r7
.L1185e:
	orr	r2, r6
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, [r5, #4]
	add	r3, #8
	str	r3, [r5, #4]
	b	.L117cc
.L1186c:
	mov	r1, r14
	add	r3, r2, r1
	strh	r3, [r5, #8]
.L11872:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	add	r5, #0xc
	cmp	r3, #0xf
	bls	.L117c0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801179c

