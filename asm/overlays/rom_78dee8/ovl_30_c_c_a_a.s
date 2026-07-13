	.include "macros.inc"

.thumb_func_start OvlFunc_895_200807c
	push	{r5, lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lba
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xb
	blt	.Lae
	cmp	r3, #0xd
	ble	.Laa
	cmp	r3, #0x10
	bgt	.Lae
	ldr	r0, =.L21b8
	b	.Lc6
.Laa:
	ldr	r0, =.L2050
	b	.Lc6
.Lae:
	ldr	r5, =.L1fd8
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Lc6
.Lba:
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lc4
	ldr	r0, =.L22a8
	b	.Lc6
.Lc4:
	ldr	r0, =.L1fc0
.Lc6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_895_200807c

.thumb_func_start OvlFunc_895_20080ec
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.L104
	ldr	r0, =.L22e4
	b	.L12e
.L104:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.L12c
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xb
	blt	.L128
	cmp	r3, #0xd
	ble	.L124
	cmp	r3, #0x10
	bgt	.L128
	ldr	r0, =.L2524
	b	.L12e
.L124:
	ldr	r0, =.L241c
	b	.L12e
.L128:
	ldr	r0, =.L232c
	b	.L12e
.L12c:
	ldr	r0, =.L22d8
.L12e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_895_20080ec

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
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_809228c
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
	beq	.L21a
	ldr	r0, =0x1034
	mov	r1, #1
	bl	__Func_801776c
	b	.L23a
.L21a:
	ldr	r0, =0x1031
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0xf01
	bl	__GetFlag
	cmp	r0, #0
	beq	.L23a
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.L23a:
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
	bne	.L26c
	b	.L39c
.L26c:
	ldr	r0, =0x81a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L278
	b	.L39c
.L278:
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
.L39c:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008258

.thumb_func_start OvlFunc_895_20083bc
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x821
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3d6
	ldr	r0, =0x1034
	mov	r1, #1
	bl	__Func_801776c
	b	.L400
.L3d6:
	ldr	r0, =0xf02
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3f8
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x1031
	mov	r1, #1
	ldr	r5, [r3]
	bl	__Func_801776c
	mov	r3, #0xb9
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	b	.L400
.L3f8:
	ldr	r0, =0x1031
	mov	r1, #1
	bl	__Func_801776c
.L400:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20083bc

.thumb_func_start OvlFunc_895_2008420
	push	{r5, r6, lr}
	ldr	r0, =0xf02
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L430
	b	.L54e
.L430:
	ldr	r0, =0x821
	bl	__GetFlag
	cmp	r0, #0
	beq	.L43c
	b	.L54e
.L43c:
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r0, #0xb6
	bl	__PlaySound
	mov	r5, #1
	mov	r2, #0x64
	mov	r3, #0x47
	mov	r1, #0x47
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r6, =0x1032
	mov	r1, #1
	mov	r0, r6
	bl	__Func_801776c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #0x78
	mov	r3, #0x1e
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x78
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	bl	__Func_8010704
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
	add	r6, #1
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, r6
	bl	__Func_801776c
	ldr	r0, =0x143
	bl	__SetFlag
	ldr	r0, =0x821
	bl	__SetFlag
	bl	__CutsceneEnd
.L54e:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008420

