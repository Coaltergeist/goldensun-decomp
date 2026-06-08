	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2009528
	push	{lr}
	bl	__CutsceneStart
	bl	OvlFunc_947_2009268
	cmp	r0, #0
	bne	.L153a
	bl	OvlFunc_947_20083a8
.L153a:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009528

.thumb_func_start OvlFunc_947_2009544
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_947_2008758
	cmp	r0, #0
	beq	.L156c
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_947_20088ec
.L156c:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009544

.thumb_func_start OvlFunc_947_2009578
	push	{r5, r6, lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	ldr	r5, =iwram_3001ad4
	ldr	r6, =REG_BG1HOFS
	cmp	r3, #0xe3
	beq	.L158a
	cmp	r3, #0x2e
	bhi	.L159e
.L158a:
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L3738
	ldr	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcs	.L159e
	ldr	r5, =.L372c
.L159e:
	ldmia	r5!, {r3}
	str	r3, [r6]
	ldr	r6, =REG_BG2HOFS
	ldmia	r5!, {r3}
	stmia	r6!, {r3}
	ldr	r3, [r5]
	str	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009578

