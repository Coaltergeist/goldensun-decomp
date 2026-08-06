	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start VenusLighthouse_GetActors
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.Lm968_ea0
	ldr	r0, =gScript_945__0200e904
	b	.Lm968_edc
.Lm968_ea0:
	ldr	r3, =0xb6
	cmp	r2, r3
	bne	.Lm968_eaa
	ldr	r5, =.Lm968_69c4
	b	.Lm968_ed0
.Lm968_eaa:
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.Lm968_eb4
	ldr	r5, =.Lm968_6b74
	b	.Lm968_ed0
.Lm968_eb4:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.Lm968_ebe
	ldr	r5, =.Lm968_6c04
	b	.Lm968_ed0
.Lm968_ebe:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lm968_ec8
	ldr	r5, =.Lm968_6c64
	b	.Lm968_ed0
.Lm968_ec8:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.Lm968_eda
	ldr	r5, =.Lm968_6cf4
.Lm968_ed0:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Lm968_edc
.Lm968_eda:
	ldr	r0, =.Lm968_68ec
.Lm968_edc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end VenusLighthouse_GetActors

