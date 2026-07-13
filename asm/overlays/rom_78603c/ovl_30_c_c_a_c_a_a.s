	.include "macros.inc"

.thumb_func_start OvlFunc_885_20080dc
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lfc
	ldr	r0, =0x11c4
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	b	.L15a
.Lfc:
	ldr	r5, =0xf76
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L138
	add	r0, r5, #1
	bl	__MessageID
	b	.L13e
.L138:
	add	r0, r5, #2
	bl	__MessageID
.L13e:
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
.L15a:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_885_20080dc

.thumb_func_start OvlFunc_885_2008170
	push	{r5, r6, lr}
	ldr	r0, =0x801
	bl	__GetFlag
	cmp	r0, #0
	beq	.L17e
	b	.L944
.L17e:
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	lsl	r1, #9
	mov	r0, #0
	bl	__MapActor_SetSpeed
	ldr	r0, =0xfa6
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x84
	lsl	r2, #1
	mov	r0, #0
	mov	r1, #0xe8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #0xd
	bl	__Func_8092848
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	lsl	r5, #16
	lsl	r6, #16
	mov	r0, #5
	mov	r1, r5
	mov	r2, r6
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, r5
	mov	r2, r6
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, #0x84
	mov	r0, #5
	mov	r1, #0xf8
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x84
	lsl	r2, #1
	mov	r0, #1
	mov	r1, #0xd8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #8
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L414
	ldr	r0, =_MSG_fb0
	bl	__MessageID
	b	.L41a

	.pool_aligned

.L414:
	ldr	r0, =0xfb1
	bl	__MessageID
.L41a:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093040
	ldr	r0, =0xfb2
	bl	__MessageID
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0xa
	bl	__Func_8092848
	mov	r0, #0
	mov	r1, #5
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0xd
	mov	r1, #1
	mov	r2, #0xa
	bl	__Func_809280c
	mov	r2, #0xa
	mov	r0, #0xd
	mov	r1, #5
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x10
	mov	r0, #5
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #6
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #5
	mov	r1, #2
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #5
	mov	r2, #0x28
	bl	__Func_8092848
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x50
	mov	r0, #5
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L696
	ldr	r0, =0xfbd
	bl	__MessageID
	b	.L69c
.L696:
	ldr	r0, =0xfbe
	bl	__MessageID
.L69c:
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0xd
	bl	__Func_8093040
	ldr	r5, =0xfbf
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L6dc
	add	r0, r5, #1
	bl	__MessageID
	b	.L6e2
.L6dc:
	add	r0, r5, #2
	bl	__MessageID
.L6e2:
	mov	r1, #0
	mov	r2, #6
	mov	r0, #1
	bl	__Func_8093040
	ldr	r0, =0xfc2
	bl	__MessageID
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #5
	bl	__Func_8092c40
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L758
	mov	r0, #5
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	b	.L78e

	.pool_aligned

.L758:
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L78e:
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092c40
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L820
	ldr	r0, =0xfc6
	bl	__MessageID
	b	.L826
.L820:
	ldr	r0, =0xfc9
	bl	__MessageID
.L826:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #6
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #4
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L20ac
	mov	r1, #0x2b
	mov	r2, #8
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0xd
	mov	r1, #0xe8
	mov	r2, #0xda
	bl	__Func_80921c4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xd
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.L944:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_885_2008170

.thumb_func_start OvlFunc_885_2008964
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xd8
	mov	r2, #0x84
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xf8
	mov	r2, #0x84
	lsl	r1, #16
	lsl	r2, #17
	mov	r0, #5
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #8
	strh	r5, [r0, #6]
	mov	r0, #5
	bl	__MapActor_GetActor
	mov	r1, #0x2b
	strh	r5, [r0, #6]
	mov	r2, #8
	ldr	r0, =.L20ac
	bl	__Func_8010560
	ldr	r6, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xe6
	mov	r2, #0xdc
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r2, #0xe8
	mov	r1, #0xe6
	mov	r0, #0xd
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	ldr	r0, =0xfcc
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lac8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lac8:
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lae8
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.Lae8:
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb08
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xd
	bl	__MapActor_TravelTo
.Lb08:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__MapActor_SetPos
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #0xd
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xf
	bl	__MapActor_SetPos
	ldr	r0, =0x801
	bl	__SetFlag
	ldr	r3, [r6]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x80
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091220
	ldr	r0, =0x242
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_885_2008964

