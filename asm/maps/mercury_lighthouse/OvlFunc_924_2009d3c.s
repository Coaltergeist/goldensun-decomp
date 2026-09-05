	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_2009d3c
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_1da2
	bl	__CutsceneStart
	ldr	r0, =0x256
	bl	__ClearFlag
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #5
	str	r3, [r5, #0x3c]
	bl	__CutsceneWait
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0xa
	mov	r3, #0x17
	mov	r0, #8
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.Lm924_608e
	mov	r1, #0xa
	mov	r2, #0x12
	bl	__Func_8010560
	bl	__CutsceneEnd
.Lm924_1da2:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009d3c

