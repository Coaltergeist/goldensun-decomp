	.include "macros.inc"

.thumb_func_start MccoysPalaceExt_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.Lm910_d8
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm910_c2
	ldr	r3, =.Lm910_c7c
	mov	r2, #1
	add	r3, #0x76
	strb	r2, [r3]
.Lm910_c2:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm910_d4
	ldr	r3, =.Lm910_c7c
	mov	r2, #0
	add	r3, #0x46
	strb	r2, [r3]
.Lm910_d4:
	ldr	r0, =.Lm910_c7c
	b	.Lm910_da
.Lm910_d8:
	ldr	r0, =gScript_889__02008c64
.Lm910_da:
	pop	{r1}
	bx	r1
.func_end MccoysPalaceExt_GetActors

