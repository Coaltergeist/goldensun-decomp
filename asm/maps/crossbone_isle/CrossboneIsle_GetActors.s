	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CrossboneIsle_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	bne	.Lm946_d60
	ldr	r0, =gScript_911__0200b610
	b	.Lm946_d7c
.Lm946_d60:
	ldr	r3, =0x7b
	cmp	r2, r3
	bne	.Lm946_d6a
	ldr	r0, =.Lm946_3718
	b	.Lm946_d7c
.Lm946_d6a:
	ldr	r3, =0x86
	cmp	r2, r3
	bgt	.Lm946_d7a
	ldr	r3, =0x7e
	cmp	r2, r3
	blt	.Lm946_d7a
	ldr	r0, =.Lm946_3850
	b	.Lm946_d7c
.Lm946_d7a:
	ldr	r0, =gOvl_0200b5f8
.Lm946_d7c:
	pop	{r1}
	bx	r1
.func_end CrossboneIsle_GetActors

