	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200abe0
	push	{r5, r6, lr}
	ldr	r6, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r6]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L2cbc
	bl	__Random
	lsl	r1, r0, #1
	add	r1, r0
	lsl	r1, #4
	ldr	r2, =0x2fd0000
	lsr	r1, #16
	lsl	r1, #16
	mov	r3, #0x98
	add	r1, r2
	mov	r0, #0xc8
	ldr	r2, =0xffc00000
	lsl	r3, #18
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L2cbc
	ldr	r0, [r6]
	mov	r1, #9
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L2c3a
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	cmp	r0, #0
	beq	.L2c34
	mov	r0, #0x91
	bl	__PlaySound
	b	.L2c3a
.L2c34:
	mov	r0, #0x90
	bl	__PlaySound
.L2c3a:
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Random
	ldr	r3, =0x4ccc
	lsl	r0, #15
	lsr	r0, #16
	add	r0, r3
	ldr	r3, =0x6666
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x61
	mov	r3, #1
	str	r0, [r5, #0x1c]
	str	r0, [r5, #0x18]
	mov	r1, #0
	strb	r3, [r2]
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	ldr	r1, =gScript_932__0200c01c
	mov	r0, r5
	bl	__Actor_SetScript
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	sub	r3, #3
	lsl	r3, #16
	str	r3, [r5, #0x24]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x28]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #9
	ldr	r2, =0xfffffd00
	lsr	r3, #16
	add	r3, r2
	str	r3, [r5, #0x2c]
.L2cbc:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200abe0

.thumb_func_start OvlFunc_932_200ace0
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #7
	and	r2, r3
	cmp	r2, #0
	bne	.L2cf6
	mov	r1, #2
	bl	__Func_80929d8
	b	.L2d00
.L2cf6:
	cmp	r2, #2
	bne	.L2d00
	mov	r1, #0
	bl	__Func_80929d8
.L2d00:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ace0

.thumb_func_start OvlFunc_932_200ad08
	push	{lr}
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r0, #0xa
	mov	r1, #9
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_8092950
	mov	r0, #1
	bl	__FieldMove
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	bl	__Func_8097174
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_8092950
	bl	__Func_8097194
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ad08

.thumb_func_start OvlFunc_932_200ad58
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r6, =iwram_3001ebc
	ldr	r3, =0x201
	ldr	r2, [r6]
	mov	r1, #0xe0
	lsl	r1, #1
	str	r3, [r2, r1]
	mov	r8, r1
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xca
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xca
	bl	__Func_8091a58
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x3333
	ldr	r0, =0x19999
	bl	__Func_80933d4
	mov	r0, #0xc8
	mov	r2, #0xf9
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_932_20086dc
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	ldr	r0, [r5, #8]
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =gScript_882__0200cd6c
	bl	__SetMapEvents
	ldr	r2, [r6]
	mov	r3, #0x81
	lsl	r3, #2
	mov	r1, r8
	str	r3, [r2, r1]
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ad58

.thumb_func_start OvlFunc_932_200ae1c
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xa4
	mov	r2, #0xd4
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #8
	bl	__MapActor_SetPos
	ldr	r0, =0x323
	bl	__SetFlag
	bl	OvlFunc_932_20089ec
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	OvlFunc_932_20087e8
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ae1c

.thumb_func_start OvlFunc_932_200ae84
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xf4
	mov	r2, #0x8a
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	ldr	r0, =0x325
	bl	__SetFlag
	bl	OvlFunc_932_2008a94
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	OvlFunc_932_20088d4
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ae84

