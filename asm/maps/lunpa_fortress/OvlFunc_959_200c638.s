	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200c638
	push	{lr}
	ldr	r3, =.Lm959_5fa4
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.Lm959_46d8
	ldr	r2, =.Lm959_464c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm959_464c:
	.word	.Lm959_466c
	.word	.Lm959_4670
	.word	.Lm959_4674
	.word	.Lm959_4678
	.word	.Lm959_467c
	.word	.Lm959_4694
	.word	.Lm959_4680
	.word	.Lm959_4684
.Lm959_466c:
	ldr	r0, =0x2414
	b	.Lm959_4686
.Lm959_4670:
	ldr	r0, =0x2415
	b	.Lm959_4686
.Lm959_4674:
	ldr	r0, =0x2416
	b	.Lm959_4686
.Lm959_4678:
	ldr	r0, =0x2417
	b	.Lm959_4686
.Lm959_467c:
	ldr	r0, =0x2418
	b	.Lm959_4686
.Lm959_4680:
	ldr	r0, =0x241a
	b	.Lm959_4686
.Lm959_4684:
	ldr	r0, =0x241b
.Lm959_4686:
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm959_46d8
.Lm959_4694:
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	ldr	r0, =0x2419
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
.Lm959_46d8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200c638

