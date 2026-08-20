	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_200960c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x206e
	bl	__MessageID
	ldr	r0, =0x8a4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_1656
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm953_1656:
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x8a3
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200960c

