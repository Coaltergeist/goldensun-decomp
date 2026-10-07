	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_Transition300  @ 0x08090658
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ecc
	ldr	r1, =0x53c
	ldr	r6, [r3]
	add	r4, r6, r1
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	cmp	r2, #0
	beq	.L906cc
	ldr	r3, =0x53d
	add	r1, r6, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L90698
	mov	r3, #0
	strb	r3, [r4]
	ldr	r0, =Task_Transition300
	bl	StopTask
	ldr	r2, =REG_DMA0SAD
	ldr	r3, =0xc5ff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldr	r3, =0x7fff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldrh	r3, [r2, #0xa]
	b	.L9076a
.L90698:
	ldr	r7, =0x53b
	add	r3, r6, r7
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0x53a
	add	r5, r6, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =divsi3_RAM
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r7, #0x11
	add	r3, r0
	add	r2, r6, r7
	strh	r3, [r2]
.L906cc:
	ldr	r1, =0x52a
	ldr	r2, =0x539
	add	r3, r6, r1
	ldrh	r3, [r3]
	add	r1, r6, r2
	sub	r0, r3, #1
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	mov	r3, #0x20
	and	r3, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L906ec
	mov	r5, #0xf
.L906ec:
	mov	r3, #0x1f
	and	r3, r0
	lsl	r0, r3, #1
	ldr	r3, =gScript_0809e8ee
	mov	r7, #0x3f
	mov	r4, #0
	mov	r12, r3
	mov	r14, r7
.L906fc:
	mov	r1, r14
	mov	r3, r0
	and	r3, r1
	mov	r7, r12
	ldrb	r2, [r7, r3]
	mov	r7, #0xa1
	lsr	r3, r2, #1
	add	r3, r6, r3
	lsl	r7, #3
	add	r1, r3, r7
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L90726
	ldrb	r3, [r1]
	mov	r2, #0xf
	and	r2, r3
	lsl	r3, r5, #4
	orr	r2, r3
	strb	r2, [r1]
	b	.L90730
.L90726:
	ldrb	r2, [r1]
	mov	r3, #0xf0
	and	r3, r2
	orr	r3, r5
	strb	r3, [r1]
.L90730:
	add	r4, #1
	add	r0, #1
	cmp	r4, #1
	bls	.L906fc
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L90768
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	mov	r1, #0xa1
	lsl	r1, #3
	add	r3, #4
	add	r2, r6, r1
	stmia	r3!, {r2}
	mov	r2, #0xc0
	lsl	r2, #19
	stmia	r3!, {r2}
	ldr	r2, =0x84000008
	str	r2, [r3]
.L90768:
	strh	r4, [r0]
.L9076a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Transition300

