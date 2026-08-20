	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2009838
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r9, r0
	bl	__CutsceneStart
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0x95
	mov	r1, #1
	ldr	r2, =0x1510000
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #0x80
	mov	r2, #0xd4
	ldr	r0, =0x1270000
	lsl	r1, #14
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r5, #0
	mov	r2, r9
	mov	r3, #0x64
	str	r5, [r2, #0x68]
	add	r3, r9
	ldr	r2, .Lm932_18e0	@ 0
	strh	r5, [r3]
	ldr	r6, =OvlFunc_932_2009770
	mov	r8, r3
	mov	r7, r9
	ldr	r3, =0x6666
	mov	r10, r2
	add	r7, #0x66
	mov	r2, r9
	strh	r5, [r7]
	mov	r0, #0xa
	str	r3, [r2, #0x48]
	str	r6, [r2, #0x6c]
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0x9a
	mov	r0, #0xa
	lsl	r1, #1
	ldr	r2, =0x123
	bl	__MapActor_TravelToWait
	ldr	r1, =0x137
	mov	r0, #0xa
	mov	r2, #0xd7
	bl	__MapActor_TravelToWait
	mov	r3, r9
	mov	r2, r10
	b	.Lm932_1914

	.align	2, 0
.Lm932_18e0:
	.word	0
	.pool

.Lm932_1914:
	str	r5, [r3, #0x6c]
	add	r3, #0x5b
	strb	r2, [r3]
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_8092adc
	bl	OvlFunc_932_200ad08
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0xa7
	mov	r1, #1
	mov	r2, #0xf4
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r3, r9
	mov	r2, r8
	mov	r1, #0xa0
	str	r5, [r3, #0x68]
	mov	r0, #0xa
	strh	r5, [r2]
	lsl	r1, #1
	strh	r5, [r7]
	mov	r2, #0xe8
	str	r6, [r3, #0x6c]
	bl	__MapActor_TravelToWait
	mov	r1, #0xaa
	mov	r2, #0x83
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToWait
	mov	r1, #0xbb
	mov	r2, #0x83
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_TravelToWait
	mov	r3, r9
	str	r5, [r3, #0x6c]
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xf0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #2
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r1, #0xbe
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0xa
	bl	__MapActor_TravelToWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xd7
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r3, r8
	mov	r2, r9
	str	r5, [r2, #0x68]
	mov	r0, #0xa
	strh	r5, [r3]
	ldr	r1, =0x149
	strh	r5, [r7]
	str	r6, [r2, #0x6c]
	mov	r2, #0xdb
	bl	__MapActor_TravelToWait
	mov	r2, r9
	str	r5, [r2, #0x6c]
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, r10
	mov	r2, #0x11
	add	r0, #0x55
	mov	r5, #0xd
	strb	r3, [r0]
	mov	r9, r2
	str	r2, [sp]
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x12
	str	r3, [sp]
	mov	r10, r3
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, #0x13
	str	r2, [sp]
	mov	r3, #1
	mov	r8, r2
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r2, =0xb333
	ldr	r1, =0x16666
	mov	r0, #0xa
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, #0xa0
	lsl	r6, #11
	str	r6, [r0, #0x28]
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r2, #0xd7
	mov	r0, #0xa
	ldr	r1, =0x127
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #3
	str	r6, [r0, #0x28]
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r1, #0x82
	mov	r2, #0xd7
	mov	r0, #0xa
	lsl	r1, #1
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, r9
	str	r3, [sp]
	mov	r0, #4
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r10
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0
	mov	r0, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0x9999
	mov	r5, r0
	ldr	r0, =0x4cccc
	bl	__Func_80933d4
	mov	r3, #1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x80
	ldr	r2, =gScript_932__0200bd34
	lsl	r1, #9
	mov	r0, #0xa
	bl	__Func_8092a1c
	ldr	r0, =0x904
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009838

