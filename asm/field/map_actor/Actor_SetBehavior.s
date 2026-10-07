	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Actor_SetBehavior  @ 0x08093a6c
	push	{r5, lr}
	sub	r3, r1, #1
	mov	r5, r0
	cmp	r3, #6
	bhi	.L93ac6
	ldr	r2, =.L93a80
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L93a80:
	.word	.L93a9c
	.word	.L93aa0
	.word	.L93aa4
	.word	.L93aa8
	.word	.L93aac
	.word	.L93ab0
	.word	.L93ac4
.L93a9c:
	ldr	r1, =X9fe00
	b	.L93ac6
.L93aa0:
	ldr	r1, =X9fd44
	b	.L93ac6
.L93aa4:
	ldr	r1, =X9fe10
	b	.L93ac6
.L93aa8:
	ldr	r1, =X9fecc
	b	.L93ac6
.L93aac:
	ldr	r1, =X9ff18
	b	.L93ac6
.L93ab0:
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	MapActor_GetActor
	ldr	r1, =X9ff2c
	str	r0, [r5, #0x68]
	b	.L93ac6
.L93ac4:
	ldr	r1, =X9fe04
.L93ac6:
	mov	r0, r5
	bl	_Actor_SetScript
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Actor_SetBehavior

