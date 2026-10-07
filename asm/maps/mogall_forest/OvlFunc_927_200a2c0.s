	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_200a2c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x12
	sub	sp, #0x1c
	bl	__MapActor_GetActor
	mov	r10, r0
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_8092950
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x88
	mov	r2, #0xb4
	lsl	r2, #17
	mov	r0, #0x12
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xc4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x12
	bl	OvlFunc_927_2008e18
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x12
	bl	OvlFunc_927_2008e18
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x12
	bl	OvlFunc_927_2008e18
	ldr	r3, =0x13333
	mov	r1, r10
	str	r3, [r1, #0x18]
	str	r3, [r1, #0x1c]
	mov	r0, #0x12
	mov	r1, #5
	bl	__Func_8092950
	mov	r2, #0xc4
	mov	r3, #0xf0
	lsl	r2, #1
	lsl	r3, #12
	mov	r1, #0x88
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r2, #0
	mov	r7, #0
	add	r6, sp, #0x10
	mov	r8, r2
.Lm927_23d4:
	lsl	r5, r7, #12
	mov	r0, r5
	bl	__cos
	mov	r3, r8
	str	r0, [r6]
	mov	r0, r5
	str	r3, [r6, #4]
	bl	__sin
	ldr	r3, [r6]
	lsr	r2, r3, #31
	add	r2, r3, r2
	asr	r2, #1
	add	r3, r2
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r1, r10
	ldr	r4, [r1, #8]
	ldr	r2, [r1, #0x10]
	ldr	r1, [r6, #4]
	str	r1, [sp]
	mov	r1, #1
	str	r1, [sp, #8]
	mov	r1, r8
	str	r0, [sp, #4]
	str	r1, [sp, #0xc]
	mov	r0, r4
	mov	r1, #0
	add	r7, #1
	bl	OvlFunc_927_2008ae8
	cmp	r7, #0x10
	bls	.Lm927_23d4
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x94
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0x80
	sub	r2, #0x10
	lsl	r3, #12
	mov	r1, r5
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =gState
	ldr	r1, =0x22b
	mov	r2, #3
	add	r3, r1
	strb	r2, [r3]
	ldr	r0, =0x46
	mov	r1, #0xf
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #1
	bl	__StartMapBattle
	bl	__CutsceneEnd
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200a2c0

