	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_148
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xfa
	ldr	r5, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.Lc1_17e
	sub	r1, #0x76
	add	r3, r5, r1
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r3, #26
	cmp	r3, r2
	bne	.Lc1_17e
	ldr	r0, =0x141
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc1_17e
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.Lc1_17e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_148

