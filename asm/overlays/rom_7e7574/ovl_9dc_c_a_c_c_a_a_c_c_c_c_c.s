	.include "macros.inc"

.thumb_func_start OvlFunc_959_200a134
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	bl	__MapTransitionOut
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	mov	r0, #0x89
	lsl	r0, #2
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a134

.thumb_func_start OvlFunc_959_200a1c4
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_809280c
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	bl	__MapTransitionOut
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	ldr	r0, =0x225
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a1c4

.thumb_func_start OvlFunc_959_200a26c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x51
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r0, #2
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x22
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x20
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a26c

.thumb_func_start OvlFunc_959_200a2a0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #6
	mov	r0, #2
	mov	r1, #0x54
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #5
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a2a0

.thumb_func_start OvlFunc_959_200a2d4
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x3e
	str	r3, [sp, #4]
	mov	r5, #0x1b
	mov	r0, #2
	mov	r1, #0x56
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x11
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a2d4

.thumb_func_start OvlFunc_959_200a308
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcb8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	beq	.L2374
	ldr	r0, =0x947
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2374
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #1
	bl	__CutsceneWait
	mov	r5, #0x11
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x52
	mov	r0, #6
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r0, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #1
	bl	__CutsceneWait
	bl	OvlFunc_959_200a26c
	ldr	r0, =0x947
	bl	__SetFlag
.L2374:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a308

.thumb_func_start OvlFunc_959_200a38c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcb8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	beq	.L23f8
	ldr	r0, =0x948
	bl	__GetFlag
	cmp	r0, #0
	bne	.L23f8
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #1
	bl	__CutsceneWait
	mov	r5, #3
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x37
	mov	r0, #6
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r0, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #1
	bl	__CutsceneWait
	bl	OvlFunc_959_200a2a0
	ldr	r0, =0x948
	bl	__SetFlag
.L23f8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a38c

.thumb_func_start OvlFunc_959_200a410
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0x52
	str	r3, [sp, #4]
	mov	r6, #0x11
	mov	r0, #5
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #3
	mov	r0, #5
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x23
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x21
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a410

.thumb_func_start OvlFunc_959_200a468
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0x52
	str	r3, [sp, #4]
	mov	r6, #0x11
	mov	r0, #8
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #3
	mov	r0, #8
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x23
	str	r3, [sp, #4]
	mov	r0, #0x12
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200a468

