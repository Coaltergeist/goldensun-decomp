	.include "macros.inc"

.thumb_func_start OvlFunc_926_2008388
	push	{r5, lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L3a0
	ldr	r0, =.L48f0
	b	.L3f4
.L3a0:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L3b2
	ldr	r0, =.L4ae8
	b	.L3f4
.L3b2:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3ea
	ldr	r0, =.L4998
	ldr	r1, =0x895
	mov	r3, r0
	add	r3, #0x7a
	strh	r1, [r3]
	add	r3, #0x30
	strh	r1, [r3]
	mov	r2, r0
	mov	r3, #0x90
	add	r2, #0xc8
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0xf8
	add	r2, #8
	lsl	r3, #16
	str	r3, [r2]
	mov	r2, #0x85
	lsl	r2, #1
	add	r3, r0, r2
	add	r2, #0x18
	strh	r1, [r3]
	add	r3, r0, r2
	strh	r1, [r3]
.L3ea:
	ldr	r5, =.L4998
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
.L3f4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_926_2008388

.thumb_func_start OvlFunc_926_2008414
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x178a
	bl	__MessageID
	mov	r0, #0x89
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L43c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #4
	strh	r3, [r2]
.L43c:
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L45a
	mov	r0, #0x89
	lsl	r0, #4
	bl	__SetFlag
	b	.L46a
.L45a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L46a:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008414

.thumb_func_start OvlFunc_926_2008484
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x88f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4a8
	ldr	r0, =0x17d6
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8093054
	bl	__CutsceneEnd
	b	.L500
.L4a8:
	ldr	r0, =0x1794
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L4f4
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L4f4
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L4f4:
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L500:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008484

.thumb_func_start OvlFunc_926_2008518
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #9
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	ldr	r0, =0x17b4
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0xc4
	mov	r0, #0
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x84
	bl	__PlaySound
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r0, #0x28]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #11
	mov	r9, r2
	str	r2, [r0, #0x48]
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0xc4
	mov	r1, #0x98
	lsl	r2, #1
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x48]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	mov	r10, r3
	bl	__Func_8092adc
	mov	r0, #0x84
	bl	__PlaySound
	add	r4, sp, #0x10
	mov	r3, #7
	str	r3, [r4, #4]
	ldr	r2, [r6, #0x10]
	mov	r8, r4
	mov	r3, #0x80
	mov	r4, r10
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	mov	r5, #0
	str	r4, [sp, #8]
	add	r2, r9
	mov	r4, r8
	lsl	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r6, #0x10]
	mov	r3, r10
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	mov	r4, r8
	str	r3, [sp, #8]
	add	r2, r9
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r6, #0x10]
	mov	r4, r10
	ldr	r1, [r6, #0xc]
	ldr	r0, [r6, #8]
	add	r2, r9
	str	r4, [sp, #8]
	ldr	r3, =0xffff8000
	mov	r4, r8
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	__Func_809202c
	mov	r3, #0xa
	mov	r2, #0x16
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0xa
	bl	__Func_8010704
	ldr	r0, =0x892
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008518

.thumb_func_start OvlFunc_926_2008658
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	ldr	r0, =0x894
	bl	__SetFlag
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x17b7
	bl	__MessageID
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r3, #0xa
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008658

.thumb_func_start OvlFunc_926_200871c
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L782
	mov	r2, #0xfc
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x17ac
	bl	__MessageID
	b	.L9a8
.L782:
	ldr	r0, =0x179f
	bl	__MessageID
	mov	r1, #8
	mov	r0, #0
	bl	OvlFunc_926_200c0dc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	bl	OvlFunc_926_200c128
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xfc
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L858
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_926_200c0dc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x32
	bl	__CutsceneWait
	bl	OvlFunc_926_200c128
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L870
.L858:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L870:
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #8
	bl	__MapActor_Emote
	ldr	r0, =0x17a4
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L8ee
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_926_200c0dc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x32
	bl	__CutsceneWait
	bl	OvlFunc_926_200c128
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L91a
.L8ee:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L91a:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r2, #0xe8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xec
	mov	r0, #8
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_80921c4
.L9a8:
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L9d4
	ldr	r0, =0x17ab
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	b	.La7c
.L9d4:
	ldr	r0, =0x17ad
	bl	__MessageID
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8093500
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #1
	ldr	r0, =0x10003
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	bl	__WaitMapTransition
	bl	__Func_8093530
	bl	OvlFunc_926_200c140
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	ldr	r0, =0x891
	bl	__SetFlag
.La7c:
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200871c

