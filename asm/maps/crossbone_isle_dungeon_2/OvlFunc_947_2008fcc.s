	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2008fcc
	push	{r5, lr}
	mov	r5, r3
	ldr	r3, =iwram_3001e70
	mov	r4, r2
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.Lm947_1008
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	lsl	r0, r4, #7
	ldr	r2, [r2, r3]
	add	r0, r1, r0
	lsl	r0, #2
	add	r0, r2, r0
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x84000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lm947_1000:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_1000
.Lm947_1008:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2008fcc

