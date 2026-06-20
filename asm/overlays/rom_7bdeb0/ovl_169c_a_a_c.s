	.include "macros.inc"

.thumb_func_start OvlFunc_934_2009770
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r0, #0
	mov	r6, #0x17
	mov	r5, #0x22
	mov	r1, #0x22
	mov	r2, #0xd
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.L17ae
	mov	r0, #0xb
	mov	r1, #0x23
	mov	r2, #0x23
	bl	OvlFunc_934_2009938
	mov	r0, #0x18
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.L17ca
.L17ae:
	mov	r0, #0xb
	mov	r1, #0x17
	mov	r2, #0x23
	bl	OvlFunc_934_2009938
	mov	r3, #0x23
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
.L17ca:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009770

.thumb_func_start OvlFunc_934_20097d8
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
	blt	.L187c
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L1886
.L187c:
	mov	r0, r7
	mov	r1, #4
	bl	__Actor_SetAnim
	b	.L188e
.L1886:
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
.L188e:
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
.func_end OvlFunc_934_20097d8

