	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2008ec8
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008ec8

.thumb_func_start OvlFunc_948_2008ee0
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x75
	cmp	r2, r3
	bne	.Lef8
	ldr	r0, =.L2bb4
	b	.Lf0e
.Lef8:
	ldr	r3, =0x76
	cmp	r2, r3
	bne	.Lf02
	ldr	r0, =.L2cb0
	b	.Lf0e
.Lf02:
	ldr	r3, =0x78
	cmp	r2, r3
	bne	.Lf0c
	ldr	r0, =gScript_953__0200adac
	b	.Lf0e
.Lf0c:
	ldr	r0, =.L2ba8
.Lf0e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_948_2008ee0

