	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_2008390
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r5, #0
.L3aa:
	mov	r1, #1
	ldr	r0, =0x403a52
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #1
	bne	.L3e8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
.L3e8:
	add	r5, #1
	cmp	r5, #6
	bne	.L3aa
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #10
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0xa6
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x1f10000
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x90
	bl	__PlaySound
	ldr	r2, =.L5088
	mov	r8, r2
	mov	r0, r8
	mov	r1, #0x60
	mov	r2, #0x1d
	bl	__Func_8010560
	mov	r3, #0x29
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r9, r3
	mov	r10, r2
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r5, #1
	mov	r3, #0x1f
	mov	r6, #2
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8012330
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1370000
	neg	r1, r1
	ldr	r2, =0x1f10000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x90
	bl	__PlaySound
	mov	r0, r8
	mov	r1, #0x4a
	mov	r2, #0x1d
	bl	__Func_8010560
	mov	r3, #0x13
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0x1f
	mov	r1, #0x2a
	mov	r2, #0x13
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8012330
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	ldr	r0, =0x2970000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x90
	bl	__PlaySound
	mov	r0, r8
	mov	r1, #0x60
	mov	r2, #0xa
	bl	__Func_8010560
	mov	r2, r9
	mov	r3, #0xa
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0xc
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r2, #0xed
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x2c60000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x42
	mov	r0, #0
	bl	__CopyMapTiles
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb2
	mov	r2, #0x80
	mov	r3, #0xe8
	lsl	r3, #17
	lsl	r2, #13
	lsl	r1, #18
	mov	r0, #0xdc
	bl	OvlFunc_896_200c260
	mov	r5, r0
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8019908
	ldr	r5, =0x1075
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0xaf
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	sub	r5, #1
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_Jump
	mov	r0, r5
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r2, #0xed
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #0
	ldr	r0, =0x2c60000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r0, =0x83c
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2008390

.thumb_func_start OvlFunc_896_20086f4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r5, #0
.L70e:
	mov	r1, #1
	ldr	r0, =0x404a4e
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #1
	bne	.L74c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
.L74c:
	add	r5, #1
	cmp	r5, #6
	bne	.L70e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8012330
	ldr	r0, =0x59999
	ldr	r1, =0xb333
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc4
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x90
	bl	__PlaySound
	ldr	r2, =.L5088
	mov	r10, r2
	mov	r0, r10
	mov	r1, #0x54
	mov	r2, #4
	bl	__Func_8010560
	mov	r3, #0x1d
	mov	r9, r3
	mov	r2, r9
	mov	r3, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r8, r3
	mov	r1, #0x2a
	mov	r3, #6
	mov	r2, #0x1d
	mov	r0, #0x57
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8012330
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1570000
	neg	r1, r1
	ldr	r2, =0x1710000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x90
	bl	__PlaySound
	mov	r0, r10
	mov	r1, #0x4c
	mov	r2, #0x15
	bl	__Func_8010560
	mov	r5, #0x15
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r3, #0x17
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r0, #0x57
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8012330
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1570000
	neg	r1, r1
	ldr	r2, =0x1f10000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x90
	bl	__PlaySound
	mov	r0, r10
	mov	r1, #0x4c
	mov	r2, #0x1d
	bl	__Func_8010560
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x1f
	mov	r0, #0x57
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xb2
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x2e
	mov	r0, #0
	bl	__CopyMapTiles
	mov	r6, #0xb2
	mov	r0, #0x14
	bl	__CutsceneWait
	lsl	r6, #18
	mov	r2, #0x80
	mov	r3, #0x90
	lsl	r3, #16
	lsl	r2, #13
	mov	r1, r6
	mov	r0, #0xdd
	bl	OvlFunc_896_200c260
	mov	r5, r0
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8019908
	ldr	r5, =0x1076
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0xaf
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	sub	r5, #2
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_Jump
	mov	r0, r5
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r2, #0x98
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #0
	mov	r0, r6
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r0, =0x83d
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_20086f4

