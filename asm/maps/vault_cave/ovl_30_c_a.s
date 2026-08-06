	.include "macros.inc"

.thumb_func_start VaultCave_GetExits
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.Lm935_a4
	ldr	r0, =.Lm935_1c80
	b	.Lm935_ba
.Lm935_a4:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.Lm935_ae
	ldr	r0, =.Lm935_1cc0
	b	.Lm935_ba
.Lm935_ae:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.Lm935_b8
	ldr	r0, =.Lm935_1cfc
	b	.Lm935_ba
.Lm935_b8:
	ldr	r0, =.Lm935_1c7c
.Lm935_ba:
	pop	{r1}
	bx	r1
.func_end VaultCave_GetExits

.thumb_func_start VaultCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.Lm935_f8
	ldr	r0, =.Lm935_1d34
	b	.Lm935_10e
.Lm935_f8:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.Lm935_102
	ldr	r0, =.Lm935_1d4c
	b	.Lm935_10e
.Lm935_102:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.Lm935_10c
	ldr	r0, =gScript_887__02009ecc
	b	.Lm935_10e
.Lm935_10c:
	ldr	r0, =.Lm935_1d1c
.Lm935_10e:
	pop	{r1}
	bx	r1
.func_end VaultCave_GetActors

