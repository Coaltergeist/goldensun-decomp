	.include "macros.inc"

.thumb_func_start MapTransitionIn  @ 0x08091dc8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #8
	ldr	r0, [r3]
	add	r3, r5, r2
	ldr	r1, [r3]
	bl	ScreenTransitionIn
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end MapTransitionIn

.thumb_func_start MapTransitionOut  @ 0x08091df4
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #8
	ldr	r0, [r3]
	add	r3, r5, r2
	ldr	r1, [r3]
	bl	ScreenTransitionOut
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end MapTransitionOut

