	.include "macros.inc"
	.include "gba.inc"
.thumb_func_start OvlFunc_932_2009770
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.L179e
	sub	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L179e
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.L179e:
	ldr	r7, [r5, #0x28]
	cmp	r7, #0
	bne	.L17e6
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	ldr	r3, [r5, #0xc]
	ldr	r1, =0xfffe8000
	ldr	r2, [r5, #0x14]
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.L17de
	ldr	r3, [r5, #0x68]
	cmp	r3, #0
	beq	.L17dc
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r3, #4
	mov	r0, #0x80
	mov	r2, #0x80
	str	r7, [r5, #0x68]
	lsl	r2, #9
	strh	r3, [r6]
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8012330
	ldr	r2, [r5, #0x14]
.L17dc:
	str	r2, [r5, #0xc]
.L17de:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #1
	b	.L17ec
.L17e6:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
.L17ec:
	strb	r3, [r2]
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L1816
	mov	r0, #0x98
	bl	__PlaySound
	mov	r3, #1
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x68]
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldrh	r2, [r6]
.L1816:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r6]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bne	.L1828
	mov	r3, #0
	strh	r3, [r6]
.L1828:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009770

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
	ldr	r2, .L18e0	@ 0
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
	bl	__Func_8092158
	ldr	r1, =0x137
	mov	r0, #0xa
	mov	r2, #0xd7
	bl	__Func_8092158
	mov	r3, r9
	mov	r2, r10
	b	.L1914

	.align	2, 0
.L18e0:
	.word	0
	.pool

.L1914:
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
	bl	__Func_8092158
	mov	r1, #0xaa
	mov	r2, #0x83
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0xbb
	mov	r2, #0x83
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_8092158
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
	bl	__Func_8092158
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
	bl	__Func_8092158
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
	bl	__Func_8092158
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
	bl	__Func_8092158
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

.thumb_func_start OvlFunc_932_2009d0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	bl	__MapActor_SetIdle
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #0x80
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #15
	ldr	r0, =0x1170000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0xca
	lsl	r0, #16
	lsl	r1, #15
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	ldr	r3, .L1dd8	@ 0
	mov	r10, r3
	mov	r3, #0x66
	add	r3, r7
	mov	r2, #0x64
	mov	r5, #0
	add	r2, r7
	mov	r11, r3
	ldr	r6, =OvlFunc_932_2009770
	ldr	r3, =0x6666
	str	r5, [r7, #0x68]
	mov	r8, r2
	strh	r5, [r2]
	mov	r2, r11
	strh	r5, [r2]
	mov	r0, #0xa
	str	r3, [r7, #0x48]
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	str	r6, [r7, #0x6c]
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #0xd4
	mov	r2, #0xc8
	bl	__Func_8092158
	mov	r1, #0x67
	mov	r0, #0xa
	mov	r2, #0xc8
	b	.L1e00

	.align	2, 0
.L1dd8:
	.word	0
	.pool

.L1e00:
	bl	__Func_8092158
	mov	r3, #0x5b
	add	r3, r7
	mov	r2, r10
	str	r5, [r7, #0x6c]
	mov	r0, #0xa
	strb	r2, [r3]
	mov	r9, r3
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
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r2, =0x9999
	ldr	r1, =0x13333
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
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r2, #0xd6
	mov	r0, #0xa
	mov	r1, #0x56
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xc0
	strb	r3, [r0]
	lsl	r1, #6
	mov	r0, #0xa
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r3, r8
	mov	r2, r11
	str	r5, [r7, #0x68]
	mov	r0, #0xa
	strh	r5, [r3]
	ldr	r1, =0x13333
	strh	r5, [r2]
	ldr	r2, =0x9999
	str	r6, [r7, #0x6c]
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xd7
	bl	__Func_8092158
	mov	r3, r10
	mov	r2, r9
	mov	r1, #1
	str	r5, [r7, #0x6c]
	mov	r0, #0xa
	strb	r3, [r2]
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
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x82
	mov	r2, #0xa8
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	bl	OvlFunc_932_200abb0
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r2, =gKeyPress
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L1fcc
	mov	r6, r2
.L1fba:
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0x3b
	bhi	.L1fcc
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L1fba
.L1fcc:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0x9999
	mov	r7, r0
	ldr	r0, =0x4cccc
	bl	__Func_80933d4
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0x905
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009d0c

.thumb_func_start OvlFunc_932_200a020
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L2040
	bl	OvlFunc_932_200a0d0
	b	.L209e
.L2040:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L204c
	bl	OvlFunc_932_200a310
	b	.L209e
.L204c:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.L2058
	bl	OvlFunc_932_200a428
	b	.L209e
.L2058:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L2064
	bl	OvlFunc_932_200a490
	b	.L209e
.L2064:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L2070
	bl	OvlFunc_932_200a5c0
	b	.L209e
.L2070:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L207c
	bl	OvlFunc_932_200a6c0
	b	.L209e
.L207c:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L2088
	bl	OvlFunc_932_200a804
	b	.L209e
.L2088:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L2094
	bl	OvlFunc_932_200a934
	b	.L209e
.L2094:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L209e
	bl	OvlFunc_932_200a9dc
.L209e:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_932_200a020

.thumb_func_start OvlFunc_932_200a0d0
	push	{r5, r6, lr}
	ldr	r0, =0x109
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L20f2
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L20f2
	bl	OvlFunc_932_200ad58
.L20f2:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	bne	.L210c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L2124
.L210c:
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2124
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L2124:
	mov	r0, #9
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L213c
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L213c:
	ldr	r0, =0x8fd
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.L222c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	ldr	r0, =0x905
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.L21c8
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_932_200ace0
	str	r3, [r0, #0x6c]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r2, #0xd
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #0xf0
	mov	r2, #0xd7
	lsl	r2, #16
	lsl	r1, #15
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #3
	strh	r5, [r0, #6]
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x82
	mov	r2, #0xa8
	lsl	r0, #16
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0
	bl	OvlFunc_932_200abb0
	b	.L22de
.L21c8:
	ldr	r0, =0x904
	bl	__GetFlag
	cmp	r0, #0
	bne	.L21d4
	b	.L22de
.L21d4:
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_932_200ace0
	str	r3, [r0, #0x6c]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r2, #0xd
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0x82
	mov	r2, #0xd7
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	ldr	r2, =gScript_932__0200bd34
	mov	r0, #0xa
	lsl	r1, #9
	bl	__Func_8092a1c
	b	.L22de
.L222c:
	ldr	r3, =iwram_3001e70
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	ldr	r5, [r3]
	bl	__MapActor_SetPos
	mov	r3, #3
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	ldrh	r2, [r5, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	mov	r0, #8
	strh	r3, [r5, #0x14]
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L229a
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #9
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	mov	r0, #7
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0xc]
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.L229a:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L22de
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x11
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x1d
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.L22de:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a0d0

.thumb_func_start OvlFunc_932_200a310
	push	{lr}
	ldr	r0, =0x8fe
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2336
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L23ae
.L2336:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L235a
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L235a
	bl	OvlFunc_932_200ae1c
	b	.L23ae
.L235a:
	mov	r3, #0x25
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #0x2d
	mov	r2, #0x17
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	bne	.L23ae
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xee
	mov	r2, #0xd1
	mov	r3, #0x80
	lsl	r0, #16
	lsl	r2, #17
	lsl	r3, #8
	mov	r1, #0
	bl	OvlFunc_932_200abb0
.L23ae:
	ldr	r0, =0x323
	bl	__GetFlag
	cmp	r0, #0
	beq	.L23e2
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__CopyMapTiles
	b	.L240a
.L23e2:
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__CopyMapTiles
.L240a:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a310

	.section .text.after_a428, "ax", %progbits

.thumb_func_start OvlFunc_932_200a490
	push	{lr}
	ldr	r0, =0x907
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L24b6
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L2506
.L24b6:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L24d4
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L24d4
	bl	OvlFunc_932_200ae84
.L24d4:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2506
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xbb
	mov	r1, #0x80
	mov	r2, #0x8c
	mov	r3, #0x80
	lsl	r0, #18
	lsl	r1, #12
	lsl	r2, #17
	lsl	r3, #8
	bl	OvlFunc_932_200abb0
.L2506:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2544
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x19
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x17
	mov	r1, #0xd
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L2544:
	ldr	r0, =0x325
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2578
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__CopyMapTiles
	b	.L25a0
.L2578:
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__CopyMapTiles
.L25a0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a490

.thumb_func_start OvlFunc_932_200a5c0
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #2
	bne	.L25ec
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L25ec
	mov	r1, #0xb3
	mov	r2, #0xd0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
.L25ec:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L262c
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #5
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r3, #0x2b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	add	r5, #0x23
	mov	r0, #0x2d
	mov	r1, #0x29
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r5]
.L262c:
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2642
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
.L2642:
	ldr	r0, =0x326
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2676
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__CopyMapTiles
	b	.L269e
.L2676:
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__CopyMapTiles
.L269e:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a5c0

.thumb_func_start OvlFunc_932_200a6c0
	push	{lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	OvlFunc_932_200840c
	mov	r0, #9
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2710
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x1a
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L2710:
	mov	r0, #0xb
	bl	OvlFunc_932_200b460
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L274c
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x11
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8010704
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L274c:
	mov	r0, #0xc
	bl	OvlFunc_932_200b460
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L278a
	mov	r0, #0xc
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x1a
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L278a:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_932_200b428
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x327
	bl	__GetFlag
	cmp	r0, #0
	beq	.L27c8
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__CopyMapTiles
	b	.L27f0
.L27c8:
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__CopyMapTiles
.L27f0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a6c0

.thumb_func_start OvlFunc_932_200a804
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0xe666
	str	r3, [r6, #0x18]
	ldr	r3, =0x9999
	ldr	r2, [r6, #0x50]
	str	r3, [r6, #0x1c]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, .L2888	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, =0xffe40000
	str	r3, [r0, #0xc]
	ldr	r0, =0x908
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2882
	ldr	r3, [r6, #8]
	mov	r2, #0xe0
	lsl	r2, #12
	add	r3, r2
	str	r3, [r6, #8]
	ldr	r2, =0xfff80000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r2, [r6, #0x50]
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
.L2882:
	ldr	r0, =0x908
	b	.L28a0

	.align	2, 0
.L2888:
	.word	0
	.pool

.L28a0:
	bl	__GetFlag
	cmp	r0, #0
	beq	.L28da
	mov	r3, #0xb
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0x24
	mov	r2, #0x2b
	mov	r3, #0x24
	bl	__CopyMapTiles
	mov	r3, #0x2b
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0x23
	mov	r2, #0xa
	mov	r3, #5
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.L28da:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.L291c
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L291c
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0xffa80000
	str	r1, [r0, #0xc]
	mov	r0, #0xc6
	lsl	r0, #18
	ldr	r2, =0x2410000
	mov	r3, #0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneEnd
.L291c:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a804

.thumb_func_start OvlFunc_932_200a934
	push	{r5, lr}
	ldr	r0, =0x909
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L2958
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L2982
.L2958:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
.L2982:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.L2996
	cmp	r3, #0x62
	bne	.L29b8
.L2996:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L29ca
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #0xc]
	bl	__CutsceneEnd
	b	.L29ca
.L29b8:
	cmp	r3, #0x63
	bne	.L29ca
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L29ca
	bl	OvlFunc_932_200b028
.L29ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a934


	.section .text.after, "ax", %progbits
.thumb_func_start OvlFunc_932_200aa48
	push	{r5, r6, lr}
	ldr	r3, =.L523c
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L2a62
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r3, r1
	beq	.L2a82
	mov	r6, r5
	add	r6, #0x64
	b	.L2aa2
.L2a62:
	bl	__Random
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	add	r3, r2
	b	.L2aa0
.L2a82:
	bl	__Random
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	sub	r3, r2
.L2aa0:
	str	r3, [r5, #8]
.L2aa2:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #3
	bgt	.L2ade
	ldr	r3, =.L523c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2abc
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r3, r1
	beq	.L2ac6
	b	.L2ace
.L2abc:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	b	.L2acc
.L2ac6:
	ldr	r3, [r5, #8]
	ldr	r1, =0xffff8000
	add	r3, r1
.L2acc:
	str	r3, [r5, #8]
.L2ace:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r1, =0xfffff334
	ldr	r3, [r5, #0x1c]
	add	r3, r1
	b	.L2af2
.L2ade:
	ldr	r3, [r5, #0x10]
	ldr	r2, =0x13333
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r2, =0x7ae
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
.L2af2:
	str	r3, [r5, #0x1c]
	bl	__Random
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mul	r3, r0
	lsr	r3, #16
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L2b10
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	ldrh	r2, [r6]
.L2b10:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.L2b1a
	sub	r3, r2, #2
	b	.L2b28
.L2b1a:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	add	r3, #2
.L2b28:
	strh	r3, [r6]
	ldr	r3, [r5, #0x68]
	sub	r3, #1
	str	r3, [r5, #0x68]
	cmp	r3, #0
	bne	.L2b3a
	mov	r0, r5
	bl	__DeleteActor
.L2b3a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200aa48
