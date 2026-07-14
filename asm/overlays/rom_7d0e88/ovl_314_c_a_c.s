	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_20091c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #3
	and	r7, r3
	mov	r10, r0
	cmp	r7, #0
	bne	.L124c
	add	r2, sp, #0x10
	mov	r3, #0xa
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r6, [r2, #8]
	sub	r3, #8
	lsl	r3, #16
	add	r6, r3
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r5, [r2, #0x10]
	sub	r3, #8
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	ldr	r3, =0x90001
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_common0_10c
.L124c:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_20091c4

.thumb_func_start OvlFunc_947_2009268
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0x55
	mov	r5, r0
	add	r1, r5
	ldrb	r2, [r1]
	ldrh	r3, [r5, #6]
	mov	r10, r1
	mov	r1, #0x80
	lsl	r1, #6
	add	r7, r3, r1
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r9, r2
	and	r7, r3
	mov	r2, #0xf9
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #0
	bne	.L1398
	ldr	r3, [r5, #8]
	ldr	r1, =0xfff00000
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, #0x80
	and	r3, r1
	add	r3, r2
	lsl	r0, #13
	mov	r8, r1
	mov	r2, r6
	mov	r1, r7
	str	r3, [r6, #8]
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #1
	beq	.L1396
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_947_2008350
	cmp	r0, #0
	bne	.L1396
	ldr	r3, [r5, #8]
	mov	r2, r8
	mov	r1, #0x80
	lsl	r1, #12
	and	r3, r2
	add	r3, r1
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, #0x80
	and	r3, r2
	add	r3, r1
	lsl	r0, #14
	mov	r1, r7
	mov	r2, r6
	str	r3, [r6, #8]
	bl	__vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_947_2008350
	cmp	r0, #0
	bne	.L1396
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #0
	bne	.L1396
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, r10
	ldrb	r2, [r3]
	mov	r3, #0x7e
	and	r3, r2
	mov	r1, r10
	strb	r3, [r1]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, #2
	ldrsh	r1, [r6, r2]
	mov	r0, #0
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, r9
	mov	r2, r10
	strb	r1, [r2]
	bl	__CutsceneEnd
	mov	r0, #1
	b	.L1398
.L1396:
	mov	r0, #0
.L1398:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2009268
