	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8005810  @ 0x08005810
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f1c
	sub	sp, #0x40
	ldr	r2, [r3]
	mov	r6, #0
	mov	r5, #0
	mov	r1, sp
.L581e:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r3, #0
	bne	.L582a
	stmia	r1!, {r5}
	add	r6, #1
.L582a:
	add	r5, #1
	cmp	r5, #0xf
	bls	.L581e
	mov	r5, #0x10
	cmp	r6, #0
	beq	.L585a
	cmp	r6, #1
	bne	.L5848
	ldr	r5, [sp]
	bl	Func_8005b24
	cmp	r0, #0x10
	bne	.L585a
	mov	r5, #0x10
	b	.L585a
.L5848:
	bl	Random
	mov	r1, r6
	bl	__umodsi3
	mov	r5, r0
	mov	r2, sp
	lsl	r3, r5, #2
	ldr	r5, [r2, r3]
.L585a:
	mov	r0, r5
	add	sp, #0x40
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8005810

