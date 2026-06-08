	.include "macros.inc"

.thumb_func_start OvlFunc_938_200806c
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.L8c
	ldr	r5, =.L1df4
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.L8e
.L8c:
	ldr	r0, =gScript_918__02009ddc
.L8e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_938_200806c

.thumb_func_start OvlFunc_938_20080a4
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.Lbc
	ldr	r0, =.L1f38
	b	.Lbe
.Lbc:
	ldr	r0, =.L1f2c
.Lbe:
	pop	{r1}
	bx	r1
.func_end OvlFunc_938_20080a4

.thumb_func_start OvlFunc_938_20080d4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1b83
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_20080d4

.thumb_func_start OvlFunc_938_20080f4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1b88
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_20080f4

.thumb_func_start OvlFunc_938_2008114
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #8
	bl	__MapActor_Emote
	ldr	r0, =0x1b91
	bl	__Func_8092b94
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #8
	bl	__Func_8093040
	ldr	r0, =0x913
	bl	__SetFlag
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2008114

.thumb_func_start OvlFunc_938_2008184
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L1aa
	mov	r0, #0xbc
	bl	__PlaySound
	b	.L1b0
.L1aa:
	mov	r0, #0x9e
	bl	__PlaySound
.L1b0:
	mov	r0, #1
	bl	__Func_80118a8
	mov	r0, #2
	bl	__Func_80118a8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L1f4
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_809228c
	b	.L200
.L1f4:
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_8092208
.L200:
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2008184

.thumb_func_start OvlFunc_938_2008230
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	ldr	r3, =0x209
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.L24c
	bl	OvlFunc_938_2008264
.L24c:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_938_2008230

.thumb_func_start OvlFunc_938_2008264
	push	{lr}
	mov	r0, #1
	sub	sp, #8
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bgt	.L28e
	cmp	r3, #0xa
	bge	.L2e8
	cmp	r3, #9
	beq	.L294
	b	.L33e
.L28e:
	cmp	r3, #0x14
	beq	.L326
	b	.L33e
.L294:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2ba
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r0, #6]
	ldr	r0, =0x914
	bl	__GetFlag
	cmp	r0, #0
	bne	.L33e
	bl	OvlFunc_938_2009494
	b	.L33e
.L2ba:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x321
	bl	__GetFlag
	cmp	r0, #0
	beq	.L33e
	mov	r2, #0xd3
	mov	r0, #8
	ldr	r1, =0x38a0000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xd0
	lsl	r3, #8
	strh	r3, [r0, #6]
	b	.L33e
.L2e8:
	ldr	r0, =0x915
	bl	__GetFlag
	cmp	r0, #0
	beq	.L33e
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x46
	mov	r2, #0x36
	mov	r3, #0x46
	bl	__CopyMapTiles
	mov	r3, #0x37
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #9
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.L33e
.L326:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L33e
	bl	OvlFunc_938_2008360
.L33e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2008264

.thumb_func_start OvlFunc_938_2008360
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x10002
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x10002
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe4
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	mov	r1, #0xd6
	mov	r2, #0xdc
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xd6
	mov	r2, #0xf3
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xd4
	mov	r2, #0xfb
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xda
	mov	r2, #0xf3
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xdc
	mov	r2, #0xfb
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xd2
	mov	r0, #0xa
	lsl	r1, #18
	ldr	r2, =0x2060000
	bl	__MapActor_SetPos
	mov	r1, #0xde
	mov	r0, #0xb
	lsl	r1, #18
	ldr	r2, =0x2060000
	bl	__MapActor_SetPos
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xec
	mov	r3, #0
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	OvlFunc_938_2009450
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xf0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x90
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #8
	bl	__MapActor_Emote
	ldr	r0, =0x1b21
	bl	__Func_8092b94
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x6002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0xa
	ldr	r0, =0x6002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	ldr	r0, =0x6002
	bl	__Func_8093054
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0xdf
	mov	r2, #0xdc
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	OvlFunc_938_200940c
	mov	r0, #0x28
	bl	OvlFunc_938_2009450
	mov	r1, #0xd6
	mov	r2, #0xdc
	lsl	r1, #2
	lsl	r2, #1
	b	.L7a4

	.pool_aligned

.L7a4:
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xf0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xf0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x90
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8093040
	mov	r0, #0x14
	bl	OvlFunc_938_2009450
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L9a2
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L9a2:
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	cmp	r5, #0
	beq	.L9be
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L9be:
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x107
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lad4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lafa

	.pool_aligned

.Lad4:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
.Lafa:
	mov	r0, #0x14
	bl	OvlFunc_938_2009450
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xd9
	mov	r2, #0xec
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0xa
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #0x28
	bl	OvlFunc_938_200940c
	mov	r0, #0x14
	bl	OvlFunc_938_2009450
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lce8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.Ld2a

	.pool_aligned

.Lce8:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r2, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
.Ld2a:
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0xa
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #0xa
	bl	OvlFunc_938_2009450
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #0x28
	bl	OvlFunc_938_200940c
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #0x14
	bl	OvlFunc_938_2009450
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x84
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #0x28
	bl	OvlFunc_938_200940c
	mov	r0, #0x14
	bl	OvlFunc_938_2009450
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #4
	b	.L1100

	.pool_aligned

.L1100:
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1232
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	OvlFunc_938_2009450
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L1288
.L1232:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #1
	bl	__Func_8093040
	mov	r0, #0xa
	bl	OvlFunc_938_2009450
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
.L1288:
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xd4
	mov	r2, #0x87
	mov	r0, #0xa
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xdc
	mov	r2, #0x87
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #0xb
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =ActorCmd_ARRAY_938__02009b94
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x912
	bl	__SetFlag
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2008360

.thumb_func_start OvlFunc_938_200940c
	push	{r5, lr}
	mov	r1, #0xc0
	mov	r5, r0
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	cmp	r5, #0
	beq	.L144a
	mov	r0, r5
	bl	__CutsceneWait
.L144a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_200940c

.thumb_func_start OvlFunc_938_2009450
	push	{r5, lr}
	mov	r1, #0xc0
	mov	r5, r0
	lsl	r1, #8
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	cmp	r5, #0
	beq	.L148e
	mov	r0, r5
	bl	__CutsceneWait
.L148e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2009450

.thumb_func_start OvlFunc_938_2009494
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x86
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #18
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xd8
	mov	r0, #0
	lsl	r1, #18
	ldr	r2, =0x2760000
	bl	__MapActor_SetPos
	ldr	r6, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r2, [r6]
	lsl	r1, #1
	mov	r5, #0x80
	add	r3, r2, r1
	lsl	r5, #1
	str	r5, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__MapTransitionIn
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xec
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xd8
	mov	r2, #0xf9
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L155c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L155c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1570
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L1570:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1584
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L1584:
	mov	r1, #0xd6
	mov	r2, #0xf3
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xd4
	mov	r2, #0xfb
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xda
	mov	r2, #0xf3
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xdc
	mov	r2, #0xfb
	lsl	r2, #1
	mov	r0, #3
	lsl	r1, #2
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	OvlFunc_938_2009450
	mov	r1, r5
	mov	r0, #9
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #9
	bl	__Func_8092adc
	ldr	r0, =0x2588
	bl	__Func_8092b94
	ldr	r0, =0x2009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, r5
	mov	r0, #8
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x107
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x2009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L16f0
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.L170e
.L16f0:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r6]
	mov	r1, #0xec
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r5, #0
.L170e:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	cmp	r5, #0
	beq	.L172c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L172c:
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r0, =0x2009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x107
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80925cc
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x6002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x6002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L18c0
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xec
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L18d0

	.pool_aligned

.L18c0:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
.L18d0:
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	OvlFunc_938_2009450
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x2009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0xa
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =ActorCmd_ARRAY_938__02009b94
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x914
	bl	__SetFlag
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2009494

	.section .data
	.global .L1bd4
	.global gScript_887__02009c04

	.global ActorCmd_ARRAY_938__02009b94
ActorCmd_ARRAY_938__02009b94:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1b94, (0x1bd4-0x1b94)
.L1bd4:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1bd4, (0x1c04-0x1bd4)
gScript_887__02009c04:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1c04, (0x1d9c-0x1c04)
	.global gScript_917__02009d9c
gScript_917__02009d9c:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1d9c, (0x1ddc-0x1d9c)
	.global gScript_918__02009ddc
gScript_918__02009ddc:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1ddc, (0x1df4-0x1ddc)
.L1df4:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1df4, (0x1f2c-0x1df4)
.L1f2c:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1f2c, (0x1f38-0x1f2c)
.L1f38:
	.incbin "overlays/rom_7c37ac/orig.bin", 0x1f38
