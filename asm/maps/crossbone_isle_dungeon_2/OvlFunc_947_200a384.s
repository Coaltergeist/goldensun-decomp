	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a384
	push	{r5, lr}
	ldr	r0, =0x203
	sub	sp, #8
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.Lm947_2472
	ldr	r0, =0x202
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xb8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0xa
	mov	r2, #0x3c
	mov	r1, #0xa
	mov	r0, #0x49
	bl	__CopyMapTiles
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_947_200a230
	bl	__StartTask
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm947_2442
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_947_200a2d8
	mov	r1, #6
	str	r3, [r0, #0x6c]
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__Func_8092504
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0x12
	mov	r2, #0xd
	str	r5, [r0, #0x6c]
	mov	r1, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x11
	bl	__Func_8010704
	ldr	r0, =0x201
	bl	__ClearFlag
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetBehavior
	b	.Lm947_2448
.Lm947_2442:
	mov	r0, #0x3c
	bl	__CutsceneWait
.Lm947_2448:
	ldr	r0, =OvlFunc_947_200a230
	bl	__StopTask
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0xa
	mov	r2, #0x3c
	mov	r3, #0xa
	bl	__CopyMapTiles
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
.Lm947_2472:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a384

