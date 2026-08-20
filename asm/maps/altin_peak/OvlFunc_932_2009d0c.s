	.include "macros.inc"
	.include "gba.inc"

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
	ldr	r3, .Lm932_1dd8	@ 0
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
	bl	__MapActor_TravelToWait
	mov	r1, #0x67
	mov	r0, #0xa
	mov	r2, #0xc8
	b	.Lm932_1e00

	.align	2, 0
.Lm932_1dd8:
	.word	0
	.pool

.Lm932_1e00:
	bl	__MapActor_TravelToWait
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
	bl	__MapActor_TravelToWait
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
	bl	__MapActor_TravelToWait
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
	bne	.Lm932_1fcc
	mov	r6, r2
.Lm932_1fba:
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0x3b
	bhi	.Lm932_1fcc
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.Lm932_1fba
.Lm932_1fcc:
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

