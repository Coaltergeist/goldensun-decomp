	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200a9dc
	push	{lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.Lm932_2a08
	mov	r1, #0xb8
	mov	r2, #0xa4
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
.Lm932_2a08:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a9dc

