	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200935c
	push	{r5, lr}
	ldr	r2, =.Lm897_3b70
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lm897_136c
	sub	r3, #1
	str	r3, [r2]
	b	.Lm897_13fc
.Lm897_136c:
	ldr	r5, =.Lm897_3b6c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm897_137a
	sub	r3, #1
	str	r3, [r5]
	b	.Lm897_1384
.Lm897_137a:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	str	r0, [r5]
.Lm897_1384:
	ldr	r3, =.Lm897_3b6c
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.Lm897_13b0
	cmp	r2, #2
	bhi	.Lm897_1396
	cmp	r2, #1
	beq	.Lm897_13c8
	b	.Lm897_13e0
.Lm897_1396:
	cmp	r2, #3
	bne	.Lm897_13e0
	ldr	r3, =.Lm897_3b68
	str	r2, [r3]
	ldr	r5, =.Lm897_3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x28
	b	.Lm897_13fa
.Lm897_13b0:
	ldr	r2, =.Lm897_3b68
	mov	r3, #0xf
	str	r3, [r2]
	ldr	r5, =.Lm897_3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x50
	b	.Lm897_13fa
.Lm897_13c8:
	ldr	r2, =.Lm897_3b68
	mov	r3, #0x3f
	str	r3, [r2]
	ldr	r5, =.Lm897_3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	add	r3, #0xa0
	b	.Lm897_13fa
.Lm897_13e0:
	ldr	r2, =.Lm897_3b68
	mov	r3, #0x7f
	str	r3, [r2]
	ldr	r5, =.Lm897_3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #5
	mov	r2, #0xa0
	lsr	r3, #16
	lsl	r2, #1
	add	r3, r2
.Lm897_13fa:
	str	r3, [r5]
.Lm897_13fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200935c

