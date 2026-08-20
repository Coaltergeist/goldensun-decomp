	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Gondowan_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Lm958_d46
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm958_d42
	ldr	r0, =.Lm958_19d4
	b	.Lm958_d5c
.Lm958_d42:
	ldr	r0, =.Lm958_1974
	b	.Lm958_d5c
.Lm958_d46:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Lm958_d50
	ldr	r0, =gScript_970__02009a4c
	b	.Lm958_d5c
.Lm958_d50:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Lm958_d5a
	ldr	r0, =.Lm958_1aac
	b	.Lm958_d5c
.Lm958_d5a:
	ldr	r0, =.Lm958_195c
.Lm958_d5c:
	pop	{r1}
	bx	r1
.func_end Gondowan_GetActors

