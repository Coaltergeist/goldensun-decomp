	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_8270, "ax", %progbits

.thumb_func_start OvlFunc_954_200833c
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
	blt	.L3e0
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L3ea
.L3e0:
	mov	r0, r7
	mov	r1, #4
	bl	__Actor_SetAnim
	b	.L3f2
.L3ea:
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
.L3f2:
	mov	r0, #0xe2
	bl	__PlaySound
	mov	r0, r6
	bl	__Actor_WaitMovement
	mov	r1, #2
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
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
.func_end OvlFunc_954_200833c

	.section .text.after_842c, "ax", %progbits

	.section .text.after_8490, "ax", %progbits

.thumb_func_start OvlFunc_954_2008540
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r5, [r3]
	mov	r0, r5
	sub	sp, #0xc
	bl	__MapActor_GetActor
	str	r0, [sp, #8]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r0, =0x302
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r1, #8
	mov	r0, r5
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x30]
	ldr	r3, =0x3333
	mov	r0, #0xef
	str	r3, [r7, #0x34]
	mov	r8, r3
	bl	__PlaySound
	mov	r0, r7
	mov	r1, #2
	bl	__Actor_SetAnim
	ldr	r1, [r7, #8]
	ldr	r2, =0xffd00000
	ldr	r3, [r7, #0x10]
	add	r1, r2
	mov	r0, r7
	mov	r2, #0
	bl	__Actor_TravelTo
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__galloc_ewram
	mov	r3, #0xf0
	lsl	r3, #1
	add	r0, r3
	ldr	r0, [r0]
	mov	r1, r7
	bl	__Camera_SetTarget
	mov	r0, r5
	ldr	r1, =0x4ccc
	mov	r2, r8
	bl	__MapActor_SetSpeed
	ldr	r2, [sp, #8]
	ldr	r3, =0xffe80000
	ldr	r1, [r2, #8]
	mov	r0, r2
	add	r1, r3
	ldr	r3, [r2, #0x10]
	mov	r2, #0
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetAnim
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
	bl	__CutsceneEnd
	mov	r5, #7
	mov	r0, #0x25
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	mov	r6, #0x22
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x301
	bl	__GetFlag
	mov	r10, r0
	cmp	r0, #0
	beq	.L6ea
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8a
	mov	r1, #1
	mov	r2, #0xc8
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r5, #0x26
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x60
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__CutsceneWait
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x61
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__CutsceneWait
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x62
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__CutsceneWait
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x63
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #0x64
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xf
	bl	__CutsceneWait
	bl	__CutsceneEnd
	b	.L7f8
.L6ea:
	ldr	r0, =0x301
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x96
	mov	r1, #1
	mov	r2, #0xc8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	ldr	r2, =0xcccc
	ldr	r3, =0x6666
	str	r2, [r7, #0x30]
	mov	r9, r2
	mov	r2, #0x80
	str	r3, [r7, #0x34]
	ldr	r1, [r7, #8]
	lsl	r2, #12
	mov	r8, r3
	ldr	r3, [r7, #0x10]
	bl	__Actor_TravelTo
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
	mov	r5, #0x26
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x60
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__CutsceneWait
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x61
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__CutsceneWait
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x62
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__CutsceneWait
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x63
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__CutsceneWait
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x64
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r2, r9
	mov	r3, r8
	str	r2, [r7, #0x30]
	mov	r2, #0x80
	ldr	r1, [r7, #8]
	lsl	r2, #14
	str	r3, [r7, #0x34]
	ldr	r3, [r7, #0x10]
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r0, #0xf
	bl	__CutsceneWait
	bl	__CutsceneEnd
	mov	r3, #0x29
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L7f8:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008540
