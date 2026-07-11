	.include "macros.inc"

.thumb_func_start OvlFunc_936_2008240
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L258
	ldr	r0, =.L4bf4
	b	.L28c
.L258:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L262
	ldr	r0, =gScript_882__0200ce88
	b	.L28c
.L262:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L26c
	ldr	r0, =gScript_882__0200cedc
	b	.L28c
.L26c:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.L276
	ldr	r0, =.L4f24
	b	.L28c
.L276:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.L280
	ldr	r0, =.L4f54
	b	.L28c
.L280:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L28a
	ldr	r0, =.L4f9c
	b	.L28c
.L28a:
	ldr	r0, =.L4be8
.L28c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_2008240

