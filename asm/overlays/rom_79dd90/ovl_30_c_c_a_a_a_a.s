	.include "macros.inc"

.thumb_func_start OvlFunc_910_200809c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.Ld8
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc2
	ldr	r3, =.Lc7c
	mov	r2, #1
	add	r3, #0x76
	strb	r2, [r3]
.Lc2:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld4
	ldr	r3, =.Lc7c
	mov	r2, #0
	add	r3, #0x46
	strb	r2, [r3]
.Ld4:
	ldr	r0, =.Lc7c
	b	.Lda
.Ld8:
	ldr	r0, =gScript_889__02008c64
.Lda:
	pop	{r1}
	bx	r1
.func_end OvlFunc_910_200809c

