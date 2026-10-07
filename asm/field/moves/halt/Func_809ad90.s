	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809ad90  @ 0x0809ad90
	push	{lr}
	bl	GetFieldActor
	cmp	r0, #0
	beq	.L9add6
	ldr	r1, =gState
	mov	r3, #0x94
	lsl	r3, #2
	add	r2, r1, r3
	ldr	r3, [r0, #0x6c]
	str	r3, [r2]
	ldr	r3, =0x249
	add	r1, r3
	mov	r3, #0
	strb	r3, [r1]
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9adc4
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	cmp	r3, #0
	beq	.L9adc4
	ldrb	r3, [r3, #5]
	strb	r3, [r1]
.L9adc4:
	ldr	r3, =Func_809ad70
	mov	r2, r0
	str	r3, [r0, #0x6c]
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r1, #0
	bl	_Actor_SetAnimSpeed
.L9add6:
	pop	{r0}
	bx	r0
.func_end Func_809ad90
