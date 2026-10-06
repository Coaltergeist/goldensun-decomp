	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ModifyHP  @ 0x080783a4
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r0
	bl	GetUnit
	mov	r6, r0
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	mov	r1, #0x34
	ldrsh	r2, [r6, r1]
	add	r3, r5
	mov	r1, r2
	cmp	r3, r2
	bgt	.L783c8
	mov	r1, #0
	cmp	r3, #0
	blt	.L783c8
	mov	r1, r3
.L783c8:
	mov	r0, r7
	strh	r1, [r6, #0x38]
	bl	UpdateStatBarPercent
	mov	r2, #0x38
	ldrsh	r0, [r6, r2]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end ModifyHP
