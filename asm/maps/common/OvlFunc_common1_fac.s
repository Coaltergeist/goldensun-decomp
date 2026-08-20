	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_fac
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0xf7
	bl	__PlaySound
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	lsl	r3, r5, #4
	ldr	r2, =.Lc1_13
	sub	r3, r5
	lsl	r6, r3, #2
	strh	r6, [r2, #0x1a]
	ldr	r1, =.Lc1_3
	mov	r2, r5
	cmp	r5, #0
	bge	.Lc1_fd2
	neg	r2, r5
.Lc1_fd2:
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	strh	r3, [r1, #0x1a]
	cmp	r5, #0
	bge	.Lc1_1008
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x56
	bl	__PlaySound
	mov	r0, #8
	bl	OvlFunc_common1_88c
	mov	r1, #1
	mov	r0, #3
	bl	OvlFunc_common1_e10
	lsl	r0, r5, #4
	sub	r0, r5, r0
	lsl	r0, #2
	add	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	b	.Lc1_102e
.Lc1_1008:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x5a
	bl	__PlaySound
	mov	r0, #4
	bl	OvlFunc_common1_88c
	mov	r1, #0
	mov	r0, #3
	bl	OvlFunc_common1_e10
	mov	r0, r6
	add	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
.Lc1_102e:
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	b	.Lc1_103e
.Lc1_1038:
	mov	r0, #1
	bl	__WaitFrames
.Lc1_103e:
	bl	__Func_80f954c
	cmp	r0, #0
	bne	.Lc1_1038
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_fac

