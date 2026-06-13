	.include "macros.inc"

.thumb_func_start OvlFunc_942_20086c8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x8a8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L6fc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1f1c
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.L7c2
.L6fc:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1f18
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8a6
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7a8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L772
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8a8
	bl	__SetFlag
	b	.L7be
.L772:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	b	.L7be
.L7a8:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
.L7be:
	bl	__CutsceneEnd
.L7c2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_20086c8

.thumb_func_start OvlFunc_942_20087dc
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.L82a
	mov	r1, #0x98
	mov	r2, #0xae
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_809218c
	ldr	r0, =gScript_930__020096b8
	mov	r1, #0x4e
	mov	r2, #0x56
	bl	__Func_8010560
	b	.L844
.L82a:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.L844
	mov	r0, #0
	mov	r1, #0xf8
	mov	r2, #0xc0
	bl	__Func_809218c
	ldr	r0, =.L16ce
	mov	r1, #0x4a
	mov	r2, #9
	bl	__Func_8010560
.L844:
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_20087dc

.thumb_func_start OvlFunc_942_200886c
	push	{r5, lr}
	ldr	r5, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x5a
	bne	.L886
	mov	r0, #0x95
	lsl	r0, #4
	bl	__SetFlag
.L886:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.L89c
	bl	OvlFunc_942_20088cc
	b	.L8b2
.L89c:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.L8a8
	bl	OvlFunc_942_2008958
	b	.L8b2
.L8a8:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.L8b2
	bl	OvlFunc_942_2008ad4
.L8b2:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_942_200886c

.thumb_func_start OvlFunc_942_20088cc
	push	{r5, lr}
	ldr	r5, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L8f2
	ldr	r0, =0x8ac
	bl	__GetFlag
	cmp	r0, #0
	bne	.L8f2
	ldr	r0, =0x8ac
	bl	__SetFlag
	bl	OvlFunc_942_2008ba0
.L8f2:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L910
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L910
	ldr	r0, =0x8a9
	bl	__ClearFlag
.L910:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L93c
	ldr	r0, =0x8a9
	bl	__GetFlag
	cmp	r0, #0
	bne	.L93c
	mov	r1, #0xb0
	mov	r2, #0xa3
	mov	r0, #0xc
	lsl	r1, #15
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.L93c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_20088cc

.thumb_func_start OvlFunc_942_2008958
	push	{r5, r6, lr}
	sub	sp, #8
	bl	OvlFunc_942_2008af8
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L974
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_8092950
.L974:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #3
	bne	.L98e
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldrh	r2, [r5]
.L98e:
	lsl	r3, r2, #16
	mov	r2, #0x80
	lsl	r2, #9
	cmp	r3, r2
	bne	.L99e
	ldr	r0, =0x8aa
	bl	__ClearFlag
.L99e:
	ldr	r0, =0x8aa
	bl	__GetFlag
	cmp	r0, #0
	beq	.L9c2
	mov	r1, #0xcc
	mov	r2, #0x94
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L9c2:
	ldr	r0, =0x8ab
	bl	__GetFlag
	cmp	r0, #0
	beq	.La98
	mov	r1, #0x8c
	mov	r2, #0x94
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r2, #0x8c
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xe0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe8
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf0
	mov	r2, #0x9c
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, r0
	mov	r1, #0
	add	r3, #0x59
	mov	r2, r0
	strb	r1, [r3]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r5, #0xc
	orr	r3, r5
	strb	r3, [r2, #9]
	ldr	r3, [r0, #0x50]
	add	r3, #0x26
	strb	r1, [r3]
	mov	r3, #0xc0
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r6, .La84	@ 0
	mov	r3, r0
	add	r3, #0x23
	strb	r6, [r3]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r5
	strb	r3, [r2, #9]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x15]
	orr	r3, r5
	strb	r3, [r2, #0x15]
	b	.La98

	.align	2, 0
.La84:
	.word	0
	.pool

.La98:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Laca
	mov	r3, #0xe
	mov	r5, #0x12
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
.Laca:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008958

