	.include "macros.inc"

.thumb_func_start OvlFunc_966_2008054
	push	{lr}
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L64
	ldr	r0, =.L1a98
	b	.L66
.L64:
	ldr	r0, =.L1900
.L66:
	pop	{r1}
	bx	r1
.func_end OvlFunc_966_2008054

.thumb_func_start OvlFunc_966_2008078
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, r6
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	ldr	r0, =0x26af
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =ActorCmd_ARRAY_966__02009638
	mov	r0, r6
	bl	__MapActor_SetBehavior
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2008078

.thumb_func_start OvlFunc_966_20080c4
	push	{r5, r6, lr}
	ldr	r5, =0x28be
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lf2
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__Func_8092b94
	b	.Lf8
.Lf2:
	add	r0, r5, #2
	bl	__Func_8092b94
.Lf8:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_20080c4

.thumb_func_start OvlFunc_966_200810c
	push	{lr}
	ldr	r0, =0x9bb
	bl	__SetFlag
	ldr	r0, =0x28b8
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x10
	mov	r0, #0x12
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_200810c

.thumb_func_start OvlFunc_966_2008158
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	ldr	r2, =.L1ca8
	lsl	r3, r7, #2
	ldrsh	r5, [r2, r3]
	mov	r0, #0
	add	r3, #2
	ldrsh	r6, [r2, r3]
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x9e
	bl	__PlaySound
	cmp	r7, #6
	bne	.L1a4
	lsl	r1, r5, #16
	lsl	r2, r6, #16
	lsr	r1, #16
	lsr	r2, #16
	ldr	r0, =.L1cee
	bl	__Func_8010560
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_80922c4
	b	.L1be
.L1a4:
	lsl	r1, r5, #16
	lsl	r2, r6, #16
	lsr	r1, #16
	lsr	r2, #16
	ldr	r0, =.L1cd8
	bl	__Func_8010560
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
.L1be:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r7
	bl	__Func_8091e9c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2008158

.thumb_func_start OvlFunc_966_20081f0
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb6
	ldr	r2, [r3]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_20081f0

.thumb_func_start OvlFunc_966_2008218
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x2694
	bl	__Func_8092b94
	mov	r1, #0xf8
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r1, #8
	neg	r2, r2
	mov	r0, #0x16
	bl	__Func_809233c
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #8
	mov	r2, #0x28
	bl	__Func_809280c
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0x28
	bl	__Func_809280c
	mov	r2, #0x28
	mov	r1, #8
	mov	r0, #0x16
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #0x16
	mov	r1, #8
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #9
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #9
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r0, #0x16
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x16
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0xc0
	mov	r0, #0x16
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.L62c

	.pool_aligned

.L62c:
	mov	r0, #0x16
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #0x16
	mov	r1, #8
	mov	r2, #0x28
	bl	__Func_809280c
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0x28
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r1, #9
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0x46
	bl	__Func_809280c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x16
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L79a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__Func_8092128
.L79a:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2008218

.thumb_func_start OvlFunc_966_20087c4
	push	{r5, r6, lr}
	ldr	r0, =0x9ba
	sub	sp, #8
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r0, =0x288e
	bl	__Func_8092b94
	mov	r2, #0xbc
	mov	r0, #0
	mov	r1, #0x68
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x20
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	mov	r3, #0
	bl	__Func_809233c
	mov	r1, #0x10
	mov	r3, #0xe0
	mov	r0, #3
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #2
	bl	__Func_809233c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L88c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L8b8

	.pool_aligned

.L88c:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
.L8b8:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r0, #0
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0x10
	mov	r0, #2
	mov	r1, #0
	neg	r2, r2
	bl	__Func_80922c4
	mov	r2, #8
	mov	r0, #3
	mov	r1, #0
	neg	r2, r2
	bl	__Func_80922c4
	mov	r2, #0x10
	neg	r2, r2
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092304
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
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
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r2, =0x6666
	ldr	r1, =0xcccc
	mov	r0, #0x16
	bl	__Func_8092064
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_8092b08
	mov	r5, #4
	mov	r3, #2
	mov	r1, #0
	mov	r2, #1
	mov	r6, #0x12
	mov	r0, #0x22
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0x9c
	lsl	r1, #15
	lsl	r2, #17
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_8092304
	mov	r3, #2
	mov	r2, #1
	mov	r1, #0
	mov	r0, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
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
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lc1c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lc48

	.pool_aligned

.Lc1c:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
.Lc48:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x83
	mov	r2, #0x32
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0xa6
	lsl	r2, #17
	mov	r0, #0x19
	lsl	r1, #15
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_8092560
	mov	r2, #0x1e
	mov	r0, #3
	mov	r1, #4
	bl	__Func_8092560
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x9bf
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lcfe
	bl	OvlFunc_966_2009090
.Lcfe:
	ldr	r0, =0x28a5
	bl	__Func_8092b94
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x19
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0xf2
	bl	__Func_8091a58
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0x10
	strb	r3, [r0]
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0x16
	bl	__Func_8092304
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x82
	strb	r3, [r0]
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r0, #0x16
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r5, #4
	mov	r3, #2
	mov	r1, #0
	mov	r2, #1
	mov	r6, #0x12
	mov	r0, #0x22
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r0, #0x16
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, #2
	mov	r1, #0
	mov	r2, #1
	mov	r0, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L100c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
	b	.L100c

	.pool_aligned

.L100c:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L103c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L103c:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L106c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L106c:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_20087c4

.thumb_func_start OvlFunc_966_2009090
	push	{lr}
	ldr	r0, =0x28b0
	bl	__Func_8092b94
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
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
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x37
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x41
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2009090

.thumb_func_start OvlFunc_966_20091bc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x28b7
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_20091bc

.thumb_func_start OvlFunc_966_20091e8
	push	{lr}
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L11f8
	ldr	r0, =.L1ee4
	b	.L11fa
.L11f8:
	ldr	r0, =.L1d04
.L11fa:
	pop	{r1}
	bx	r1
.func_end OvlFunc_966_20091e8

.thumb_func_start OvlFunc_966_200920c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r0, r3
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	sub	sp, #8
	mov	r9, r0
	ldrh	r2, [r0]
	cmp	r3, #0x5a
	bne	.L123c
	ldr	r0, =0x9a7
	bl	__SetFlag
	ldr	r0, =0x9bf
	bl	__SetFlag
	mov	r3, r9
	ldrh	r2, [r3]
.L123c:
	mov	r0, #0xb6
	lsl	r3, r2, #16
	lsl	r0, #15
	cmp	r3, r0
	bne	.L124c
	ldr	r0, =0x9a7
	bl	__SetFlag
.L124c:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r0, #0xe4
	add	r2, r1, r3
	lsl	r0, #1
	sub	r3, #0xc0
	str	r3, [r2]
	add	r2, r1, r0
	mov	r3, #0x18
	str	r3, [r2]
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r7, #0
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #1
	mov	r3, r0
	mov	r10, r1
	add	r3, #0x5c
	mov	r2, r10
	strb	r2, [r3]
	sub	r3, #7
	strb	r7, [r3]
	mov	r3, #0xa0
	ldr	r6, [r0, #0x50]
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r3, r6
	add	r3, #0x27
	strb	r7, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	mov	r8, r3
	mov	r1, #0xc1
	and	r3, r2
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xf2
	bl	__LoadItemIcon
	mov	r1, #0x80
	lsl	r1, #3
	add	r5, r1
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	ldr	r0, =0x9a7
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.L13b8
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r3, #0xe
	add	r0, #0x59
	strb	r7, [r0]
	mov	r5, #4
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x10
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x9bb
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1392
	b	.L14c0
.L1392:
	mov	r1, #0xe0
	mov	r2, #0xb8
	mov	r0, #0x12
	lsl	r1, #14
	lsl	r2, #16
	bl	__MapActor_SetPos
	b	.L14c0

	.pool_aligned

.L13b8:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x59
	strb	r6, [r3]
	mov	r2, r0
	add	r2, #0x23
	ldrb	r3, [r2]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r2]
	ldr	r3, [r0, #0x50]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xc0
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r6, =0
	mov	r3, r0
	add	r3, #0x59
	strb	r6, [r3]
	mov	r2, r0
	add	r2, #0x23
	ldrb	r3, [r2]
	orr	r3, r5
	strb	r3, [r2]
	ldr	r3, [r0, #0x50]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0x17
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	b	.L1428

	.pool_aligned

.L1428:
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x4e
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x11
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x12
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r3, #1
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, r9
	ldrh	r3, [r0]
	mov	r1, #0x80
	sub	r3, #0x14
	lsl	r3, #16
	lsl	r1, #9
	cmp	r3, r1
	bhi	.L14c0
	ldr	r0, =0x9b8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L14c0
	ldr	r0, =0x9b8
	bl	__SetFlag
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	mov	r2, r10
	add	r3, #0x5b
	strb	r2, [r3]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x5b
	mov	r0, r10
	strb	r0, [r3]
	bl	OvlFunc_966_2008218
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x5b
	strb	r6, [r3]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x5b
	strb	r6, [r3]
.L14c0:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_966_200920c

	.section .data
	.global gOvl_0200975c

	.global ActorCmd_ARRAY_966__02009638
ActorCmd_ARRAY_966__02009638:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1638, (0x175c-0x1638)
gOvl_0200975c:
	.incbin "overlays/rom_7f148c/orig.bin", 0x175c, (0x18c4-0x175c)
	.global gOvl_020098c4
gOvl_020098c4:
	.incbin "overlays/rom_7f148c/orig.bin", 0x18c4, (0x1900-0x18c4)
.L1900:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1900, (0x1a98-0x1900)
.L1a98:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1a98, (0x1ca8-0x1a98)
.L1ca8:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1ca8, (0x1cd8-0x1ca8)
.L1cd8:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1cd8, (0x1cee-0x1cd8)
.L1cee:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1cee, (0x1d04-0x1cee)
.L1d04:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1d04, (0x1ee4-0x1d04)
.L1ee4:
	.incbin "overlays/rom_7f148c/orig.bin", 0x1ee4
