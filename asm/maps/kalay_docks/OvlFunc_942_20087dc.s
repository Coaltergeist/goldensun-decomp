	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_942_20087dc
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lm942_82a
	mov	r1, #0x98
	mov	r2, #0xae
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__MapActor_TravelToAnim
	ldr	r0, =gScript_930__020096b8
	mov	r1, #0x4e
	mov	r2, #0x56
	bl	__Func_8010560
	b	.Lm942_844
.Lm942_82a:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Lm942_844
	mov	r0, #0
	mov	r1, #0xf8
	mov	r2, #0xc0
	bl	__MapActor_TravelToAnim
	ldr	r0, =.Lm942_16ce
	mov	r1, #0x4a
	mov	r2, #9
	bl	__Func_8010560
.Lm942_844:
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_20087dc

