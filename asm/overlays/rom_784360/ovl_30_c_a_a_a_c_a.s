	.include "macros.inc"

.thumb_func_start OvlFunc_884_20080b8
	push	{lr}
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc8
	ldr	r0, =.L3380
	b	.Lec
.Lc8:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	bne	.Ldc
	ldr	r0, =.L3560
	b	.Lec
.Ldc:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lea
	ldr	r0, =.L37d0
	b	.Lec
.Lea:
	ldr	r0, =.L3170
.Lec:
	pop	{r1}
	bx	r1
.func_end OvlFunc_884_20080b8

