	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800c004
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r1, #0x5c
	mov	r0, #6
	sub	sp, #4
	bl	Func_80048f4
	mov	r1, #0xe0
	lsl	r1, #5
	mov	r8, r0
	mov	r0, #5
	bl	Func_80048f4
	mov	r6, r0
	mov	r0, r7
	bl	Func_800bb20
	mov	r5, #0
	mov	r4, sp
	str	r5, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r6
	ldr	r2, =0x85000700
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r5, [r4]
	mov	r0, r4
	mov	r1, r8
	ldr	r2, =0x85000017
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	cmp	r7, #4
	bne	.Lc056
	ldr	r0, =Func_800d340
	ldr	r1, =0xc8a
	bl	Func_80041d8
	b	.Lc05e
.Lc056:
	ldr	r0, =Func_800cacc
	ldr	r1, =0xc8a
	bl	Func_80041d8
.Lc05e:
	sub	r3, r7, #3
	cmp	r3, #1
	bhi	.Lc070
	mov	r1, #0xc8
	ldr	r0, =Func_800c880
	lsl	r1, #4
	bl	Func_80041d8
	b	.Lc084
.Lc070:
	mov	r1, #0xc8
	ldr	r0, =Func_800c62c
	lsl	r1, #4
	bl	Func_80041d8
	ldr	r3, =iwram_3001d1c
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, =iwram_3001cc0
	str	r2, [r3]
.Lc084:
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0xf
	strb	r3, [r1, #6]
	strb	r2, [r1, #7]
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800c004

