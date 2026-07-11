	.include "macros.inc"

.thumb_func_start OvlFunc_946_2008ec4
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	bne	.Ledc
	ldr	r0, =.L3904
	b	.Lf06
.Ledc:
	ldr	r3, =0x72
	cmp	r2, r3
	bne	.Lee6
	ldr	r0, =.L38e0
	b	.Lf06
.Lee6:
	ldr	r3, =0x7b
	cmp	r2, r3
	bne	.Lef0
	ldr	r0, =.L39f4
	b	.Lf06
.Lef0:
	ldr	r3, =0x7c
	cmp	r2, r3
	bne	.Lefa
	ldr	r0, =gScript_932__0200bd48
	b	.Lf06
.Lefa:
	ldr	r3, =0x7d
	cmp	r2, r3
	bne	.Lf04
	ldr	r0, =.L3d6c
	b	.Lf06
.Lf04:
	ldr	r0, =.L3880
.Lf06:
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2008ec4

