	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008a90
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #1
	neg	r2, r2
	ldrh	r0, [r6]
	cmp	r3, r2
	beq	.Lm916_b32
	mov	r8, r2
.Lm916_aa8:
	mov	r2, #6
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.Lm916_ac8
	mov	r2, #2
	ldrsh	r3, [r6, r2]
	mov	r2, #0x80
	lsl	r2, #14
	lsl	r3, #20
	add	r1, r3, r2
	mov	r2, #4
	ldrsh	r3, [r6, r2]
	mov	r2, #0x80
	lsl	r3, #20
	lsl	r2, #12
	b	.Lm916_ade
.Lm916_ac8:
	mov	r2, #2
	ldrsh	r3, [r6, r2]
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r3, #20
	add	r1, r3, r2
	mov	r2, #4
	ldrsh	r3, [r6, r2]
	mov	r2, #0x80
	lsl	r3, #20
	lsl	r2, #14
.Lm916_ade:
	add	r3, r2
	lsl	r0, #16
	asr	r0, #16
	mov	r2, #0
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm916_b32
	mov	r1, #1
	str	r5, [r6, #8]
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0x20
	strh	r3, [r5, #0x20]
	mov	r0, #0
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	bl	__Func_8011f54
	ldr	r3, [r5, #0xc]
	lsl	r0, #16
	add	r3, r0
	add	r6, #0xc
	str	r3, [r5, #0xc]
	ldrh	r3, [r6]
	str	r0, [r5, #0x14]
	mov	r0, r3
	lsl	r3, r0, #16
	asr	r3, #16
	cmp	r3, r8
	bne	.Lm916_aa8
.Lm916_b32:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008a90

