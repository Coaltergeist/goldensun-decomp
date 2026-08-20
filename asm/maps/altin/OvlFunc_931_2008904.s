	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_2008904
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r0, =0x242
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm931_942
	mov	r3, #0x20
	mov	r0, #0x40
	mov	r1, #0x20
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	bl	__Func_8010704
	mov	r0, #0x14
	b	.Lm931_9ac
.Lm931_942:
	ldr	r0, =0x241
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm931_978
	mov	r3, #0x20
	mov	r0, #0x40
	mov	r1, #0
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0x40
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x11
	bl	__DeleteFieldActor
	mov	r0, #0x14
	b	.Lm931_9ac
.Lm931_978:
	mov	r0, #0x90
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_9b8
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x10
	bl	__DeleteFieldActor
	mov	r0, #0x11
.Lm931_9ac:
	bl	__DeleteFieldActor
	mov	r0, #0x15
	bl	__DeleteFieldActor
	b	.Lm931_9da
.Lm931_9b8:
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0
	bl	__Func_8010704
	mov	r0, #0xf
	bl	__DeleteFieldActor
	mov	r0, #0x10
	bl	__DeleteFieldActor
	mov	r0, #0x11
	bl	__DeleteFieldActor
.Lm931_9da:
	ldr	r0, =0x8ff
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_9ec
	mov	r0, #0x12
	bl	__DeleteFieldActor
	b	.Lm931_a0c
.Lm931_9ec:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_931_2008d08
	lsl	r1, #4
	bl	__StartTask
.Lm931_a0c:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.Lm931_a22
	ldr	r0, =0x12f
	bl	__ClearFlag
.Lm931_a22:
	mov	r3, #0x14
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x21
	mov	r2, #4
	mov	r3, #3
	bl	__Func_8010704
	ldr	r0, =0x906
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_a4e
	mov	r1, #0xb4
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
.Lm931_a4e:
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x16
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0xf
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #8
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_8092b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_8092b08
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneStart
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	mov	r3, #0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	bl	__CutsceneEnd
	mov	r0, #1
	bl	__WaitFrames
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008904

