	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LamakanDesert_GetActors
	push	{r5, lr}
	ldr	r5, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.Lm933_444
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.Lm933_444
	ldr	r0, =0x90a
	bl	__SetFlag
.Lm933_444:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.Lm933_458
	ldr	r0, =.Lm933_23c8
	b	.Lm933_46e
.Lm933_458:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.Lm933_462
	ldr	r0, =.Lm933_2410
	b	.Lm933_46e
.Lm933_462:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.Lm933_46c
	ldr	r0, =.Lm933_24b8
	b	.Lm933_46e
.Lm933_46c:
	ldr	r0, =.Lm933_23b0
.Lm933_46e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end LamakanDesert_GetActors

