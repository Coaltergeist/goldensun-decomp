	.include "macros.inc"

.thumb_func_start OvlFunc_939_2008350
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.L36e
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L36e
	ldr	r0, =gScript_918__02009e04
	b	.L370
.L36e:
	ldr	r0, =.L1dcc
.L370:
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_2008350

.thumb_func_start OvlFunc_939_2008388
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.L3a6
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L3a6
	ldr	r0, =.L1f64
	b	.L3a8
.L3a6:
	ldr	r0, =gOvl_02009e14
.L3a8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_2008388

