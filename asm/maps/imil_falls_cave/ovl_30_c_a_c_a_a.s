	.include "macros.inc"

.thumb_func_start ImilFallsCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lm922_110
	ldr	r0, =.Lm922_29bc
	b	.Lm922_144
.Lm922_110:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.Lm922_11a
	ldr	r0, =.Lm922_29ec
	b	.Lm922_144
.Lm922_11a:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lm922_124
	ldr	r0, =.Lm922_2a4c
	b	.Lm922_144
.Lm922_124:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_12e
	ldr	r0, =.Lm922_2ac4
	b	.Lm922_144
.Lm922_12e:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lm922_138
	ldr	r0, =.Lm922_2b3c
	b	.Lm922_144
.Lm922_138:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lm922_142
	ldr	r0, =.Lm922_2b9c
	b	.Lm922_144
.Lm922_142:
	ldr	r0, =.Lm922_29a4
.Lm922_144:
	pop	{r1}
	bx	r1
.func_end ImilFallsCave_GetActors

.thumb_func_start OvlFunc_922_2008180
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
	blt	.Lm922_224
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.Lm922_22e
.Lm922_224:
	mov	r0, r7
	mov	r1, #4
	bl	__Actor_SetAnim
	b	.Lm922_236
.Lm922_22e:
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
.Lm922_236:
	mov	r0, r6
	bl	__Actor_WaitMovement
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
.func_end OvlFunc_922_2008180

