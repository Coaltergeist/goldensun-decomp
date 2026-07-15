	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008310
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp]
	ldr	r3, =gState
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r7, r0
	bl	__CutsceneStart
	ldr	r3, [sp, #4]
	lsl	r3, #16
	mov	r11, r3
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	add	r3, r11
	mov	r5, #0x80
	lsl	r5, #12
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [sp]
	lsl	r3, #16
	mov	r9, r3
	ldr	r3, [r6, #0x10]
	add	r3, r9
	mov	r10, r2
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r6, #0x30]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	mov	r8, r2
	str	r2, [r6, #0x34]
	mov	r0, r6
	ldr	r2, [r6, #0xc]
	bl	__Actor_TravelTo
	mov	r0, r6
	mov	r1, #0x1b
	bl	__Actor_SetAnim
	ldr	r3, [r7, #8]
	mov	r2, r10
	add	r3, r11
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [r7, #0x10]
	add	r3, r9
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r7, #0x30]
	mov	r2, r8
	add	r3, r5
	str	r2, [r7, #0x34]
	mov	r0, r7
	ldr	r2, [r7, #0xc]
	bl	__Actor_TravelTo
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L3b4
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L3be
.L3b4:
	mov	r0, r7
	mov	r1, #4
	bl	__Actor_SetAnim
	b	.L3c6
.L3be:
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
.L3c6:
	mov	r0, #0xe2
	bl	__PlaySound
	mov	r0, r6
	bl	__Actor_WaitMovement
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, r7
	mov	r1, #2
	bl	__Actor_SetAnim
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008310

	.section .text.after_8400, "ax", %progbits

.thumb_func_start OvlFunc_955_20084c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	mov	r9, r3
	mov	r5, r0
	mov	r0, r9
	mov	r10, r2
	sub	sp, #4
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #5
	add	r2, r3
	mov	r3, #0xe0
	mov	r5, r0
	lsl	r3, #8
	and	r2, r3
	ldr	r1, [r5, #8]
	lsr	r3, r7, #31
	add	r3, r7, r3
	mov	r8, r2
	asr	r3, #1
	asr	r2, r1, #20
	mov	r0, #0
	cmp	r2, r3
	beq	.L514
	mov	r0, #1
.L514:
	mov	r3, r10
	lsl	r3, #19
	lsl	r7, #19
	mov	r10, r3
	cmp	r0, #0
	beq	.L530
	sub	r3, r7, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r1, #0
	mov	r11, r3
	str	r1, [sp]
	b	.L542
.L530:
	ldr	r3, [r5, #0x10]
	mov	r1, r10
	mov	r2, #0
	sub	r3, r1, r3
	mov	r11, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.L542:
	bl	__CutsceneStart
	mov	r0, r9
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r3, =0x3333
	mov	r2, #0x80
	lsl	r2, #8
	str	r3, [r5, #0x34]
	mov	r3, r8
	str	r2, [r5, #0x30]
	ldr	r2, =.L40c0
	cmp	r3, #0
	bge	.L56a
	ldr	r1, =0x3fff
	add	r3, r1
.L56a:
	asr	r3, #14
	ldrb	r1, [r2, r3]
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r3, r10
	mov	r2, #0
	mov	r1, r7
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, r9
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__galloc_ewram
	mov	r2, #0xf0
	lsl	r2, #1
	add	r0, r2
	mov	r1, r5
	ldr	r0, [r0]
	bl	__Camera_SetTarget
	mov	r1, #0x80
	mov	r0, r9
	ldr	r2, =0x3333
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r0, r6
	mov	r1, #2
	bl	__Actor_SetAnim
	ldr	r1, [r6, #8]
	ldr	r2, [sp]
	ldr	r3, [r6, #0x10]
	add	r1, r11
	add	r3, r2
	mov	r0, r6
	mov	r2, #0
	bl	__Actor_TravelTo
	mov	r0, #0xef
	bl	__PlaySound
	mov	r0, r6
	bl	__Actor_WaitMovement
	mov	r1, #1
	mov	r0, r6
	bl	__Actor_SetAnim
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd5
	bl	__PlaySound
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	bl	__CutsceneEnd
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20084c0
