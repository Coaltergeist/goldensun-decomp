	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_20085e0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r6, #0xf
.L5e6:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	__Func_8011f54
	cmp	r0, #0
	bne	.L644
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r5
	add	r3, #0x55
	strb	r0, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r3, [r5, #0x10]
	ldr	r2, [r5, #8]
	asr	r3, #20
	asr	r2, #20
	add	r3, #0x34
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r3, #1
	mov	r1, #0xd
	mov	r2, #1
	bl	__Func_8010704
	ldr	r3, =0x205
	add	r0, r6, r3
	bl	__SetFlag
.L644:
	add	r6, #1
	cmp	r6, #0x11
	ble	.L5e6
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20085e0

.section .text.after_8658, "ax", %progbits

.thumb_func_start OvlFunc_956_20086a4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0
	mov	r1, r5
	mov	r2, r6
	bl	__Func_8012038
	cmp	r0, #0xff
	bne	.L6be
	mov	r0, #2
	neg	r0, r0
	b	.L70c
.L6be:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r5, #20
	asr	r3, #20
	asr	r6, #20
	cmp	r3, r5
	bne	.L6d8
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, r6
	beq	.L704
.L6d8:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r5
	bne	.L6ee
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, r6
	beq	.L704
.L6ee:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r5
	bne	.L70a
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, r6
	bne	.L70a
.L704:
	mov	r0, #1
	neg	r0, r0
	b	.L70c
.L70a:
	mov	r0, #0
.L70c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_956_20086a4

.section .text.after_8714, "ax", %progbits

.thumb_func_start OvlFunc_956_200876c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r5, r0
	ldr	r0, [r5]
	sub	sp, #0x20
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0x1f
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, r10
	ldrh	r3, [r0, #6]
	ldr	r2, =.L4c38
	lsr	r3, #13
	mov	r1, #0
	lsl	r3, #1
	mov	r9, r1
	ldrh	r1, [r2, r3]
	ldr	r3, [r0, #8]
	ldr	r2, =0xfff00000
	ldr	r5, [r5]
	mov	r4, #0x80
	lsl	r4, #12
	and	r3, r2
	add	r3, r4
	mov	r11, r5
	add	r5, sp, #0x14
	str	r3, [r5]
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r0, #0x10]
	and	r3, r2
	add	r3, r4
	mov	r0, #0x80
	str	r3, [r5, #8]
	mov	r2, r5
	lsl	r0, #13
	str	r4, [sp, #8]
	bl	__vec3_translate
	mov	r1, r8
	ldr	r7, [r1, #8]
	ldr	r2, [r5]
	sub	r3, r2, r7
	ldr	r6, [r1, #0x10]
	ldr	r4, [sp, #8]
	cmp	r3, #0
	bge	.L7e2
	sub	r3, r7, r2
.L7e2:
	cmp	r3, r4
	ble	.L7e8
	b	.L9ea
.L7e8:
	ldr	r2, [r5, #8]
	sub	r3, r2, r6
	cmp	r3, #0
	blt	.L7fc
	mov	r2, #0x80
	lsl	r2, #14
	cmp	r3, r2
	ble	.L7fa
	b	.L9ea
.L7fa:
	b	.L808
.L7fc:
	mov	r0, #0x80
	sub	r3, r6, r2
	lsl	r0, #14
	cmp	r3, r0
	ble	.L808
	b	.L9ea
.L808:
	ldr	r1, =gKeyHeld
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L834
	mov	r1, #2
	sub	r2, #0x28
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
.L81c:
	ldr	r3, =0xfff00000
	add	r5, r7, r3
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_956_2008714
	cmp	r0, #0
	bne	.L862
	mov	r0, #1
	add	r9, r0
	mov	r7, r5
	b	.L81c
.L834:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	bne	.L840
	b	.L9f2
.L840:
	mov	r1, #3
	mov	r2, #8
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
.L848:
	mov	r3, #0x80
	lsl	r3, #13
	add	r5, r7, r3
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_956_2008714
	cmp	r0, #0
	bne	.L862
	mov	r0, #1
	add	r9, r0
	mov	r7, r5
	b	.L848
.L862:
	mov	r1, r9
	cmp	r1, #0
	bne	.L86a
	b	.L9f2
.L86a:
	mov	r2, r8
	ldr	r3, [r2, #8]
	asr	r3, #20
	str	r3, [sp]
	mov	r3, #9
	str	r3, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #8
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #0x4a
	mov	r2, #0x3c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r2, #8
	mov	r0, #0x78
	mov	r1, #0x3c
	bl	__Func_8010704
	bl	__CutsceneStart
	mov	r1, #8
	mov	r0, r11
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r5, =0x3333
	mov	r0, #0x80
	mov	r1, r8
	lsl	r0, #8
	str	r0, [r1, #0x30]
	str	r5, [r1, #0x34]
	ldr	r1, [sp, #0x10]
	mov	r0, r8
	bl	__Actor_SetAnim
	mov	r3, r6
	mov	r2, #0
	mov	r1, r7
	mov	r0, r8
	bl	__Actor_TravelTo
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, r11
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__galloc_ewram
	mov	r2, #0xf0
	lsl	r2, #1
	add	r0, r2
	ldr	r0, [r0]
	mov	r1, r8
	bl	__Camera_SetTarget
	mov	r1, #0x80
	mov	r2, r5
	lsl	r1, #8
	mov	r0, r11
	bl	__MapActor_SetSpeed
	mov	r0, #0xef
	bl	__PlaySound
	mov	r0, r10
	mov	r1, #2
	bl	__Actor_SetAnim
	ldr	r3, [sp, #0xc]
	mov	r1, r9
	mul	r1, r3
	mov	r0, r10
	ldr	r3, [r0, #8]
	lsl	r1, #16
	add	r1, r3
	mov	r2, #0
	ldr	r3, [r0, #0x10]
	bl	__Actor_TravelTo
	mov	r0, r10
	bl	__Actor_WaitMovement
	mov	r1, #1
	mov	r0, r10
	bl	__Actor_SetAnim
	mov	r0, r8
	bl	__Actor_WaitMovement
	mov	r1, #0xa6
	lsl	r1, #19
	cmp	r7, r1
	blt	.L9a2
	ldr	r0, =0x369
	bl	__SetFlag
	mov	r0, #0x1f
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #6
	mov	r1, #0x12
	mov	r0, #0x1f
	bl	__Func_809228c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #8
	mov	r0, r8
	bl	__Actor_SetAnim
	mov	r0, r8
	bl	__Actor_WaitMovement
	mov	r2, r8
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r5, #0x54
	mov	r0, #0x56
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x56
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xf0
	bl	__PlaySound
	b	.L9de
.L9a2:
	mov	r1, #1
	mov	r0, r8
	bl	__Actor_SetAnim
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd5
	bl	__PlaySound
	mov	r2, #9
	asr	r5, r7, #20
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x3d
	str	r3, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_8010704
.L9de:
	mov	r0, #0xf
	bl	__CutsceneWait
	bl	__CutsceneEnd
	b	.L9f2
.L9ea:
	bl	OvlFunc_common1_2060
	bl	OvlFunc_956_20085e0
.L9f2:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200876c
