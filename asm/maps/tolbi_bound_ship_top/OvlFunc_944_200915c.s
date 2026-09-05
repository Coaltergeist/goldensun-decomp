	.include "macros.inc"

.thumb_func_start OvlFunc_944_200915c
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.Lm944_1176
	cmp	r0, #1
	bcc	.Lm944_1172
	cmp	r0, #2
	beq	.Lm944_117a
	cmp	r0, #3
	beq	.Lm944_1186
	b	.Lm944_118a
.Lm944_1172:
	ldr	r6, =0x92c
	b	.Lm944_118a
.Lm944_1176:
	ldr	r6, =0x935
	b	.Lm944_118a
.Lm944_117a:
	ldr	r6, =0x917
	b	.Lm944_118a
.Lm944_117e:
	ldr	r3, =.Lm944_18f8
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.Lm944_119e
.Lm944_1186:
	mov	r6, #0x99
	lsl	r6, #4
.Lm944_118a:
	mov	r5, #0
.Lm944_118c:
	add	r0, r6, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm944_117e
	add	r5, #1
	cmp	r5, #8
	bls	.Lm944_118c
	mov	r0, #0
.Lm944_119e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_200915c

