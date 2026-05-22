	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_2f10
	push	{lr}
	ldr	r0, =2
	bl	Func_2f40
	ldr	r4, =iwram_7804
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0
	str	r3, [r4, #0xc]
	pop	{r0}
	bx	r0
.func_end Func_2f10

.thumb_func_start Func_2f3c
	bx	lr
.func_end Func_2f3c

.thumb_func_start Func_2f40
	ldr	r3, =Data_320000
	lsl	r0, #2
	ldr	r0, [r3, r0]
	bx	lr
.func_end Func_2f40

.thumb_func_start Func_2f4c
	push	{r5, r6, r7, lr}
	asr	r7, r1, #1
	mov	r6, #1
	add	r0, #2
	cmp	r6, r7
	bge	.L2fa4
	mov	r3, #0xf8
	lsl	r3, #8
	mov	r12, r3
	mov	r3, #0xf0
	lsl	r3, #8
	ldr	r5, =0x7ff
	mov	r14, r3
	sub	r0, #4
.L2f68:
	ldrh	r2, [r0, #4]
	mov	r3, r12
	mov	r1, r2
	and	r1, r3
	add	r0, #2
	cmp	r1, r12
	bne	.L2f9e
	ldrh	r3, [r0]
	mov	r4, r3
	and	r4, r1
	cmp	r4, r14
	bne	.L2f9e
	and	r3, r5
	and	r2, r5
	lsl	r2, #1
	lsl	r3, #12
	orr	r3, r2
	lsl	r2, r6, #1
	sub	r3, r2
	lsr	r2, r3, #12
	lsr	r3, #1
	and	r2, r5
	and	r3, r5
	orr	r2, r4
	orr	r3, r1
	strh	r2, [r0]
	strh	r3, [r0, #2]
.L2f9e:
	add	r6, #1
	cmp	r6, r7
	blt	.L2f68
.L2fa4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_2f4c

.thumb_func_start Func_2fb0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r1
	bl	Func_2f40
	mov	r1, r8
	bl	Func_5340
	mov	r10, r0
	ldr	r5, =0x7c
	mov	r0, r5
	bl	Func_4938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_2d5c
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r10
	bl	_call_via_r6
	mov	r0, r6
	bl	Func_2df0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_2fb0

.thumb_func_start Func_3008
	bx	lr
.func_end Func_3008

.thumb_func_start Func_300c
	push	{r5, r6, lr}
	ldr	r6, =REG_IME
	mov	r5, #0
	strh	r5, [r6]
	ldr	r4, =iwram_0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =__load_start_rom_770
	mov	r1, r4
	ldr	r2, =0x84000500
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_7ffc
	ldr	r0, =.L7320
	str	r4, [r3]
	ldr	r1, =Data_850
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8400000e
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	sub	r3, #0xd0
	strh	r5, [r3]
	ldr	r2, =0xc3ff
	ldr	r3, =REG_KEYCNT
	strh	r2, [r3]
	ldr	r2, =0x1001
	add	r3, #0xce
	strh	r2, [r3]
	mov	r3, #1
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_300c

.thumb_func_start Func_307c
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r1, r2
	cmp	r0, #0xd
	bhi	.L30dc
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r2, #1
	ldr	r4, =REG_IE
	ldrh	r3, [r4]
	lsl	r2, r0
	bic	r3, r2
	cmp	r1, #0
	beq	.L309e
	orr	r3, r2
.L309e:
	strh	r3, [r4]
	cmp	r0, #2
	bhi	.L30c4
	mov	r4, #8
	lsl	r4, r0
	mvn	r2, r4
	cmp	r0, #2
	bne	.L30b6
	lsl	r3, r5, #8
	orr	r4, r3
	mov	r3, #0xff
	and	r2, r3
.L30b6:
	ldr	r5, =REG_DISPSTAT
	ldrh	r3, [r5]
	and	r3, r2
	cmp	r1, #0
	beq	.L30c2
	orr	r3, r4
.L30c2:
	strh	r3, [r5]
.L30c4:
	cmp	r1, #0
	beq	.L30d0
	ldr	r2, =Data_850
	lsl	r3, r0, #2
	str	r1, [r2, r3]
	b	.L30d8
.L30d0:
	ldr	r1, =Data_850
	ldr	r3, =Func_3008
	lsl	r2, r0, #2
	str	r3, [r1, r2]
.L30d8:
	ldr	r3, =REG_IME
	strh	r6, [r3]
.L30dc:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_307c

	.section .rodata

.L7320:
	.incrom 0x7320, 0x7676
