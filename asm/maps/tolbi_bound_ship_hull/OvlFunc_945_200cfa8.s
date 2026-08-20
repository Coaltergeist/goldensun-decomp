	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200cfa8
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #8
	cmp	r1, #0
	bne	.Lm945_4fb4
	mov	r7, #0x12
.Lm945_4fb4:
	cmp	r0, #1
	beq	.Lm945_4fca
	cmp	r0, #1
	bcc	.Lm945_4fc6
	cmp	r0, #2
	beq	.Lm945_4fce
	cmp	r0, #3
	beq	.Lm945_4fd6
	b	.Lm945_4fda
.Lm945_4fc6:
	ldr	r6, =0x92c
	b	.Lm945_4fda
.Lm945_4fca:
	ldr	r6, =0x935
	b	.Lm945_4fda
.Lm945_4fce:
	ldr	r6, =0x917
	b	.Lm945_4fda
.Lm945_4fd2:
	mov	r0, r7
	b	.Lm945_4ff2
.Lm945_4fd6:
	mov	r6, #0x99
	lsl	r6, #4
.Lm945_4fda:
	mov	r5, #0
.Lm945_4fdc:
	mov	r0, r6
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_4fd2
	add	r5, #1
	add	r6, #1
	add	r7, #1
	cmp	r5, #8
	bls	.Lm945_4fdc
	mov	r0, #0
.Lm945_4ff2:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200cfa8

