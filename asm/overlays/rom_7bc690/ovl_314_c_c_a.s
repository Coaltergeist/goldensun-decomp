	.include "macros.inc"

.thumb_func_start OvlFunc_933_200841c
	push	{r5, lr}
	ldr	r5, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L444
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L444
	ldr	r0, =0x90a
	bl	__SetFlag
.L444:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L458
	ldr	r0, =.L23c8
	b	.L46e
.L458:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L462
	ldr	r0, =.L2410
	b	.L46e
.L462:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L46c
	ldr	r0, =.L24b8
	b	.L46e
.L46c:
	ldr	r0, =.L23b0
.L46e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_933_200841c

.thumb_func_start OvlFunc_933_2008498
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4be
	ldr	r0, =0x8b3
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4be
	ldr	r0, =0x8b3
	bl	__SetFlag
	ldr	r0, =0x8b2
	bl	__SetFlag
.L4be:
	mov	r0, #0x7b
	bl	__PlaySound
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2008498

