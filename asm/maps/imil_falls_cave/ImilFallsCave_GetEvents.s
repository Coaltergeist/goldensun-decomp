	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ImilFallsCave_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lm922_f48
	ldr	r0, =.Lm922_2bd8
	b	.Lm922_f86
.Lm922_f48:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.Lm922_f52
	ldr	r0, =gScript_911__0200ac08
	b	.Lm922_f86
.Lm922_f52:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lm922_f5c
	ldr	r0, =.Lm922_2d1c
	b	.Lm922_f86
.Lm922_f5c:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_f66
	ldr	r0, =.Lm922_2e24
	b	.Lm922_f86
.Lm922_f66:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lm922_f70
	ldr	r0,=.Lm922_3058
	b	.Lm922_f86
.Lm922_f70:
	ldr	r3, =0x42
	cmp	r2, r3
	bne	.Lm922_f7a
	ldr	r0, =.Lm922_3130
	b	.Lm922_f86
.Lm922_f7a:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lm922_f84
	ldr	r0, =.Lm922_3184
	b	.Lm922_f86
.Lm922_f84:
	ldr	r0, =.Lm922_2bcc
.Lm922_f86:
	pop	{r1}
	bx	r1
.func_end ImilFallsCave_GetEvents

