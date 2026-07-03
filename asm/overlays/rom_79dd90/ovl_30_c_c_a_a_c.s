	.include "macros.inc"

.thumb_func_start OvlFunc_910_2008154
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.L16c
	ldr	r0, =.Ld30
	b	.L16e
.L16c:
	ldr	r0, =.Ld24
.L16e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_910_2008154

