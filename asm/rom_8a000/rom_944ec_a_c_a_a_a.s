	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80958a8
	push	{lr}
	mov	r1, #0xe4
	lsl	r1, #3
	mov	r0, #0x38
	sub	sp, #4
	bl	Func_80048b0
	mov	r3, #0
	mov	r1, r0
	mov	r0, sp
	str	r3, [r0]
	ldr	r2, =0x850001c8
	ldr	r3, =REG_DMA3SAD
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8095884
	bl	StartTask
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80958a8

.thumb_func_start Func_80958e4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f30
	ldr	r0, =Func_8095884
	ldr	r5, [r3]
	bl	Func_8004278
	mov	r6, r5
	add	r6, #0x9d
	add	r5, #0x58
	mov	r7, #0x17
.L958f8:
	ldrb	r3, [r6]
	lsl	r3, #24
	add	r6, #0x48
	cmp	r3, #0
	beq	.L95908
	mov	r0, r5
	bl	Func_809bb34
.L95908:
	sub	r7, #1
	add	r5, #0x48
	cmp	r7, #0
	bge	.L958f8
	mov	r0, #0x38
	bl	Func_8002dd8
	mov	r0, #1
	bl	Func_80030f8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80958e4

