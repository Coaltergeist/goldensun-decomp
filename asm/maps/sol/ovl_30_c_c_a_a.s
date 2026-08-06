	.include "macros.inc"

.thumb_func_start Sol_GetActors
	push	{r5, lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lm895_ba
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xb
	blt	.Lm895_ae
	cmp	r3, #0xd
	ble	.Lm895_aa
	cmp	r3, #0x10
	bgt	.Lm895_ae
	ldr	r0, =.Lm895_21b8
	b	.Lm895_c6
.Lm895_aa:
	ldr	r0, =.Lm895_2050
	b	.Lm895_c6
.Lm895_ae:
	ldr	r5, =.Lm895_1fd8
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Lm895_c6
.Lm895_ba:
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lm895_c4
	ldr	r0, =.Lm895_22a8
	b	.Lm895_c6
.Lm895_c4:
	ldr	r0, =.Lm895_1fc0
.Lm895_c6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Sol_GetActors

.thumb_func_start Sol_GetEvents
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lm895_104
	ldr	r0, =.Lm895_22e4
	b	.Lm895_12e
.Lm895_104:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lm895_12c
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xb
	blt	.Lm895_128
	cmp	r3, #0xd
	ble	.Lm895_124
	cmp	r3, #0x10
	bgt	.Lm895_128
	ldr	r0, =.Lm895_2524
	b	.Lm895_12e
.Lm895_124:
	ldr	r0, =.Lm895_241c
	b	.Lm895_12e
.Lm895_128:
	ldr	r0, =.Lm895_232c
	b	.Lm895_12e
.Lm895_12c:
	ldr	r0, =.Lm895_22d8
.Lm895_12e:
	pop	{r1}
	bx	r1
.func_end Sol_GetEvents

.thumb_func_start OvlFunc_895_2008154
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r5, #3
	mov	r6, #2
	mov	r1, #0x1c
	mov	r2, #0x15
	mov	r3, #3
	mov	r0, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r1, #0x1e
	mov	r2, #0x15
	mov	r3, #3
	mov	r0, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r3, #3
	mov	r2, #0x15
	mov	r1, #0x20
	mov	r0, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x62
	mov	r0, #0
	mov	r1, #0x78
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #2
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008154

.thumb_func_start OvlFunc_895_2008200
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x81a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_21a
	ldr	r0, =0x1034
	mov	r1, #1
	bl	__Func_801776c
	b	.Lm895_23a
.Lm895_21a:
	ldr	r0, =0x1031
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0xf01
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_23a
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.Lm895_23a:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008200

.thumb_func_start OvlFunc_895_2008258
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r0, =0xf01
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm895_26c
	b	.Lm895_39c
.Lm895_26c:
	ldr	r0, =0x81a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_278
	b	.Lm895_39c
.Lm895_278:
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r0, #0xb6
	bl	__PlaySound
	mov	r5, #1
	mov	r2, #0x1e
	mov	r1, #0x46
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =0x1032
	mov	r8, r3
	mov	r1, #1
	mov	r0, r8
	bl	__Func_801776c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x51
	mov	r0, #1
	mov	r1, #0x6d
	mov	r2, #4
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #1
	add	r8, r3
	mov	r1, #1
	mov	r0, r8
	bl	__Func_801776c
	ldr	r0, =0x143
	bl	__SetFlag
	ldr	r0, =0x81a
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm895_39c:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008258

