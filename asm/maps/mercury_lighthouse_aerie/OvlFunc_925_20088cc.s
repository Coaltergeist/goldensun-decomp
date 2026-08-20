	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_925_20088cc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0
	mov	r0, #0
	ldr	r5, [r3]
	mov	r8, r2
	bl	__MapActor_GetActor
	mov	r7, #0xa0
	lsl	r7, #2
	mov	r10, r0
	mov	r6, #8
	add	r5, #0x34
.Lm925_8ec:
	ldmia	r5!, {r1}
	cmp	r1, #0
	beq	.Lm925_910
	ldr	r3, [r1, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf2
	bne	.Lm925_910
	mov	r0, r10
	add	r1, #8
	add	r0, #8
	bl	OvlFunc_925_2008890
	cmp	r0, r7
	bge	.Lm925_910
	mov	r7, r0
	mov	r8, r6
.Lm925_910:
	add	r6, #1
	cmp	r6, #0x41
	bls	.Lm925_8ec
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_925_20088cc

