	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_2008a98
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0x8d
	sub	sp, #8
	bl	__PlaySound
	mov	r5, #0
.Lm896_aaa:
	mov	r1, #1
	ldr	r0, =0x4049d2
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
	bne	.Lm896_ae8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
.Lm896_ae8:
	add	r5, #1
	cmp	r5, #6
	bne	.Lm896_aaa
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0xa7
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x2110000
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
	ldr	r2, =.Lm896_5088
	mov	r8, r2
	mov	r0, r8
	mov	r1, #0x41
	mov	r2, #0x1f
	bl	__Func_8010560
	mov	r3, #0xa
	mov	r10, r3
	mov	r2, r10
	mov	r3, #0x1f
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r5, #1
	mov	r3, #0x21
	mov	r6, #2
	mov	r1, #0x2a
	mov	r2, #0xa
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
	mov	r2, #0xb1
	mov	r3, #1
	ldr	r0, =0x1870000
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
	mov	r1, #0x4f
	mov	r2, #9
	bl	__Func_8010560
	mov	r3, #0x18
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0xb
	mov	r1, #0x2a
	mov	r2, #0x18
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
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc1
	mov	r3, #1
	ldr	r0, =0x2470000
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
	mov	r1, #0x5b
	mov	r2, #0xa
	bl	__Func_8010560
	mov	r3, #0x24
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0x2a
	mov	r2, #0x24
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
	mov	r0, #0xe8
	mov	r1, #1
	mov	r3, #0
	neg	r1, r1
	ldr	r2, =0x1dd0000
	lsl	r0, #16
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
	mov	r2, #0xd
	mov	r3, #0x42
	mov	r0, #0
	bl	__CopyMapTiles
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe8
	mov	r2, #0x80
	mov	r3, #0xe8
	lsl	r2, #13
	lsl	r3, #17
	lsl	r1, #16
	mov	r0, #0xdf
	bl	OvlFunc_896_200c260
	mov	r5, r0
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8019908
	ldr	r0, =0x1077
	mov	r1, #1
	bl	__Func_801776c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2008a98

