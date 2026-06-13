	.include "macros.inc"

.thumb_func_start OvlFunc_882_2008240
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L578a
	mov	r1, #0x36
	mov	r2, #0x20
	bl	__Func_8010560
	mov	r1, #0xcb
	lsl	r1, #1
	ldr	r2, =0x2d7
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #5
	bl	OvlFunc_882_200815c
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008240

.thumb_func_start OvlFunc_882_2008278
	push	{lr}
	ldr	r0, =0x206
	bl	__GetFlag
	cmp	r0, #0
	bne	.L294
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L57a0
	mov	r1, #0x2d
	mov	r2, #0x27
	bl	__Func_8010560
.L294:
	ldr	r0, =0x835
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2b4
	ldr	r0, =0x831
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2b4
	bl	OvlFunc_882_200950c
	ldr	r0, =0x206
	bl	__SetFlag
	b	.L2cc
.L2b4:
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x325
	bl	__Func_809218c
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #6
	bl	OvlFunc_882_200815c
.L2cc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008278

