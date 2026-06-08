	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_2008838
	push	{lr}
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L848
	b	.L9ae
.L848:
	ldr	r0, =0x1b7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L854
	b	.L9ae
.L854:
	mov	r0, #0x9b
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L862
	b	.L9ae
.L862:
	ldr	r0, =0x9b5
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r0, =0x2633
	bl	__MessageID
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L886
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__MapActor_SetPos
.L886:
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xdc
	mov	r2, #0x9d
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xde
	mov	r2, #0x9b
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093054
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x83
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r1, #0xdc
	mov	r2, #0x9d
	lsl	r2, #3
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L99a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xd
	bl	__MapActor_TravelTo
.L99a:
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
.L9ae:
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008838

.thumb_func_start OvlFunc_960_20089cc
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r7, r6
	str	r3, [r6, #0x30]
	add	r7, #0x55
	mov	r3, #0
	strb	r3, [r7]
	mov	r1, #0
	mov	r5, r0
	mov	r0, r6
	bl	__Actor_SetSpriteFlags
	mov	r1, r6
	add	r1, #0x54
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	mov	r0, #0x82
	strb	r3, [r1]
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	beq	.La20
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	b	.La80
.La20:
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x38]
	ldr	r3, [r5, #0x14]
	str	r3, [r6, #0x3c]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #0x40]
	ldr	r1, [r6, #8]
	ldr	r3, [r5, #8]
	sub	r2, r1, r3
	cmp	r2, #0
	bge	.La38
	sub	r2, r3, r1
.La38:
	ldr	r0, [r6, #0x10]
	ldr	r1, [r5, #0x10]
	sub	r3, r0, r1
	cmp	r3, #0
	blt	.La4e
	add	r3, r2, r3
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r3, r2
	blt	.La5a
	b	.La82
.La4e:
	sub	r3, r1, r0
	add	r3, r2, r3
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r3, r2
	bge	.La82
.La5a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La72
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x37
	strh	r3, [r2]
.La72:
	mov	r3, #3
	strb	r3, [r7]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x38]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #0x3c]
	ldr	r3, [r5, #0x10]
.La80:
	str	r3, [r6, #0x40]
.La82:
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	cmp	r7, #0
	bne	.Labc
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Random
	mov	r2, #0xf8
	lsl	r0, #12
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	strh	r0, [r5, #0x22]
	ldr	r3, =0x880001
	ldr	r0, [r6, #8]
	str	r3, [sp, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Labc:
	mov	r0, #1
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_960_20089cc

.thumb_func_start OvlFunc_960_2008adc
	push	{lr}
	ldr	r0, =0x9b7
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lb04
	ldr	r0, =0x20e
	bl	__SetFlag
	mov	r1, #0xf0
	mov	r2, #0xce
	mov	r0, #0xc
	lsl	r1, #15
	lsl	r2, #18
	bl	__MapActor_SetPos
	ldr	r1, =gScript_960__020097a8
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
.Lb04:
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008adc

