	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GameInit  @ 0x08077d38
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	add	r5, sp, #4
	mov	r4, #0
	str	r4, [r5]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =gState
	ldr	r2, =0x850000b0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r4, [r5]
	mov	r0, r5
	ldr	r1, =ewram_2001000
	ldr	r2, =0x850003e1
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r2, =REG_DMA3SAD
	lsl	r3, #24
.L77d66:
	ldr	r4, [r2, #8]
	and	r4, r3
	cmp	r4, #0
	bne	.L77d66
	str	r4, [r5]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =gFlags
	ldr	r2, =0x85000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =ewram_2001000
	mov	r1, #0x82
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0xff
	strb	r2, [r3]
	mov	r0, r5
	str	r4, [r5]
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =gPartyStatus
	ldr	r2, =0x85000298
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r4, [sp]
	bl	ResetPCs
	ldr	r7, =gState
	mov	r3, #0x84
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	ldr	r1, .L77de4	@ 0
	ldr	r2, =0x212
	mov	r10, r1
	add	r3, r7, r2
	mov	r1, #2
	strh	r1, [r3]
	mov	r3, #0x85
	lsl	r3, #2
	add	r2, r7, r3
	ldr	r3, .L77de8	@ 4
	mov	r8, r3
	mov	r3, #4
	strh	r3, [r2]
	ldr	r3, =0x216
	add	r2, r7, r3
	mov	r3, #8
	strh	r3, [r2]
	mov	r3, #0x86
	lsl	r3, #2
	add	r2, r7, r3
	sub	r3, #0x18
	strh	r3, [r2]
	add	r3, #0x1a
	add	r2, r7, r3
	mov	r3, #0x80
	lsl	r3, #1
	strh	r3, [r2]
	mov	r2, #0x87
	lsl	r2, #2
	b	.L77e18

	.align	2, 0
.L77de4:
	.word	0
.L77de8:
	.word	4
	.pool

.L77e18:
	add	r3, r7, r2
	strh	r1, [r3]
	mov	r1, #0x88
	ldr	r4, [sp]
	lsl	r1, #2
	add	r3, r7, r1
	add	r2, #6
	strh	r4, [r3]
	sub	r1, #0x2c
	add	r3, r7, r2
	strh	r4, [r3]
	add	r3, r7, r1
	str	r4, [r3]
	mov	r0, #0
	bl	AddPartyMember
	mov	r2, #0x83
	ldr	r4, [sp]
	ldr	r5, .L77e78	@ 1
	lsl	r2, #2
	ldr	r1, =0x20a
	add	r3, r7, r2
	str	r4, [r7, #0x10]
	sub	r2, #1
	strb	r5, [r3]
	add	r3, r7, r1
	strb	r5, [r3]
	sub	r1, #5
	add	r3, r7, r2
	strb	r5, [r3]
	ldr	r6, .L77e7c	@ 8
	add	r3, r7, r1
	mov	r2, r10
	add	r1, #1
	strb	r2, [r3]
	add	r3, r7, r1
	strb	r6, [r3]
	str	r4, [r7]
	bl	Func_8077cb8
	mov	r2, #0xae
	lsl	r2, #2
	add	r3, r7, r2
	str	r0, [r3]
	ldr	r4, [sp]
	ldr	r3, =iwram_3001c9c
	b	.L77e88

	.align	2, 0
.L77e78:
	.word	1
.L77e7c:
	.word	8
	.pool

.L77e88:
	str	r4, [r3]
	ldr	r3, =iwram_3001d08
	mov	r1, r10
	strb	r1, [r3]
	ldr	r1, =0x22a
	ldrb	r2, [r3]
	add	r3, r7, r1
	str	r4, [r7, #4]
	strb	r2, [r3]
	ldr	r3, =iwram_3001d24
	ldr	r2, =ewram_2002004
	strh	r4, [r3]
	ldr	r3, .L77ee0	@ 0xffffffff
	strh	r3, [r2]
	ldr	r2, =0x11d
	mov	r1, r8
	add	r3, r7, r2
	add	r2, #1
	strb	r1, [r3]
	add	r3, r7, r2
	strb	r1, [r3]
	ldr	r1, =0x11f
	mov	r2, r8
	add	r3, r7, r1
	strb	r2, [r3]
	add	r1, #1
	ldr	r2, =0x121
	add	r3, r7, r1
	strb	r6, [r3]
	add	r1, #2
	add	r3, r7, r2
	strb	r6, [r3]
	add	r2, #2
	add	r3, r7, r1
	strb	r6, [r3]
	add	r1, #2
	add	r3, r7, r2
	mov	r2, #0x10
	strb	r2, [r3]
	add	r3, r7, r1
	add	r1, #1
	strb	r2, [r3]
	b	.L77f00

	.align	2, 0
.L77ee0:
	.word	0xffffffff
	.pool

.L77f00:
	add	r3, r7, r1
	strb	r2, [r3]
	mov	r2, #0x93
	lsl	r2, #1
	add	r3, r7, r2
	add	r1, #2
	mov	r2, #0x20
	strb	r2, [r3]
	add	r3, r7, r1
	add	r1, #1
	strb	r2, [r3]
	add	r3, r7, r1
	strb	r2, [r3]
	ldr	r3, =0x129
	add	r1, #2
	add	r2, r7, r3
	mov	r3, #0x40
	strb	r3, [r2]
	add	r2, r7, r1
	add	r1, #1
	strb	r3, [r2]
	add	r2, r7, r1
	strb	r3, [r2]
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end GameInit
