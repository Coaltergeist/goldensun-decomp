	.include "macros.inc"
	.include "gba.inc"

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

