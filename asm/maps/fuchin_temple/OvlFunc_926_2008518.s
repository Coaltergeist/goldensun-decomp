	.include "macros.inc"
	.include "gba.inc"

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
	bl	__ActorMessage_Wait
	mov	r2, #0xc4
	mov	r0, #0
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
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
	bl	__MapActor_PlayPendingSound
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

