	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809ade8  @ 0x0809ade8
	push	{r5, lr}
	bl	GetFieldActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L9ae28
	ldr	r2, [r5, #0x6c]
	ldr	r3, =Func_809ad70
	cmp	r2, r3
	bne	.L9ae18
	ldr	r2, =gState
	mov	r3, #0x94
	lsl	r3, #2
	add	r1, r2, r3
	ldr	r3, [r1]
	str	r3, [r5, #0x6c]
	mov	r3, #0
	str	r3, [r1]
	ldr	r3, =0x249
	add	r2, r3
	mov	r1, #0
	ldrsb	r1, [r2, r1]
	bl	_Actor_SetColorswap
.L9ae18:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0x10
	bl	_Actor_SetAnimSpeed
.L9ae28:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_809ade8
