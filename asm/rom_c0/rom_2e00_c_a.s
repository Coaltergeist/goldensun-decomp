	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8002f10
	push	{lr}
	ldr	r0, =2
	bl	GetFile
	ldr	r4, =iwram_3007804
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0
	str	r3, [r4, #0xc]
	pop	{r0}
	bx	r0
.func_end Func_8002f10

