	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2009874
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #8
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x60
	bl	__MapActor_TravelToAnimWait
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2009874

	.section .data

	.global Events_TolbiSpring
Events_TolbiSpring:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f30, (0x1f48-0x1f30)
.Lm933_1f48:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f48, (0x1f70-0x1f48)
.Lm933_1f70:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f70, (0x1f80-0x1f70)
