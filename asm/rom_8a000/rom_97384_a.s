	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8097384
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0x9a
	ldr	r5, [r3, #0x14]
	lsl	r2, #5
	ldr	r4, [r3]
	add	r0, r5, r2
	ldr	r2, =0x776
	ldr	r3, =REG_DMA3SAD
	add	r1, r4, r2
	ldr	r2, =0x84000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0xcb8
	add	r3, r4, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L973bc
	mov	r2, #0xe0
	lsl	r2, #4
	add	r0, r5, r2
	ldr	r2, =0x236
	ldr	r3, =REG_DMA3SAD
	add	r1, r4, r2
	ldr	r2, =0x84000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L973bc:
	mov	r2, #0xe0
	lsl	r2, #4
	add	r0, r5, r2
	mov	r2, #0xe0
	lsl	r2, #2
	add	r1, r5, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x840002a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_3001e40
	mov	r0, #0xa4
	ldr	r5, [r3]
	lsl	r0, #1
	mov	r3, #7
	and	r5, r3
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L973e6
	mov	r5, #0
.L973e6:
	ldr	r0, =0x149
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L973f2
	mov	r5, #1
.L973f2:
	mov	r0, #0xa5
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L97400
	mov	r5, #2
.L97400:
	ldr	r0, =0x14b
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L9740c
	mov	r5, #3
.L9740c:
	mov	r0, #0xa6
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L9741a
	mov	r5, #4
.L9741a:
	ldr	r0, =0x14d
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L97426
	mov	r5, #5
.L97426:
	mov	r0, #0xa7
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L97434
	mov	r5, #6
.L97434:
	ldr	r0, =0x14f
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L97440
	mov	r5, #7
.L97440:
	ldr	r3, =.La0108
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	mov	r1, #1
	bl	Func_8091200
	mov	r0, #8
	bl	Func_8091254
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8097384

