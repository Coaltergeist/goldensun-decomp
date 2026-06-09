	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008160
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x1e
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r8, r0
	ldr	r6, [r0, #0x50]
	mov	r0, #0xcc
	lsl	r0, #2
	bl	__SetFlag
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r2, #0x34]
	ldr	r3, =0x13333
	mov	r0, #0xe3
	str	r3, [r2, #0x30]
	bl	__PlaySound
	mov	r1, #0xa8
	mov	r2, #0xa0
	mov	r3, #0x84
	mov	r0, r8
	lsl	r1, #17
	lsl	r2, #12
	lsl	r3, #17
	bl	__Actor_TravelTo
	mov	r7, #0
	mov	r5, #9
.L1a0:
	ldrh	r3, [r6, #0x1e]
	sub	r3, r7
	strh	r3, [r6, #0x1e]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	add	r7, #0x24
	cmp	r5, #0
	bge	.L1a0
	mov	r1, #0xa5
	mov	r3, #0x84
	mov	r0, r8
	lsl	r1, #17
	ldr	r2, =0xfff00000
	lsl	r3, #17
	bl	__Actor_TravelTo
	mov	r7, #0xb4
	lsl	r7, #1
	mov	r5, #0x15
.L1ca:
	ldrh	r3, [r6, #0x1e]
	sub	r3, r7
	strh	r3, [r6, #0x1e]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	add	r7, #0x24
	cmp	r5, #0
	bge	.L1ca
	mov	r0, r8
	bl	__Actor_WaitMovement
	mov	r0, #2
	bl	__CutsceneWait
	mov	r5, #0
	mov	r0, #0xf0
	bl	__PlaySound
	strh	r5, [r6, #0x1e]
	mov	r0, #0x1e
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r3, #0xa8
	mov	r2, r8
	lsl	r3, #17
	str	r3, [r2, #8]
	ldr	r3, =0xfff80000
	str	r3, [r2, #0xc]
	mov	r3, #0x84
	lsl	r3, #17
	str	r3, [r2, #0x10]
	str	r5, [r2, #0x28]
	str	r5, [r2, #0x24]
	mov	r3, #0x14
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0x15
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008160

.thumb_func_start OvlFunc_955_2008258
	push	{lr}
	ldr	r0, =0x331
	sub	sp, #8
	bl	__SetFlag
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008258

.thumb_func_start OvlFunc_955_200828c
	push	{lr}
	ldr	r0, =0x332
	sub	sp, #8
	bl	__SetFlag
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_200828c

.thumb_func_start OvlFunc_955_20082c0
	push	{lr}
	ldr	r0, =0x333
	sub	sp, #8
	bl	__SetFlag
	mov	r3, #0x20
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20082c0

