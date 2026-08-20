	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b150
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #0x17
	cmp	r0, #1
	beq	.Lm943_316c
	cmp	r0, #1
	bcc	.Lm943_3168
	cmp	r0, #2
	beq	.Lm943_3170
	cmp	r0, #3
	beq	.Lm943_3178
	b	.Lm943_317c
.Lm943_3168:
	ldr	r6, =0x92c
	b	.Lm943_317c
.Lm943_316c:
	ldr	r6, =0x935
	b	.Lm943_317c
.Lm943_3170:
	ldr	r6, =0x917
	b	.Lm943_317c
.Lm943_3174:
	mov	r0, r7
	b	.Lm943_3194
.Lm943_3178:
	mov	r6, #0x99
	lsl	r6, #4
.Lm943_317c:
	mov	r5, #0
.Lm943_317e:
	mov	r0, r6
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_3174
	add	r5, #1
	add	r6, #1
	add	r7, #1
	cmp	r5, #8
	bls	.Lm943_317e
	mov	r0, #0
.Lm943_3194:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_200b150

