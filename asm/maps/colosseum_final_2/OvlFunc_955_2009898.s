	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2009898
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r10, r2
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	mov	r9, r3
	mov	r5, r0
	mov	r0, r9
	mov	r6, r1
	sub	sp, #4
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r1, [r7, #8]
	lsr	r3, r6, #31
	add	r3, r6, r3
	asr	r2, r1, #20
	asr	r3, #1
	mov	r0, #0
	cmp	r2, r3
	beq	.Lm955_18dc
	mov	r0, #1
.Lm955_18dc:
	mov	r3, r10
	lsl	r3, #16
	lsl	r6, #16
	mov	r10, r3
	cmp	r0, #0
	beq	.Lm955_18f8
	sub	r3, r6, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r2, #0
	mov	r11, r3
	str	r2, [sp]
	b	.Lm955_190a
.Lm955_18f8:
	mov	r3, #0
	mov	r11, r3
	ldr	r3, [r7, #0x10]
	mov	r2, r10
	sub	r3, r2, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.Lm955_190a:
	mov	r1, #8
	mov	r0, r9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r5, =0x3333
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, #0xef
	bl	__PlaySound
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
	mov	r3, r10
	mov	r1, r6
	mov	r2, #0
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, r9
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, r9
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r0, r8
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r2, r8
	ldr	r1, [r2, #8]
	ldr	r3, [r2, #0x10]
	ldr	r2, [sp]
	add	r1, r11
	add	r3, r2
	mov	r0, r8
	mov	r2, #0
	bl	__Actor_TravelTo
	mov	r0, r8
	bl	__Actor_WaitMovement
	mov	r0, r8
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r1, #1
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd5
	bl	__PlaySound
	mov	r0, #0xf
	bl	__CutsceneWait
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2009898

