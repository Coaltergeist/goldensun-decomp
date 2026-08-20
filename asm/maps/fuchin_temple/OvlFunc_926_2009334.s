	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_2009334
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xffffe000
	ldrh	r2, [r5, #6]
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.Lm926_1366
	bl	OvlFunc_926_2008e94
	b	.Lm926_1390
.Lm926_1366:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lm926_1378
	bl	OvlFunc_926_2008bf4
	b	.Lm926_1390
.Lm926_1378:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lm926_138c
	bl	OvlFunc_926_2008db4
	b	.Lm926_1390
.Lm926_138c:
	bl	OvlFunc_926_2008cd4
.Lm926_1390:
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	OvlFunc_926_200902c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009334

