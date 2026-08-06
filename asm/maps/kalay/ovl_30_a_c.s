	.include "macros.inc"

.thumb_func_start OvlFunc_936_2008040
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.Lm936_9e
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	cmp	r0, #1
	beq	.Lm936_74
	cmp	r0, #1
	bcc	.Lm936_6a
	cmp	r0, #4
	bhi	.Lm936_8c
	cmp	r0, #3
	bcc	.Lm936_8c
	b	.Lm936_7e
.Lm936_6a:
	mov	r0, r5
	mov	r1, #3
	bl	__Actor_SetAnim
	b	.Lm936_8c
.Lm936_74:
	mov	r0, r5
	mov	r1, #4
	bl	__Actor_SetAnim
	b	.Lm936_8c
.Lm936_7e:
	bl	__Random
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
.Lm936_8c:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.Lm936_a4
.Lm936_9e:
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
.Lm936_a4:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_2008040

.thumb_func_start OvlFunc_936_20080ac
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Lm936_e0
	bl	__Random
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.Lm936_e4
	mov	r2, r3
.Lm936_e0:
	sub	r3, r2, #1
	strh	r3, [r6]
.Lm936_e4:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_20080ac

.thumb_func_start Kalay_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.Lm936_104
	ldr	r0, =.Lm936_42c8
	b	.Lm936_138
.Lm936_104:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.Lm936_10e
	ldr	r0, =.Lm936_4448
	b	.Lm936_138
.Lm936_10e:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.Lm936_118
	ldr	r0, =.Lm936_44a8
	b	.Lm936_138
.Lm936_118:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.Lm936_122
	ldr	r0, =.Lm936_4520
	b	.Lm936_138
.Lm936_122:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.Lm936_12c
	ldr	r0, =.Lm936_4580
	b	.Lm936_138
.Lm936_12c:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.Lm936_136
	ldr	r0, =gScript_943__0200c628
	b	.Lm936_138
.Lm936_136:
	ldr	r0, =.Lm936_4298
.Lm936_138:
	pop	{r1}
	bx	r1
.func_end Kalay_GetEntrances

