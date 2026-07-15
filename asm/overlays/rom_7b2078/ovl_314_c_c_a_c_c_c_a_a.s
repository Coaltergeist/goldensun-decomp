	.include "macros.inc"

.thumb_func_start OvlFunc_926_2008bf4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #8
	mov	r7, r0
	mov	r8, r6
.Lc08:
	ldr	r3, [r7, #0x50]
	lsl	r5, r6, #12
	strh	r5, [r3, #0x1e]
	mov	r0, r8
	bl	__WaitFrames
	mov	r0, r5
	bl	__cos
	lsl	r2, r0, #1
	ldr	r3, [r7, #8]
	add	r2, r0
	lsl	r2, #1
	add	r3, r2
	str	r3, [r7, #8]
	mov	r0, r5
	bl	__sin
	lsl	r2, r0, #1
	ldr	r3, [r7, #0x10]
	add	r2, r0
	lsl	r2, #1
	add	r3, r2
	str	r3, [r7, #0x10]
	mov	r3, #2
	neg	r3, r3
	sub	r6, #1
	add	r8, r3
	cmp	r6, #3
	bhi	.Lc08
	mov	r3, #0x90
	lsl	r3, #13
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	mov	r0, #0xe3
	bl	__PlaySound
	mov	r6, #0x80
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xfff40000
	lsl	r6, #12
	ldr	r4, =0x6666
	mov	r5, #0
	ldr	r1, [r7, #0xc]
	add	r0, r3
	add	r2, r6
	ldr	r3, =0xffffcccd
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x4ccc
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xffff3334
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r3, #0xa0
	ldr	r4, =0x3333
	lsl	r3, #12
	ldr	r1, [r7, #0xc]
	add	r0, r3
	add	r2, r6
	ldr	r3, =0xffff0000
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008bf4

.thumb_func_start OvlFunc_926_2008cd4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #8
	mov	r7, r0
.Lce6:
	ldr	r3, [r7, #0x50]
	mov	r0, #0xc
	lsl	r5, r6, #12
	sub	r0, r6
	strh	r5, [r3, #0x1e]
	lsl	r0, #1
	bl	__WaitFrames
	mov	r0, r5
	bl	__cos
	lsl	r2, r0, #1
	ldr	r3, [r7, #8]
	add	r2, r0
	lsl	r2, #1
	sub	r3, r2
	str	r3, [r7, #8]
	mov	r0, r5
	bl	__sin
	lsl	r2, r0, #1
	ldr	r3, [r7, #0x10]
	add	r2, r0
	lsl	r2, #1
	sub	r3, r2
	add	r6, #1
	str	r3, [r7, #0x10]
	cmp	r6, #0xc
	bls	.Lce6
	mov	r3, #0x90
	lsl	r3, #13
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	ldr	r3, =0xffff3334
	mov	r0, #0xe3
	str	r3, [r7, #0x18]
	bl	__PlaySound
	ldr	r0, [r7, #8]
	ldr	r3, =0xfff40000
	ldr	r2, [r7, #0x10]
	mov	r6, #0x80
	lsl	r6, #12
	ldr	r4, =0x3333
	add	r0, r3
	mov	r3, #0x80
	mov	r5, #0
	ldr	r1, [r7, #0xc]
	add	r2, r6
	lsl	r3, #9
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r8, r4
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x4ccc
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xcccc
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	mov	r3, #0xa0
	lsl	r3, #12
	ldr	r2, [r7, #0x10]
	add	r0, r3
	ldr	r3, =0x6666
	ldr	r1, [r7, #0xc]
	add	r2, r6
	str	r3, [sp]
	mov	r3, r8
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008cd4

.thumb_func_start OvlFunc_926_2008db4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #24
	mov	r7, r0
	mov	r6, #0
	mov	r5, #8
	mov	r8, r2
.Ldd0:
	mov	r0, r5
	bl	__WaitFrames
	ldr	r3, [r7, #0x10]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r7, #0x10]
	add	r6, #1
	mov	r3, r8
	str	r3, [r7, #0x40]
	sub	r5, #2
	cmp	r6, #3
	bls	.Ldd0
	ldr	r3, [r7, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	mov	r0, #0xe3
	bl	__PlaySound
	ldr	r3, =0xfff80000
	ldr	r2, [r7, #0x10]
	mov	r8, r3
	ldr	r6, =0xffffcccd
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	ldr	r3, =0xffff3334
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	ldr	r3, =0xcccc
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, =0xfffa0000
	mov	r3, #0xa0
	add	r0, r2
	lsl	r3, #12
	ldr	r2, [r7, #0x10]
	mov	r8, r3
	ldr	r6, =0xffff0000
	ldr	r3, =0x3333
	ldr	r1, [r7, #0xc]
	add	r2, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r10, r3
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	mov	r2, #0xc0
	lsl	r2, #11
	add	r0, r2
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	mov	r3, r10
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008db4

.thumb_func_start OvlFunc_926_2008e94
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #24
	mov	r7, r0
	mov	r6, #0
	mov	r5, #8
	mov	r8, r2
.Leb0:
	mov	r0, r5
	bl	__WaitFrames
	ldr	r3, [r7, #0x10]
	mov	r4, #0x80
	lsl	r4, #9
	add	r3, r4
	mov	r2, r8
	add	r6, #1
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x40]
	sub	r5, #2
	cmp	r6, #3
	bls	.Leb0
	ldr	r3, [r7, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	ldr	r3, [r7, #0x10]
	mov	r4, #0xc0
	lsl	r4, #13
	add	r3, r4
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r7, #0x40]
	mov	r0, #0xe3
	bl	__PlaySound
	mov	r6, #0xc0
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x3333
	lsl	r6, #12
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xffff3334
	str	r5, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r8, r4
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	mov	r4, r8
	add	r2, r6
	ldr	r3, =0xcccc
	str	r5, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, =0xfffa0000
	ldr	r3, =0xfff80000
	add	r0, r2
	ldr	r2, [r7, #0x10]
	mov	r10, r3
	mov	r6, #0x80
	ldr	r1, [r7, #0xc]
	add	r2, r10
	lsl	r6, #9
	mov	r3, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r4, #0xc0
	lsl	r4, #11
	ldr	r1, [r7, #0xc]
	add	r0, r4
	add	r2, r10
	mov	r3, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008e94

.thumb_func_start OvlFunc_926_2008f80
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r2, [r0, #6]
	ldr	r0, =0xffffe000
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.Lfb4
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #0xf
	mov	r1, #0xe0
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	b	.Lffa
.Lfb4:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lfd2
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	b	.Lffa
.Lfd2:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L1002
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #0xf
	mov	r1, #0xe0
	mov	r2, #0xac
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r0, #0xf
	lsl	r1, #8
.Lffa:
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.L1018
.L1002:
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
.L1018:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008f80

.thumb_func_start OvlFunc_926_200902c
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r1, =0xcccc
	mov	r0, #0xf
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r5, =0x183a
	mov	r0, r5
	bl	__MessageID
	cmp	r6, #0
	bne	.L10a4
	sub	r0, r5, #1
	bl	__MessageID
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	ldr	r0, =0x18ae
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xf
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
.L10a4:
	cmp	r6, #2
	bne	.L10bc
	ldr	r0, =0x18ac
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
.L10bc:
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8093040
	bl	OvlFunc_926_2008f80
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x1e
	bl	__Func_8092adc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200902c

.thumb_func_start OvlFunc_926_2009160
	push	{lr}
	mov	r0, #0xd
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x10
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0x13
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x187a
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x10
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0xf
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, =0x6666
	mov	r0, #0xf
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	bl	OvlFunc_926_2008f80
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	ldr	r0, =0x301
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009160

.section .text.after_92e0, "ax", %progbits


	.section .text.after_9334, "ax", %progbits

.thumb_func_start OvlFunc_926_20093b8
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r0, =0xffffe000
	ldrh	r2, [r5, #6]
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.L13dc
	bl	OvlFunc_926_2008e94
	b	.L1406
.L13dc:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L13ee
	bl	OvlFunc_926_2008bf4
	b	.L1406
.L13ee:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L1402
	bl	OvlFunc_926_2008db4
	b	.L1406
.L1402:
	bl	OvlFunc_926_2008cd4
.L1406:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #0x12
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xd1
	bgt	.L144c
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L143a
	ldr	r0, =0x89b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1442
.L143a:
	mov	r0, #0
	bl	OvlFunc_926_200902c
	b	.L1446
.L1442:
	bl	OvlFunc_926_2009160
.L1446:
	bl	__CutsceneEnd
	b	.L1476
.L144c:
	ldr	r0, =0x89b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L145e
	mov	r0, #2
	bl	OvlFunc_926_200902c
	b	.L1472
.L145e:
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L146e
	bl	OvlFunc_926_2009494
	b	.L1472
.L146e:
	bl	OvlFunc_926_2009dbc
.L1472:
	bl	__CutsceneEnd
.L1476:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_20093b8

.thumb_func_start OvlFunc_926_2009494
	push	{r5, lr}
	ldr	r0, =0x89a
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x10
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x183b
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8093054
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x10
	mov	r1, #0xb0
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x9a
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r2, #0xd
	ldr	r0, =.L477a
	mov	r1, #0x4e
	bl	__Func_8010560
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x10
	bl	__MapActor_SetSpeed
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x9a
	mov	r2, #0x88
	strb	r3, [r0]
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x10
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0x10
	mov	r2, #0x32
	bl	__Func_8093040
	mov	r1, #0x98
	mov	r2, #0xd8
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x98
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x11
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x98
	mov	r2, #0xd8
	mov	r0, #0x12
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x98
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_809218c
	mov	r1, #0x8c
	mov	r2, #0x84
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x11
	bl	__Func_809218c
	mov	r0, #0x12
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_8092adc
	mov	r0, #0x11
	bl	__MapActor_WaitMovement
	mov	r0, #0x9f
	bl	__PlaySound
	ldr	r0, =.L4790
	mov	r1, #0x4e
	mov	r2, #0xd
	bl	__Func_8010560
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	b	.L18ac

	.pool_aligned

.L18ac:
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0x11
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x11
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x8c
	mov	r0, #0x11
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__MapActor_SetPos
	mov	r0, #0x11
	bl	__DeleteFieldActor
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0x10
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xb8
	mov	r0, #0x12
	mov	r1, #0xf0
	bl	__Func_80921c4
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #0xf8
	mov	r2, #0xd0
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1c4a
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	b	.L1cb4
.L1c4a:
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	strh	r2, [r3]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1ce0
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x12
.L1cb4:
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, =0x898
	bl	__SetFlag
	b	.L1d12

	.pool_aligned

.L1ce0:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, =0x899
	bl	__SetFlag
.L1d12:
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
	ldr	r1, =gScript_926__0200c638
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009494
