	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80049ac
	push	{r5, lr}
	mov	r1, #0x30
	mov	r0, #2
	ldr	r5, =iwram_3001d2c
	bl	Func_80048f4
	ldr	r2, =iwram_3001cc4
	mov	r3, #0
	str	r3, [r2]
	str	r0, [r5]
	ldr	r3, =Data_8000ac0
	mov	r0, r3
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80049ac

.thumb_func_start Func_80049e8
	push	{r5, lr}
	ldr	r5, =iwram_3001cc4
	ldr	r3, [r5]
	cmp	r3, #0
	bgt	.L4a0c
	ldr	r4, =iwram_3001d2c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_8000ac0
	ldr	r1, [r4]
	ldr	r2, =0x8400000c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	ldr	r3, [r4]
	add	r3, #0x30
	str	r3, [r4]
.L4a0c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80049e8

