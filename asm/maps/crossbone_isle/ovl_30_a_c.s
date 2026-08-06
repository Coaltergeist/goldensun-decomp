	.include "macros.inc"

.thumb_func_start CrossboneIsle_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	bne	.Lm946_cdc
	ldr	r0, =.Lm946_3310
	b	.Lm946_d06
.Lm946_cdc:
	ldr	r3, =0x72
	cmp	r2, r3
	bne	.Lm946_ce6
	ldr	r0, =.Lm946_3358
	b	.Lm946_d06
.Lm946_ce6:
	ldr	r3, =0x7b
	cmp	r2, r3
	bne	.Lm946_cf0
	ldr	r0, =.Lm946_33a0
	b	.Lm946_d06
.Lm946_cf0:
	ldr	r3, =0x7c
	cmp	r2, r3
	bne	.Lm946_cfa
	ldr	r0, =.Lm946_3400
	b	.Lm946_d06
.Lm946_cfa:
	ldr	r3, =0x7d
	cmp	r2, r3
	bne	.Lm946_d04
	ldr	r0, =.Lm946_3448
	b	.Lm946_d06
.Lm946_d04:
	ldr	r0, =.Lm946_3478
.Lm946_d06:
	pop	{r1}
	bx	r1
.func_end CrossboneIsle_GetEntrances

