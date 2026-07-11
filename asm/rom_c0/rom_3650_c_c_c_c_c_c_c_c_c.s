	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UploadPalette  @ 0x08003a7c
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
