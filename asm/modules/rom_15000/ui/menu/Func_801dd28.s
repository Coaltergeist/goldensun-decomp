	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801dd28  @ 0x0801dd28
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x84
	str	r1, [sp]
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r11, r0
	ldr	r0, =_FILE_13
	mov	r9, r2
	mov	r8, r3
	bl	GetFile
	mov	r10, r0
	mov	r0, r11
	ldrb	r5, [r0]
	add	r1, sp, #4
	mov	r3, #0xc0
	mov	r12, r1
	lsl	r7, r5, #5
	lsl	r3, #19
	mov	r14, r12
	add	r2, r7, r3
	mov	r1, #0
.L1dd62:
	ldrb	r4, [r2]
	mov	r0, #0xf
	mov	r3, r4
	and	r3, r0
	mov	r0, r12
	strb	r3, [r0]
	lsr	r3, r4, #4
	strb	r3, [r0, #1]
	add	r1, #1
	mov	r3, #2
	add	r2, #1
	add	r12, r3
	cmp	r1, #0x1f
	bls	.L1dd62
	mov	r4, r9
	lsl	r3, r4, #5
	mov	r0, r10
	add	r2, r0, r3
	mov	r3, #0xf
	mov	r12, r14
	mov	r1, #0
	mov	r10, r3
.L1dd8e:
	ldrb	r0, [r2]
	mov	r4, r10
	mov	r3, r0
	and	r3, r4
	ldrb	r3, [r6, r3]
	add	r2, #1
	cmp	r3, #0
	beq	.L1dda2
	mov	r4, r12
	strb	r3, [r4]
.L1dda2:
	mov	r3, #1
	add	r12, r3
	lsr	r3, r0, #4
	ldrb	r3, [r6, r3]
	cmp	r3, #0
	beq	.L1ddb2
	mov	r4, r12
	strb	r3, [r4]
.L1ddb2:
	mov	r0, #1
	add	r1, #1
	add	r12, r0
	cmp	r1, #0x1f
	bls	.L1dd8e
	mov	r12, r14
	mov	r1, #0
	mov	r0, r12
.L1ddc2:
	ldrb	r3, [r0, #1]
	ldrb	r2, [r0]
	lsl	r3, #4
	orr	r2, r3
	mov	r4, #1
	mov	r3, r12
	add	r1, #1
	add	r0, #2
	strb	r2, [r3]
	add	r12, r4
	cmp	r1, #0x1f
	bls	.L1ddc2
	lsl	r3, r5, #24
	cmp	r3, #0
	blt	.L1de24
	mov	r1, #0xea
	lsl	r1, #4
	mov	r0, #0xda
	mov	r4, #0
	add	r1, r8
	mov	r6, #0x7f
	lsl	r0, #4
.L1ddee:
	ldrh	r3, [r1]
	add	r2, r3, #1
	and	r2, r6
	lsl	r3, #24
	lsr	r5, r3, #24
	strh	r2, [r1]
	mov	r7, r8
	add	r2, r5, r0
	ldrb	r3, [r7, r2]
	cmp	r3, #0
	beq	.L1de0a
	add	r4, #1
	cmp	r4, #0x7f
	bls	.L1ddee
.L1de0a:
	mov	r3, #1
	mov	r0, r8
	strb	r3, [r0, r2]
	mov	r3, #0x80
	orr	r5, r3
	ldr	r2, .L1de38	@ 0xf000
	mov	r3, r5
	orr	r3, r2
	mov	r1, r11
	strh	r3, [r1]
	ldr	r2, [sp]
	strh	r3, [r2]
	lsl	r7, r5, #5
.L1de24:
	mov	r4, #0xc0
	lsl	r4, #19
	ldr	r3, =REG_DMA3SAD
	add	r0, sp, #4
	add	r1, r7, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #0x84
	b	.L1de4c

	.align	2, 0
.L1de38:
	.word	0xf000
	.pool

.L1de4c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801dd28

	.section .rodata.rom_1ca1c_c_c_c
	.global .L367c9
	.global .L367cc
	.global .L367ce
	.global .L367d0
	.global .L367d6
	.global .L36750

.L36750:
	.incrom 0x36750, 0x367c9
.L367c9:
	.incrom 0x367c9, 0x367cc
.L367cc:
	.incrom 0x367cc, 0x367ce
.L367ce:
	.incrom 0x367ce, 0x367d0
.L367d0:
	.incrom 0x367d0, 0x367d6
.L367d6:
	.incrom 0x367d6, 0x367dc
.L367dc:
	.incrom 0x367dc, 0x367e4
