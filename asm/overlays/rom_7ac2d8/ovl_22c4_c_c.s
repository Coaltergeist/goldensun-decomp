	.include "macros.inc"

.thumb_func_start OvlFunc_924_200a51c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r5, #0xcc
	mov	r6, #0
	lsl	r5, #2
.L252a:
	mov	r0, r6
	add	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L253c
	ldr	r2, =0xfffff
	add	r3, r2
.L253c:
	asr	r1, r3, #20
	lsl	r3, r6, #2
	mov	r2, r3
	add	r2, #0x27
	cmp	r1, r2
	bne	.L2556
	mov	r0, r5
	bl	__SetFlag
	add	r0, r5, #1
	bl	__ClearFlag
	b	.L2576
.L2556:
	add	r3, #0x29
	cmp	r1, r3
	bne	.L256a
	add	r0, r5, #1
	bl	__SetFlag
	mov	r0, r5
	bl	__ClearFlag
	b	.L2576
.L256a:
	mov	r0, r5
	bl	__ClearFlag
	add	r0, r5, #1
	bl	__ClearFlag
.L2576:
	add	r6, #1
	add	r5, #2
	cmp	r6, #3
	ble	.L252a
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L258e
	ldr	r2, =0xfffff
	add	r3, r2
.L258e:
	asr	r1, r3, #20
	cmp	r1, #0x39
	bne	.L25a0
	mov	r0, #0xce
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x339
	b	.L25ae
.L25a0:
	cmp	r1, #0x3b
	bne	.L25c8
	ldr	r0, =0x339
	bl	__SetFlag
	mov	r0, #0xce
	lsl	r0, #2
.L25ae:
	bl	__ClearFlag
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L25ea
.L25c8:
	mov	r0, #0xce
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x339
	bl	__ClearFlag
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L25ea:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a51c

.thumb_func_start OvlFunc_924_200a600
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L2618
	ldr	r2, =0xfffff
	add	r3, r2
.L2618:
	asr	r3, #20
	cmp	r3, #0x1c
	bne	.L263a
	mov	r0, #0xd2
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0x1f
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L263a:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a600

.thumb_func_start OvlFunc_924_200a648
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2670
	ldr	r1, =0x5000050
	ldr	r3, =0x500005e
	ldrh	r2, [r1]
	strh	r2, [r3]
	ldr	r2, =0x5000052
	mov	r0, #0
.L2662:
	ldrh	r3, [r2]
	add	r0, #1
	strh	r3, [r1]
	add	r2, #2
	add	r1, #2
	cmp	r0, #6
	bls	.L2662
.L2670:
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a648

.thumb_func_start OvlFunc_924_200a684
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0
	bl	__MapActor_SetSpeed
	ldr	r0, =0x1577
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd2
	mov	r2, #0xa2
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x10
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L275a
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2782
.L275a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.L2782:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0xd2
	mov	r2, #0x9e
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #3
	bl	__Func_80921c4
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_8093040
	mov	r0, #0x87
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a684

.thumb_func_start OvlFunc_924_200a814
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x157d
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a814

.thumb_func_start OvlFunc_924_200a844
	push	{r5, r6, lr}
	ldr	r6, =0x1f
.L2848:
	ldr	r0, =0x5000050
	mov	r5, #0
	mov	r4, #0
	b	.L2858

	.pool_aligned

.L2858:
	ldrh	r3, [r0]
	mov	r1, #0x1f
	and	r1, r3
	ldrh	r3, [r0]
	lsr	r2, r3, #5
	ldrh	r3, [r0]
	lsr	r3, #10
	and	r2, r6
	and	r3, r6
	cmp	r1, #0x1f
	bne	.L287a
	cmp	r2, #0x1f
	bne	.L287a
	cmp	r3, #0x1f
	bne	.L287a
	add	r5, #1
	b	.L2896
.L287a:
	cmp	r1, #0x1e
	bgt	.L2880
	add	r1, #1
.L2880:
	cmp	r2, #0x1e
	bgt	.L2886
	add	r2, #1
.L2886:
	cmp	r3, #0x1e
	bgt	.L288c
	add	r3, #1
.L288c:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r0]
.L2896:
	add	r4, #1
	add	r0, #2
	cmp	r4, #7
	bls	.L2858
	mov	r0, #2
	bl	__WaitFrames
	cmp	r5, #7
	bls	.L2848
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a844

.thumb_func_start OvlFunc_924_200a8b0
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.L28c4
	ldr	r3, =0xfffff
	add	r5, r3
.L28c4:
	asr	r5, #20
	bl	__CutsceneStart
	cmp	r5, #0x33
	beq	.L28d0
	b	.L2da4
.L28d0:
	ldr	r2, =0x6666
	ldr	r1, =0xcccc
	mov	r0, #3
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, =0x157f
	bl	__MessageID
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L294a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	b	.L2972
.L294a:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L2972:
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xda
	mov	r2, #0x96
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xda
	mov	r2, #0x96
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xde
	mov	r2, #0x9e
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xdc
	mov	r2, #0x9a
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd2
	mov	r2, #0xa4
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2b64
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2b8c

	.pool_aligned

.L2b64:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.L2b8c:
	mov	r1, #0x10
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd2
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	OvlFunc_924_200cf44
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0x83
	bl	__PlaySound
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x207e9f
	bl	__Func_8091200
	mov	r0, #0xa
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r0, #0xd1
	bl	__PlaySound
	bl	OvlFunc_924_200a844
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x23
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	bl	__CopyMapTiles
	mov	r2, #0x23
	mov	r1, #0x74
	ldr	r0, =.L60b8
	bl	__Func_8010560
	ldr	r0, =OvlFunc_924_200a648
	bl	__StopTask
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xd2
	mov	r2, #0x96
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x74
	mov	r1, #0x24
	mov	r2, #3
	mov	r3, #4
	bl	__Func_8010704
	mov	r0, #0xd2
	mov	r1, #0xe0
	mov	r2, #0x98
	mov	r3, #0xdf
	lsl	r1, #14
	lsl	r2, #18
	lsl	r0, #18
	bl	OvlFunc_common0_18
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xd2
	mov	r2, #0x8c
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2d5e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L2d5e:
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2d7e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L2d7e:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x871
	bl	__SetFlag
.L2da4:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a8b0

	.section .data

.L60b8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x60b8, (0x60ec-0x60b8)
