	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_20097ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm948_17c2
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_17c2:
	ldr	r0, [r0, #0x10]
	asr	r3, #20
	mov	r8, r3
	cmp	r0, #0
	bge	.Lm948_17d0
	ldr	r3, =0xfffff
	add	r0, r3
.Lm948_17d0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0x24a
	ldr	r5, =gState
	ldr	r7, [r3]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	asr	r6, r0, #20
	cmp	r3, #0xc
	beq	.Lm948_181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_181e
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lm948_181e
	mov	r3, r8
	cmp	r3, #0x13
	bne	.Lm948_181e
	mov	r3, r6
	sub	r3, #0xf
	cmp	r3, #1
	bhi	.Lm948_181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x60
	strh	r3, [r2]
.Lm948_181e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20097ac

