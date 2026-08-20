	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Gondowan_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Lm958_dae
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm958_daa
	ldr	r0, =.Lm958_1bcc
	b	.Lm958_dc4
.Lm958_daa:
	ldr	r0, =.Lm958_1b48
	b	.Lm958_dc4
.Lm958_dae:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Lm958_db8
	ldr	r0, =.Lm958_1c80
	b	.Lm958_dc4
.Lm958_db8:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Lm958_dc2
	ldr	r0, =gScript_885__02009ce0
	b	.Lm958_dc4
.Lm958_dc2:
	ldr	r0, =.Lm958_1b3c
.Lm958_dc4:
	pop	{r1}
	bx	r1
.func_end Gondowan_GetEvents

