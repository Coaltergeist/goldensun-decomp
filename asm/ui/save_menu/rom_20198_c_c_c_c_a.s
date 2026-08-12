	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DecompressIcon  @ 0x08021be0
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r5, =0x278
	mov	r0, #0x31
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8015afc
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =gPtrs
	ldr	r1, =0x604
	add	r3, #0xc4
	add	r2, r6, r1
	ldr	r0, [r2]
	ldr	r3, [r3]
	mov	r1, r6
	bl	_call_via_r3
	mov	r0, #0x31
	bl	gfree
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end DecompressIcon

.thumb_func_start Func_8021c34  @ 0x08021c34
	push	{r5, lr}
	sub	sp, #4
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #6
	mov	r3, #4
	mov	r0, #0
	bl	CreateUIBox
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L37300
	mov	r2, #0
	mov	r3, #0
	bl	UIDrawText
	mov	r0, r5
	add	sp, #4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021c34

