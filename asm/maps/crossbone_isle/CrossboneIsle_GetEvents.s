	.include "macros.inc"

.thumb_func_start CrossboneIsle_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	bne	.Lm946_edc
	ldr	r0, =.Lm946_3904
	b	.Lm946_f06
.Lm946_edc:
	ldr	r3, =0x72
	cmp	r2, r3
	bne	.Lm946_ee6
	ldr	r0, =.Lm946_38e0
	b	.Lm946_f06
.Lm946_ee6:
	ldr	r3, =0x7b
	cmp	r2, r3
	bne	.Lm946_ef0
	ldr	r0, =.Lm946_39f4
	b	.Lm946_f06
.Lm946_ef0:
	ldr	r3, =0x7c
	cmp	r2, r3
	bne	.Lm946_efa
	ldr	r0, =gScript_932__0200bd48
	b	.Lm946_f06
.Lm946_efa:
	ldr	r3, =0x7d
	cmp	r2, r3
	bne	.Lm946_f04
	ldr	r0, =.Lm946_3d6c
	b	.Lm946_f06
.Lm946_f04:
	ldr	r0, =.Lm946_3880
.Lm946_f06:
	pop	{r1}
	bx	r1
.func_end CrossboneIsle_GetEvents

