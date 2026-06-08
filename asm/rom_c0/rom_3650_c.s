	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800383c
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L386a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r3]
.L386a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800383c

.thumb_func_start SetRegAnimDest
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L38aa
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L38aa:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end SetRegAnimDest

.thumb_func_start Func_80038bc
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L38ea
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xc0
	lsl	r2, #10
	str	r2, [r3]
.L38ea:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80038bc

.thumb_func_start Func_80038fc
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L392a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xa0
	lsl	r2, #11
	str	r2, [r3]
.L392a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80038fc

.thumb_func_start Func_800393c
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L396a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xc0
	lsl	r2, #11
	str	r2, [r3]
.L396a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800393c

.thumb_func_start Func_800397c
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L39aa
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xe0
	lsl	r2, #11
	str	r2, [r3]
.L39aa:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800397c

.thumb_func_start Func_80039bc
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L39ea
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0x90
	lsl	r2, #12
	str	r2, [r3]
.L39ea:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80039bc

.thumb_func_start Func_80039fc
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L3a2a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xa0
	lsl	r2, #12
	str	r2, [r3]
.L3a2a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80039fc

.thumb_func_start Func_8003a3c
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L3a6a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xb0
	lsl	r2, #12
	str	r2, [r3]
.L3a6a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8003a3c

.thumb_func_start UploadPalette
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r6, =gDMATaskCount
	ldrh	r5, [r6]
	mov	r7, sp
	cmp	r5, #0
	beq	.L3abc
	ldr	r2, =0x68
	mov	r1, #0
	lsr	r2, #2
	lsl	r3, r2, #2
	mov	r10, r1
	mov	r4, #0x84
	mov	r1, sp
	sub	r1, r3
	lsl	r4, #24
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_8002cf4
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	mov	r1, r5
	bl	_call_via_sp
	mov	r3, r10
	strh	r3, [r6]
	mov	sp, r8
.L3abc:
	mov	sp, r7
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end UploadPalette
