	.include "macros.inc"

	.section .text.after_adcc, "ax", %progbits

.section .text.after_ae08, "ax", %progbits

.thumb_func_start OvlFunc_924_200ae6c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	bl	__Func_8092950
	mov	r0, #0xdd
	bl	__PlaySound
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r2, #0x18]
	ldr	r3, =.L5e70
	str	r3, [r2, #0x1c]
	mov	r3, #0
	mov	r10, r2
	mov	r8, r3
.L2eb6:
	mov	r2, r8
	cmp	r2, #0x1f
	bhi	.L2ec6
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	bl	OvlFunc_924_200bbd4
.L2ec6:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L2f2a
	mov	r0, #0xf6
	bl	__PlaySound
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	ldr	r6, [r7, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	ldr	r3, =0xfff40000
	add	r6, r3
	bl	__Random
	lsl	r0, #5
	ldr	r5, [r7, #0xc]
	lsr	r0, #16
	ldr	r2, =0xfff00000
	lsl	r0, #16
	add	r5, r0
	add	r5, r2
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	mov	r3, #0x80
	lsl	r3, #8
	lsl	r0, #15
	add	r0, r3
	mov	r3, #0
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0xcc
	lsl	r3, #14
	str	r3, [sp, #8]
	mov	r3, r10
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	bl	OvlFunc_common0_10c
.L2f2a:
	ldr	r3, =0x1999
	mov	r2, r8
	mul	r2, r3
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	mov	r0, #2
	bl	__WaitFrames
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x2f
	bls	.L2eb6
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200ae6c

.thumb_func_start OvlFunc_924_200af68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	bl	__CutsceneStart
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_924_200ae08
	ldr	r0, =OvlFunc_924_200adcc
	bl	__StopTask
	mov	r3, #9
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x49
	mov	r2, #0x2d
	mov	r0, #0x2d
	mov	r1, #0x4d
	bl	__CopyMapTiles
	mov	r0, #0x1e
	bl	__CutsceneWait
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r2, #0x18]
	ldr	r3, =.L5e70
	str	r3, [r2, #0x1c]
	mov	r3, #0
	mov	r10, r2
	mov	r8, r3
.L2fc0:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L2fd0
	mov	r0, #0xf6
	bl	__PlaySound
.L2fd0:
	bl	__Random
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r3, #0xc0
	lsl	r3, #18
	lsl	r5, #16
	add	r5, r3
	bl	__Random
	lsl	r2, r0, #3
	sub	r2, r0
	lsl	r2, #3
	lsr	r2, #16
	mov	r3, #0x88
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r3, =0x330001
	str	r3, [sp, #8]
	mov	r3, r10
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r3, #0
	mov	r1, #0
	bl	OvlFunc_common0_10c
	mov	r0, #2
	bl	__CutsceneWait
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xf
	bls	.L2fc0
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r8, r2
.L302a:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L303a
	mov	r0, #0xf6
	bl	__PlaySound
.L303a:
	bl	__Random
	lsl	r6, r0, #1
	add	r6, r0
	lsl	r6, #4
	lsr	r6, #16
	mov	r3, #0xc0
	lsl	r3, #18
	lsl	r6, #16
	add	r6, r3
	bl	__Random
	lsl	r5, r0, #3
	sub	r5, r0
	lsl	r5, #3
	lsr	r5, #16
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r5, #16
	add	r5, r2
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r3, r2, #4
	add	r2, r3
	lsl	r3, r2, #8
	add	r2, r3
	ldr	r3, =0xffffcccd
	neg	r2, r2
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, =0x330001
	str	r2, [sp, #4]
	mov	r2, r10
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r3, #0
	mov	r2, r5
	mov	r0, r6
	mov	r1, #0
	bl	OvlFunc_common0_10c
	mov	r0, #2
	bl	__CutsceneWait
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0xf
	bls	.L302a
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, r10
	mov	r3, #7
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	ldr	r3, =0x13333
	str	r3, [r2, #0x10]
	str	r3, [r2, #0x14]
	ldr	r2, =0x1999
	mov	r3, #0
	mov	r8, r3
	mov	r11, r2
.L30e6:
	mov	r2, r8
	mov	r3, #0xc
	sub	r3, r2
	mov	r1, #1
	mov	r2, #3
	str	r2, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x3b
	mov	r1, r3
	mov	r2, #0x30
	bl	__CopyMapTiles
	mov	r3, r8
	lsl	r3, #4
	mov	r7, #0
	mov	r9, r3
.L3106:
	bl	__Random
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r2, #0xc0
	lsl	r2, #18
	lsl	r5, #16
	add	r5, r2
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	mov	r6, r11
	mul	r6, r0
	ldr	r3, =0xffff999c
	add	r6, r3
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	mov	r1, r11
	mul	r1, r0
	lsr	r2, r7, #1
	mov	r3, r9
	neg	r2, r2
	sub	r2, r3
	mov	r3, #0xc0
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, =0xd0001
	str	r3, [sp, #8]
	mov	r3, r10
	str	r1, [sp, #4]
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, #0
	mov	r3, r6
	bl	OvlFunc_common0_10c
	add	r7, #1
	mov	r0, #2
	bl	__CutsceneWait
	cmp	r7, #0x1f
	bls	.L3106
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #3
	bls	.L30e6
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	bl	__Func_809202c
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3290
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xce
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xe8
	bl	__Func_80921c4
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xe8
	bl	__Func_80921c4
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xd0
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc6
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x12
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	OvlFunc_924_200ae6c
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_924_200adcc
	bl	__StopTask
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #9
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	b	.L3592

	.pool_aligned

.L3290:
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xce
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xf0
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xce
	mov	r2, #0xf0
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r0, #3
	lsl	r1, #2
	mov	r2, #0xe8
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc6
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #3
	bl	__Func_80921c4
	mov	r0, #3
	bl	OvlFunc_924_200ae6c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xe8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc6
	mov	r2, #0xe8
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xe8
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xcc
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xe0
	bl	__Func_809218c
	mov	r1, #0xc0
	lsl	r1, #2
	mov	r2, #0xe0
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xe0
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xd0
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc6
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x12
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0
	bl	OvlFunc_924_200ae6c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc6
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc6
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	bl	OvlFunc_924_200ae6c
	mov	r1, #0xc6
	mov	r0, #2
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r1, #0xc6
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	bl	OvlFunc_924_200ae6c
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091220
	ldr	r0, =OvlFunc_924_200adcc
	bl	__StopTask
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__CutsceneEnd
	mov	r0, #8
	bl	__Func_8091e9c
.L3592:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200af68

	.section .data

.L5e70:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e70, (0x5f20-0x5e70)
