	.include "macros.inc"

.thumb_func_start OvlFunc_926_200a484
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L24ac
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L24ac
	ldr	r0, =0x18ad
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	b	.L24f2
.L24ac:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L477a
	mov	r1, #0x4e
	mov	r2, #0xd
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x99
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x98
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #4
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.L24f2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a484

.thumb_func_start OvlFunc_926_200a508
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L2528
	mov	r0, #0xd
	bl	__UI_Sanctum
	b	.L2536
.L2528:
	ldr	r0, =0x1a1c
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
.L2536:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a508

