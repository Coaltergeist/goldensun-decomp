	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8015e8c
	push	{lr}
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xd98
	ldr	r3, [r3]
	add	r1, r3, r2
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L15eae
	ldr	r2, [r0]
	cmp	r2, #0
	bne	.L15ea8
	ldr	r4, =0xd9c
	add	r3, r4
	str	r1, [r3]
.L15ea8:
	mov	r3, #0
	str	r2, [r1]
	str	r3, [r0]
.L15eae:
	pop	{r1}
	bx	r1
.func_end Func_8015e8c

.thumb_func_start Func_8015ec0
	push	{lr}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0xd3
	ldr	r2, [r3]
	lsl	r1, #3
	add	r3, r2, r1
	cmp	r0, r3
	bcc	.L15ee6
	ldr	r1, =0xd98
	add	r3, r2, r1
	cmp	r0, r3
	bcs	.L15ee6
	add	r1, #4
	add	r3, r2, r1
	ldr	r2, [r3]
	str	r0, [r3]
	mov	r3, #0
	str	r0, [r2]
	str	r3, [r0]
.L15ee6:
	pop	{r0}
	bx	r0
.func_end Func_8015ec0

.thumb_func_start Func_8015ef4
	push	{lr}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0xd3
	ldr	r0, [r3]
	lsl	r1, #3
	add	r2, r0, r1
	ldr	r1, =0xd98
	add	r3, r0, r1
	str	r2, [r3]
	mov	r3, #0x3e
.L15f08:
	mov	r1, r2
	add	r1, #0x1c
	sub	r3, #1
	str	r1, [r2]
	mov	r2, r1
	cmp	r3, #0
	bge	.L15f08
	ldr	r2, =0xd9c
	mov	r3, #0
	str	r3, [r1]
	add	r3, r0, r2
	str	r1, [r3]
	pop	{r0}
	bx	r0
.func_end Func_8015ef4

.thumb_func_start Func_8015f30
	push	{r5, lr}
	ldr	r1, =0x12fc
	mov	r0, #0xf
	sub	sp, #4
	bl	Func_80048f4
	mov	r3, #0
	mov	r4, r0
	mov	r5, sp
	str	r3, [r5]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x850004bf
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0xea3
	add	r2, r4, r3
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =0x12b6
	add	r2, r4, r3
	mov	r3, #0x63
	strh	r3, [r2]
	ldr	r3, =0xea7
	add	r2, r4, r3
	mov	r3, #0xf
	strb	r3, [r2]
	ldr	r3, =0xf000f000
	mov	r0, r5
	str	r3, [r5]
	ldr	r2, =0x85000140
	ldr	r3, =REG_DMA3SAD
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_8015ef4
	bl	Func_8019d0c
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_80160fc
	bl	Func_80041d8
	bl	Func_80173f4
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8015f30

.thumb_func_start Func_8015fb8
	push	{lr}
	mov	r12, r3
	mov	r3, r9
	push	{r3}
	mov	r3, r12
	mov	r3, r0
	ldr	r0, =0x3ff
	mov	r2, r9
	sub	sp, #4
	mov	r4, r1
	str	r2, [sp]
	and	r4, r0
	ldr	r2, =0x6000010
	and	r0, r3
	lsl	r0, #5
	lsl	r4, #5
	add	r0, r2
	sub	r2, #0x10
	add	r1, r4, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x600000c
	add	r4, r3
	mov	r0, r4
	ldr	r3, =Func_80008d4
	mov	r1, #0x14
	bl	_call_via_r3
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r1}
	bx	r1
.func_end Func_8015fb8

.thumb_func_start Func_8016018
	push	{r5, r6, lr}
	mov	r6, r9
	push	{r6}
	mov	r6, r0
	ldr	r1, =0x12fc
	mov	r0, #0xf
	sub	sp, #4
	bl	Func_80048f4
	mov	r3, #0
	mov	r5, r0
	mov	r4, sp
	str	r3, [r4]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x850004bf
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =0xea3
	add	r3, r5, r1
	mov	r1, #1
	strb	r1, [r3]
	ldr	r3, =0x12b6
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
	ldr	r2, =0xea5
	add	r3, r5, r2
	strb	r1, [r3]
	ldr	r3, =0xea7
	add	r2, r5, r3
	mov	r3, #0xf
	strb	r3, [r2]
	ldr	r3, =0xf000f000
	mov	r0, r4
	str	r3, [r4]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000140
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_8015ef4
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_80160fc
	bl	Func_80041d8
	mov	r0, r6
	bl	Func_8017464
	add	r1, sp, #4
	mov	r9, r1
	ldr	r0, =0xf013
	mov	r1, #0x80
	bl	Func_8015fb8
	add	r2, sp, #4
	mov	r9, r2
	mov	r1, #0x81
	ldr	r0, =0xf014
	bl	Func_8015fb8
	add	r3, sp, #4
	mov	r9, r3
	mov	r1, #0x82
	ldr	r0, =0xf015
	bl	Func_8015fb8
	ldr	r1, =0xda2
	mov	r2, #4
	mov	r3, #2
	add	r5, r1
.L160ac:
	sub	r3, #1
	strb	r2, [r5]
	sub	r5, #1
	cmp	r3, #0
	bge	.L160ac
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8016018

.thumb_func_start Func_80160fc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea6
	ldr	r7, [r3]
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L1615a
	sub	r2, #3
	add	r3, r7, r2
	ldrb	r4, [r3]
	cmp	r4, #0
	beq	.L1615a
	ldr	r3, =0x6002000
	mov	r12, r3
	mov	r3, #1
	and	r3, r4
	mov	r5, r7
	cmp	r3, #0
	beq	.L16126
	mov	r4, #0x3f
.L16126:
	mov	r3, #0x3f
	and	r4, r3
	mov	r2, #1
	mov	r6, #0x80
	lsr	r4, #1
	mov	r14, r2
	lsl	r6, #1
.L16134:
	mov	r3, r4
	mov	r2, r14
	and	r3, r2
	cmp	r3, #0
	beq	.L1614a
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r12
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L1614a:
	lsr	r4, #1
	add	r5, r6
	add	r12, r6
	cmp	r4, #0
	bne	.L16134
	ldr	r2, =0xea3
	add	r3, r7, r2
	strb	r4, [r3]
.L1615a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80160fc

.thumb_func_start Func_8016178
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r10, r3
	lsl	r3, r1, #5
	add	r3, r0
	lsl	r3, #1
	mov	r6, r2
	mov	r2, r10
	add	r5, r3, r2
	mov	r4, #0xf0
	add	r3, r1, r7
	sub	sp, #4
	mov	r8, r1
	lsl	r4, #8
	cmp	r3, #0x14
	bls	.L161a6
	mov	r3, #0x14
	sub	r7, r3, r1
.L161a6:
	cmp	r6, #1
	bhi	.L161ac
	mov	r6, #2
.L161ac:
	cmp	r6, #0x1e
	bls	.L161b2
	mov	r6, #0x1e
.L161b2:
	cmp	r7, #1
	bhi	.L161b8
	mov	r7, #2
.L161b8:
	cmp	r7, #0x1e
	bls	.L161be
	mov	r7, #0x1e
.L161be:
	mov	r2, r6
	mov	r1, r8
	mov	r3, r7
	str	r4, [sp]
	bl	Func_801e260
	mov	r2, #0
	ldr	r4, [sp]
	cmp	r2, r7
	bcs	.L16208
	ldr	r0, =0xea5
	mov	r3, #0x20
	sub	r3, r6
	add	r0, r10
	lsl	r1, r3, #1
.L161dc:
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.L161f0
	mov	r4, r8
	add	r3, r4, r2
	ldr	r4, =0xf07f
	cmp	r3, #0x10
	bhi	.L161f0
	mov	r4, #0xf0
	lsl	r4, #8
.L161f0:
	mov	r3, #0
	cmp	r3, r6
	bcs	.L16200
.L161f6:
	add	r3, #1
	strh	r4, [r5]
	add	r5, #2
	cmp	r3, r6
	bcc	.L161f6
.L16200:
	add	r2, #1
	add	r5, r1
	cmp	r2, r7
	bcc	.L161dc
.L16208:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8016178

.thumb_func_start Func_8016230
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r10, r3
	ldrh	r3, [r0, #0xa]
	ldrh	r2, [r0, #0x16]
	mov	r8, r3
	mov	r3, #0
	strh	r3, [r0, #0x1a]
	mov	r3, #8
	and	r3, r2
	sub	sp, #4
	ldrh	r5, [r0, #0xc]
	ldrh	r6, [r0, #0xe]
	ldrh	r7, [r0, #8]
	cmp	r3, #0
	beq	.L1629c
	mov	r3, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1627c
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_80170f8
	mov	r1, #0xf0
	ldr	r3, =Func_80008d8
	ldr	r0, =0x6002500
	lsl	r1, #4
	ldr	r2, =0x44444444
	bl	_call_via_r3
	b	.L1628a
.L1627c:
	mov	r1, #0xf0
	ldr	r3, =Func_80008d8
	ldr	r0, =0x6002500
	lsl	r1, #4
	mov	r2, #0
	bl	_call_via_r3
.L1628a:
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_8017248
	b	.L162a8
.L1629c:
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_80170f8
.L162a8:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8016230

.thumb_func_start Func_80162d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r14, r3
	ldr	r3, =iwram_3001e8c
	mov	r12, r2
	ldr	r3, [r3]
	mov	r2, #0xa0
	lsl	r2, #3
	add	r4, r3, r2
	ldrh	r2, [r4, #0x16]
	mov	r3, #1
	and	r3, r2
	mov	r7, r1
	ldr	r6, [sp, #0x14]
	mov	r5, #0
	mov	r1, #0
	b	.L1630a

	.pool_aligned

.L162fc:
	add	r1, #1
	add	r4, #0x24
	cmp	r1, #8
	beq	.L16318
	ldrh	r2, [r4, #0x16]
	mov	r3, #1
	and	r3, r2
.L1630a:
	cmp	r3, #0
	bne	.L162fc
	mov	r2, #0x1a
	ldrsh	r3, [r4, r2]
	cmp	r3, #0
	bne	.L162fc
	mov	r5, r4
.L16318:
	cmp	r5, #0
	beq	.L163e0
	mov	r3, #0
	mov	r8, r3
	mov	r2, r12
	mov	r3, r14
	strh	r7, [r5, #0xe]
	strh	r2, [r5, #8]
	strh	r3, [r5, #0xa]
	mov	r2, r8
	mov	r3, r8
	mov	r7, #1
	strh	r0, [r5, #0xc]
	strh	r3, [r5, #0x14]
	str	r2, [r5]
	str	r4, [r5, #4]
	strh	r7, [r5, #0x10]
	strh	r7, [r5, #0x16]
	bl	Func_80173ac
	mov	r0, #8
	mov	r3, r6
	and	r3, r0
	cmp	r3, #0
	beq	.L16352
	ldrh	r3, [r5, #0x16]
	ldr	r2, =8
	orr	r3, r2
	strh	r3, [r5, #0x16]
.L16352:
	mov	r3, #0x20
	and	r3, r6
	cmp	r3, #0
	beq	.L16362
	ldrh	r3, [r5, #0x16]
	ldr	r2, =0x20
	orr	r3, r2
	strh	r3, [r5, #0x16]
.L16362:
	mov	r3, #0x40
	and	r3, r6
	cmp	r3, #0
	beq	.L16380
	ldrh	r3, [r5, #0x16]
	ldr	r2, =0x40
	orr	r3, r2
	strh	r3, [r5, #0x16]
	b	.L16380

	.pool_aligned

.L16380:
	mov	r3, #0x80
	and	r3, r6
	cmp	r3, #0
	beq	.L16390
	ldrh	r3, [r5, #0x16]
	ldr	r2, =0x80
	orr	r3, r2
	strh	r3, [r5, #0x16]
.L16390:
	mov	r1, #0x80
	lsl	r1, #1
	mov	r3, r6
	and	r3, r1
	cmp	r3, #0
	beq	.L163a4
	ldrh	r2, [r5, #0x16]
	mov	r3, r1
	orr	r3, r2
	strh	r3, [r5, #0x16]
.L163a4:
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.L163ce
	ldrh	r3, [r5, #0x16]
	ldr	r2, =2
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r5, #0x16]
	strh	r2, [r5, #0x18]
	b	.L163c4

	.pool_aligned

.L163c4:
	strh	r7, [r5, #0x1a]
	mov	r0, r5
	bl	Func_8016230
	b	.L163e0
.L163ce:
	mov	r3, #7
	strh	r0, [r5, #0x1a]
	strh	r3, [r5, #0x18]
	mov	r0, r5
	bl	Func_80163ec
	mov	r0, #1
	bl	Func_80030f8
.L163e0:
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80162d4

.thumb_func_start Func_80163ec
	push	{r5, lr}
	mov	r5, r0
	ldrh	r2, [r5, #0x16]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L16410
	mov	r2, #0x1a
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L16410
.L16402:
	mov	r0, #1
	bl	Func_80030f8
	mov	r2, #0x1a
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L16402
.L16410:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80163ec

.thumb_func_start Func_8016418
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r7, r1
	cmp	r5, #0
	beq	.L16472
	bl	Func_8016478
	ldrh	r3, [r5, #0xc]
	strh	r3, [r5, #0x1c]
	ldrh	r3, [r5, #0xe]
	strh	r3, [r5, #0x1e]
	ldrh	r3, [r5, #8]
	strh	r3, [r5, #0x20]
	ldrh	r3, [r5, #0xa]
	mov	r6, #0
	strh	r6, [r5, #0x16]
	strh	r3, [r5, #0x22]
	cmp	r7, #0
	beq	.L1646c
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	ldrh	r2, [r5, #8]
	ldrh	r3, [r5, #0xa]
	bl	Func_8016178
	str	r6, [r5]
	str	r6, [r5, #4]
	strh	r6, [r5, #8]
	strh	r6, [r5, #0xa]
	strh	r6, [r5, #0xc]
	strh	r6, [r5, #0xe]
	strh	r6, [r5, #0x10]
	strh	r6, [r5, #0x12]
	strh	r6, [r5, #0x14]
	strh	r6, [r5, #0x16]
	strh	r6, [r5, #0x18]
	strh	r6, [r5, #0x1a]
	strh	r6, [r5, #0x1c]
	strh	r6, [r5, #0x1e]
	strh	r6, [r5, #0x20]
	strh	r6, [r5, #0x22]
	b	.L16472
.L1646c:
	mov	r3, #4
	strh	r7, [r5, #0x18]
	strh	r3, [r5, #0x1a]
.L16472:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8016418

.thumb_func_start Func_8016478
	push	{r5, lr}
	mov	r5, r0
	ldrh	r2, [r5, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L16490
	bl	Func_8016498
	mov	r0, r5
	bl	Func_80164ac
.L16490:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8016478

.thumb_func_start Func_8016498
	push	{lr}
	ldrh	r4, [r0, #0xc]
	ldrh	r1, [r0, #0xe]
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #0xa]
	mov	r0, r4
	bl	Func_80170f8
	pop	{r0}
	bx	r0
.func_end Func_8016498

.thumb_func_start Func_80164ac
	push	{r5, lr}
	mov	r3, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L164cc
	ldr	r0, [r3]
	str	r3, [r3, #4]
	str	r5, [r3]
	cmp	r0, #0
	beq	.L164cc
.L164c0:
	ldr	r5, [r0]
	bl	Func_8016594
	mov	r0, r5
	cmp	r0, #0
	bne	.L164c0
.L164cc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80164ac

.thumb_func_start Func_80164d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r7, r2
	ldr	r2, =iwram_3001e8c
	mov	r5, r1
	ldr	r1, [sp, #0x18]
	ldr	r2, [r2]
	lsr	r4, r5, #3
	add	r3, #7
	ldrh	r5, [r0, #0xc]
	add	r1, #7
	ldrh	r0, [r0, #0xe]
	mov	r8, r2
	lsr	r3, #3
	lsr	r2, r7, #3
	lsr	r1, #3
	add	r2, r0
	add	r4, r5
	add	r3, r5
	add	r1, r0
	add	r5, r4, #1
	add	r7, r2, #1
	sub	r6, r3, r4
	sub	r4, r1, r2
	mov	r3, r4
	mov	r1, r7
	mov	r2, r6
	mov	r0, r5
	str	r4, [sp]
	bl	Func_801e260
	lsl	r3, r7, #5
	add	r3, r5
	ldr	r4, [sp]
	lsl	r3, #1
	mov	r2, r8
	mov	r1, #0
	add	r0, r3, r2
	cmp	r1, r4
	bcs	.L16548
	mov	r3, #0x20
	sub	r3, r6
	lsl	r3, #1
.L1652e:
	mov	r5, #0
	cmp	r5, r6
	bcs	.L16540
	ldr	r2, .L16554	@ 0xf020
.L16536:
	add	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, r6
	bcc	.L16536
.L16540:
	add	r1, #1
	add	r0, r3
	cmp	r1, r4
	bcc	.L1652e
.L16548:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r8
	strb	r3, [r2]
	add	sp, #4
	b	.L16560

	.align	2, 0
.L16554:
	.word	0xf020
	.pool

.L16560:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80164d4

.thumb_func_start Func_801656c
	push	{lr}
	ldr	r3, [r0]
	mov	r2, r0
	cmp	r3, #0
	beq	.L1657e
.L16576:
	mov	r2, r3
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L16576
.L1657e:
	str	r2, [r0, #4]
	pop	{r0}
	bx	r0
.func_end Func_801656c

.thumb_func_start Func_8016584
	push	{lr}
	cmp	r0, #0
	beq	.L16590
	ldr	r3, [r0, #4]
	str	r1, [r3]
	str	r1, [r0, #4]
.L16590:
	pop	{r0}
	bx	r0
.func_end Func_8016584

.thumb_func_start Func_8016594
	push	{r5, lr}
	mov	r5, r0
	bl	Func_8015ec0
	ldrb	r3, [r5, #4]
	cmp	r3, #0
	beq	.L165c0
	ldrb	r0, [r5, #0xe]
	bl	Func_8003f3c
	ldrb	r3, [r5, #4]
	cmp	r3, #2
	bne	.L165c0
	ldr	r3, =iwram_3001e8c
	ldr	r1, [r3]
	ldrb	r3, [r5, #0x19]
	ldr	r2, =0x12d0
	lsr	r3, #4
	lsl	r3, #1
	add	r3, r2
	ldr	r2, .L165cc	@ 0x3e7
	strh	r2, [r1, r3]
.L165c0:
	mov	r3, #0
	strb	r3, [r5, #5]
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L165cc:
	.word	0x3e7
.func_end Func_8016594

.thumb_func_start Func_80165d8
	push	{r5, r6, r7, lr}
	mov	r7, r3
	ldr	r3, =iwram_3001e8c
	mov	r12, r1
	ldr	r3, [r3]
	mov	r1, #0xc4
	lsl	r1, #3
	add	r4, r3, r1
	ldr	r3, [r4]
	mov	r6, r0
	ldr	r5, [sp, #0x10]
	mov	r0, #0
	mov	r1, #0
	b	.L165fe
.L165f4:
	add	r1, #1
	add	r4, #0x28
	cmp	r1, #3
	beq	.L16604
	ldr	r3, [r4]
.L165fe:
	cmp	r3, #0
	bne	.L165f4
	mov	r0, r4
.L16604:
	cmp	r0, #0
	beq	.L16668
	lsl	r3, r2, #8
	strh	r3, [r0, #0x1e]
	strh	r3, [r0, #4]
	lsl	r3, r7, #8
	strh	r3, [r0, #6]
	mov	r3, r12
	strh	r3, [r0, #0x12]
	mov	r3, #0xf
	strh	r3, [r0, #0x16]
	mov	r3, #0xa
	strh	r3, [r0, #0x1a]
	ldr	r3, [sp, #0x14]
	mov	r2, #0
	str	r6, [r0]
	strh	r2, [r0, #0x14]
	strh	r2, [r0, #0x18]
	strh	r2, [r0, #0x20]
	strh	r3, [r0, #0x24]
	cmp	r5, #0
	beq	.L1664c
	mov	r2, r0
	mov	r1, #0
	add	r2, #8
.L16636:
	ldrh	r3, [r5]
	add	r1, #1
	strh	r3, [r2]
	add	r5, #2
	add	r2, #2
	cmp	r1, #3
	bls	.L16636
	b	.L16664

	.pool_aligned

.L1664c:
	mov	r3, r0
	ldr	r2, =0
	mov	r1, #0
	add	r3, #8
.L16654:
	add	r1, #1
	strh	r2, [r3]
	add	r3, #2
	cmp	r1, #3
	bls	.L16654
	b	.L16664

	.pool_aligned

.L16664:
	mov	r3, #0
	strh	r3, [r0, #0x10]
.L16668:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80165d8

.thumb_func_start Func_8016670
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e8c
	mov	r4, #0xc4
	ldr	r3, [r3]
	lsl	r4, #3
	mov	r6, r1
	mov	r5, #0
	add	r1, r3, r4
	mov	r4, #0
	b	.L16688
.L16684:
	add	r1, #0x28
	add	r4, #1
.L16688:
	cmp	r4, #3
	beq	.L1669a
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L16698
	ldrh	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.L16684
.L16698:
	mov	r5, r1
.L1669a:
	cmp	r5, #0
	beq	.L1670e
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L166b2
	mov	r3, #0xa0
	lsl	r3, #4
	strh	r3, [r5, #6]
	mov	r3, #0xc0
	lsl	r3, #2
	str	r0, [r5]
	b	.L166de
.L166b2:
	cmp	r2, #0
	bne	.L166e0
	ldrh	r3, [r5, #6]
	mov	r2, r3
	cmp	r2, #0
	bne	.L166c6
	mov	r3, #0xa0
	lsl	r3, #4
	strh	r3, [r5, #6]
	b	.L166da
.L166c6:
	mov	r1, #0xd0
	lsl	r1, #4
	cmp	r2, r1
	bcs	.L166d4
	add	r3, r1
	strh	r3, [r5, #6]
	b	.L166da
.L166d4:
	mov	r0, r5
	bl	Func_80167d8
.L166da:
	mov	r3, #0xc0
	lsl	r3, #2
.L166de:
	strh	r3, [r5, #4]
.L166e0:
	mov	r3, #0xc0
	lsl	r3, #2
	strh	r3, [r5, #0x1e]
	ldr	r3, [r5]
	mov	r2, #0
	strh	r2, [r3, #0x14]
	mov	r3, #0xf
	strh	r3, [r5, #0x16]
	mov	r3, #0xa
	strh	r3, [r5, #0x1a]
	strh	r6, [r5, #0x12]
	mov	r3, r5
	strh	r2, [r5, #0x14]
	strh	r2, [r5, #0x18]
	strh	r2, [r5, #0x10]
	strh	r2, [r5, #0x20]
	mov	r4, #0
	add	r3, #8
.L16704:
	add	r4, #1
	strh	r2, [r3]
	add	r3, #2
	cmp	r4, #3
	bls	.L16704
.L1670e:
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8016670

.thumb_func_start Func_801671c
	push	{lr}
	mov	r1, #0xf0
	ldr	r3, =Func_80008d8
	lsl	r1, #4
	mov	r2, #0
	ldr	r0, =0x6002500
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_801671c

.thumb_func_start Func_8016738
	push	{lr}
	mov	r1, #0xf0
	ldr	r3, =Func_80008d8
	lsl	r1, #4
	ldr	r2, =0x44444444
	ldr	r0, =0x6002500
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_8016738

.thumb_func_start Func_8016758
	push	{r5, lr}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0xc4
	ldr	r3, [r3]
	lsl	r1, #3
	add	r2, r3, r1
	mov	r5, #0
	mov	r1, #0
	b	.L1676e
.L1676a:
	add	r2, #0x28
	add	r1, #1
.L1676e:
	cmp	r1, #3
	beq	.L16780
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L1677e
	ldrh	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.L1676a
.L1677e:
	mov	r5, r2
.L16780:
	cmp	r5, #0
	beq	.L167a2
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L16792
	bl	Func_801671c
	mov	r3, #0
	strh	r3, [r5, #6]
.L16792:
	mov	r3, #0
	strh	r3, [r5, #4]
	strh	r3, [r5, #0x14]
	mov	r2, #0xf
	strh	r3, [r5, #0x18]
	mov	r3, #0xa
	strh	r2, [r5, #0x16]
	strh	r3, [r5, #0x1a]
.L167a2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8016758

.thumb_func_start Func_80167ac
	ldr	r3, =iwram_3001e8c
	ldr	r4, =0xeae
	ldr	r2, [r3]
	ldrh	r1, [r0, #0x16]
	add	r3, r2, r4
	strh	r1, [r3]
	sub	r4, #2
	ldrh	r1, [r0, #0x18]
	add	r3, r2, r4
	strh	r1, [r3]
	ldr	r1, =0xea8
	ldrh	r3, [r0, #0x1a]
	add	r2, r1
	strh	r3, [r2]
	bx	lr
.func_end Func_80167ac

