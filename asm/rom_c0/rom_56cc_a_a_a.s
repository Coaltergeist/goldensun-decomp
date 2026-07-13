	.include "macros.inc"
	.include "gba.inc"

	.section .text.before, "ax", %progbits

.thumb_func_start Func_80056cc  @ 0x080056cc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x88
	lsl	r1, #5
	mov	r0, #0x33
	sub	sp, #0x18
	bl	galloc_ewram
	mov	r3, #0
	mov	r11, r0
	add	r0, sp, #4
	str	r3, [r0]
	mov	r1, r11
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000440
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =Data_8000864
	mov	r0, #2
	bl	SetFlashTimerIntr
	mov	r7, #0
	b	.L570c
.L5704:
	mov	r0, #1
	bl	WaitFrames
	add	r7, #1
.L570c:
	cmp	r7, #7
	bhi	.L571c
	bl	IdentifyFlash
	lsl	r0, #16
	cmp	r0, #0
	bne	.L5704
	b	.L572c
.L571c:
	mov	r0, #1
	b	.L57fc

	.pool_aligned

.L572c:
	mov	r2, r11
	mov	r3, #8
	add	r2, #0x40
	add	r3, sp
	mov	r6, r11
	str	r2, [sp]
	mov	r8, r3
	mov	r2, #0x20
	mov	r3, #0x10
	add	r2, r6
	add	r3, r6
	mov	r7, #0
	mov	r9, r2
	mov	r10, r3
.L5748:
	mov	r3, #0
	strb	r3, [r6]
	mov	r2, r10
	mov	r3, #0x10
	strb	r3, [r2]
	ldr	r3, =0
	mov	r2, r9
	strh	r3, [r2]
	mov	r0, r7
	bl	Func_80058ac
	ldr	r3, =REG_DMA3SAD
	mov	r5, r0
	add	r1, sp, #8
	ldr	r0, [sp]
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L576c:
	ldr	r2, =REG_DMA3SAD
	ldr	r3, [r2, #8]
	mov	r2, #0x80
	lsl	r2, #24
	and	r3, r2
	cmp	r3, #0
	bne	.L576c
	mov	r0, r8
	ldr	r1, =.L79b0
	mov	r2, #7
	bl	Func_8005c08
	b	.L5798

	.pool_aligned

.L5798:
	cmp	r0, #0
	bne	.L57ea
	mov	r2, r8
	ldrh	r3, [r2, #0xa]
	mov	r2, r9
	strh	r3, [r2]
	mov	r3, r8
	ldrb	r2, [r3, #7]
	mov	r1, r2
	cmp	r1, #0xf
	bhi	.L57ea
	cmp	r5, #0
	bne	.L57ea
	mov	r3, #1
	strb	r3, [r6]
	mov	r3, r10
	strb	r2, [r3]
	cmp	r5, r7
	bcs	.L57ea
	mov	r12, r1
	mov	r1, r11
	mov	r0, r1
	mov	r4, #0
	add	r0, #0x20
.L57c8:
	ldrb	r3, [r1, #0x10]
	cmp	r3, r12
	bne	.L57e0
	mov	r3, r8
	ldrh	r3, [r3, #0xa]
	ldrh	r2, [r0]
	mov	r14, r3
	cmp	r2, r14
	bcs	.L57de
	strb	r4, [r1]
	b	.L57e0
.L57de:
	strb	r4, [r6]
.L57e0:
	add	r5, #1
	add	r1, #1
	add	r0, #2
	cmp	r5, r7
	bcc	.L57c8
.L57ea:
	mov	r2, #2
	mov	r3, #1
	add	r7, #1
	add	r6, #1
	add	r9, r2
	add	r10, r3
	cmp	r7, #0xf
	bls	.L5748
	mov	r0, #0
.L57fc:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80056cc

.thumb_func_start Func_8005810  @ 0x08005810
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f1c
	sub	sp, #0x40
	ldr	r2, [r3]
	mov	r6, #0
	mov	r5, #0
	mov	r1, sp
.L581e:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r3, #0
	bne	.L582a
	stmia	r1!, {r5}
	add	r6, #1
.L582a:
	add	r5, #1
	cmp	r5, #0xf
	bls	.L581e
	mov	r5, #0x10
	cmp	r6, #0
	beq	.L585a
	cmp	r6, #1
	bne	.L5848
	ldr	r5, [sp]
	bl	Func_8005b24
	cmp	r0, #0x10
	bne	.L585a
	mov	r5, #0x10
	b	.L585a
.L5848:
	bl	Random
	mov	r1, r6
	bl	__umodsi3
	mov	r5, r0
	mov	r2, sp
	lsl	r3, r5, #2
	ldr	r5, [r2, r3]
.L585a:
	mov	r0, r5
	add	sp, #0x40
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8005810

	.section .text.after, "ax", %progbits

.thumb_func_start Func_80058ac  @ 0x080058ac
	push	{r5, lr}
	ldr	r3, =iwram_3001f1c
	ldr	r5, [r3]
	lsl	r0, #16
	add	r5, #0x40
	mov	r3, #0x80
	mov	r2, r5
	lsr	r0, #16
	lsl	r3, #5
	mov	r1, #0
	sub	sp, #0x10
	bl	ReadFlash
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, sp
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L58d8:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L58d8
	bl	Func_8005ae0
	mov	r3, sp
	ldrh	r3, [r3, #8]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	add	sp, #0x10
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80058ac
