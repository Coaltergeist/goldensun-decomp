	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_20080b0
	push	{r5, lr}
	ldr	r5, =.Lm970_181c
	mov	r1, #6
	ldrh	r0, [r5]
	bl	_udivsi3_RAM
	ldr	r2, =.Lm970_14ac
	lsl	r0, #16
	lsr	r0, #15
	add	r0, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50000e8
	ldr	r2, =0x80000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r5]
	mov	r2, #0x8c
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bls	.Lm970_e2
	ldr	r3, .Lm970_e8	@ 0
	strh	r3, [r5]
.Lm970_e2:
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lm970_e8:
	.word	0
.func_end OvlFunc_970_20080b0

.thumb_func_start OvlFunc_970_2008100
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x64
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldrh	r3, [r2]
	cmp	r1, #0
	beq	.Lm970_132
	sub	r3, #1
	strh	r3, [r2]
	bl	__Random
	mov	r5, r0
	bl	__Random
	ldr	r3, [r6, #8]
	sub	r5, r0
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, =0xcccc
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	b	.Lm970_158
.Lm970_132:
	mov	r2, r6
	add	r2, #0x66
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	cmp	r3, #0
	beq	.Lm970_158
	strh	r1, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #0x14
	strh	r3, [r2]
	ldr	r1, =gScript_970__020094c4
	mov	r0, r6
	bl	__Actor_SetScript
.Lm970_158:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008100

.thumb_func_start OvlFunc_970_2008168
	push	{lr}
	ldr	r2, =.Lm970_17f4
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x28
	bne	.Lm970_186
	ldr	r1, =.Lm970_17f0
	ldr	r3, [r1]
	cmp	r3, #4
	ble	.Lm970_186
	sub	r3, #1
	str	r3, [r1]
	mov	r3, #0
	str	r3, [r2]
.Lm970_186:
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008168

.thumb_func_start OvlFunc_970_2008194
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r9, r3
	ldr	r3, =gOvl_020097e8
	ldr	r3, [r3]
	sub	sp, #0x14
	cmp	r3, #0
	beq	.Lm970_1e0
	ldr	r5, =.Lm970_17ec
	ldr	r0, [r5]
	lsl	r0, #9
	bl	__sin
	ldr	r3, =Func_8000888
	mov	r1, #3
	.call_via r3
	ldr	r3, =.Lm970_17f0
	add	r0, #8
	ldr	r3, [r3]
	mov	r2, sp
	lsl	r0, #8
	add	r2, #0x12
	add	r3, r0
	strh	r3, [r2]
	ldrh	r2, [r2]
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
.Lm970_1e0:
	ldr	r3, =.Lm970_17fc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm970_2bc
	ldr	r2, =.Lm970_1800
	ldr	r0, [r2]
	lsl	r0, #9
	mov	r11, r2
	bl	__sin
	ldr	r3, =Func_8000888
	mov	r1, #2
	.call_via r3
	ldr	r3, =.Lm970_1804
	mov	r2, #0xa0
	ldr	r3, [r3]
	lsl	r6, r0, #16
	lsl	r2, #1
	add	r2, r9
	add	r3, r6
	str	r3, [r2]
	ldr	r3, =.Lm970_1808
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r2, r9
	add	r3, r6
	str	r3, [r2]
	ldr	r3, =.Lm970_180c
	ldr	r2, =0xffff0000
	mov	r8, r3
	ldr	r3, [r3]
	mov	r10, r2
	cmp	r3, r10
	beq	.Lm970_242
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r8
	ldr	r3, [r2]
	mov	r5, r0
	add	r3, r6
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.Lm970_242:
	ldr	r7, =.Lm970_1810
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.Lm970_268
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.Lm970_268:
	ldr	r7, =gOvl_02009814
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.Lm970_28e
	mov	r0, #3
	bl	__MapActor_GetActor
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.Lm970_28e:
	ldr	r7, =.Lm970_1818
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.Lm970_2b4
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.Lm970_2b4:
	mov	r2, r11
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
.Lm970_2bc:
	ldr	r3, =.Lm970_17f8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm970_3ac
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r7, #1
	and	r3, r7
	cmp	r3, #0
	beq	.Lm970_3ac
	mov	r3, r9
	add	r3, #0xe4
	ldr	r6, [r3]
	add	r3, #4
	ldr	r2, =0xffff0000
	ldr	r5, [r3]
	and	r6, r2
	and	r5, r2
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #4
	add	r2, sp, #4
	add	r6, r3
	mov	r3, #0
	str	r3, [r2, #4]
	str	r6, [r2]
	str	r2, [sp]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #5
	add	r5, r3
	mov	r3, #0xf0
	ldr	r2, [sp]
	lsl	r3, #13
	add	r5, r3
	str	r5, [r2, #8]
	ldr	r1, [r2]
	mov	r3, r5
	ldr	r2, [r2, #4]
	ldr	r0, =0x1f7
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm970_3ac
	ldr	r3, =OvlFunc_970_2008100
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x64
	mov	r3, #0x3c
	strh	r3, [r2]
	mov	r3, r5
	ldr	r1, .Lm970_35c	@ 0
	add	r3, #0x66
	strh	r7, [r3]
	sub	r3, #0x11
	strb	r1, [r3]
	sub	r2, #0x41
	mov	r3, #2
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xf
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetAnim
	b	.Lm970_3ac

	.align	2, 0
.Lm970_35c:
	.word	0
	.pool

.Lm970_3ac:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008194

.thumb_func_start OvlFunc_970_20083c0
	push	{r5, lr}
	mov	r0, #0
	ldr	r5, =.Lm970_180c
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_970_20083c0

.thumb_func_start OvlFunc_970_20083dc
	push	{r5, lr}
	mov	r0, #1
	ldr	r5, =.Lm970_1810
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_970_20083dc

.thumb_func_start OvlFunc_970_20083f8
	push	{r5, lr}
	mov	r0, #3
	ldr	r5, =gOvl_02009814
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_970_20083f8

.thumb_func_start OvlFunc_970_2008414
	push	{r5, lr}
	mov	r0, #2
	ldr	r5, =.Lm970_1818
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_970_2008414

.thumb_func_start OvlFunc_970_2008430
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_80933f8
	mov	r3, #0x12
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x12
	bl	__Func_8010704
	ldr	r0, =0x28fe
	bl	__MessageID
	mov	r1, #0xa
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x18
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r2, #0x10
	mov	r1, #0xa
	mov	r0, #2
	bl	__Func_809233c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x32
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
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
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
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x3c
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
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x1e
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
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm970_59c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
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
	b	.Lm970_5c6
.Lm970_59c:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm970_5c6:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x32
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x32
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm970_6e8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
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
	b	.Lm970_726
.Lm970_6e8:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
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
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.Lm970_726:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x32
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm970_814
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
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
	b	.Lm970_840

	.pool_aligned

.Lm970_814:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
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
.Lm970_840:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0x11
	bl	__PlaySound
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
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	ldr	r2, =0x9999
	mov	r0, #3
	ldr	r1, =0x13333
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_970__02009820
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_80933f8
	ldr	r1, =gScript_970__020098e0
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0x32
	bl	__CutsceneWait
	ldr	r1, =gScript_970__0200998c
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r0, #2
	bl	__MapActor_WaitScript
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
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x20
	mov	r1, #0
	neg	r2, r2
	mov	r0, #3
	bl	__Func_8092304
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_970__02009a4c
	mov	r0, #3
	bl	__MapActor_SetBehavior
	mov	r0, #3
	bl	__MapActor_WaitScript
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x43
	bl	__PlaySound
	mov	r0, #0xf0
	bl	__SetMusicTempo
	bl	OvlFunc_970_20092ac
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r6, =iwram_3001e70
	mov	r0, #8
	ldr	r5, [r6]
	bl	__MapActor_GetActor
	mov	r3, #0x83
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x30]
	mov	r3, #0x8e
	lsl	r3, #1
	add	r5, r3
	ldr	r3, =0xffffd000
	mov	r0, #8
	str	r3, [r5]
	mov	r1, #0x3c
	mov	r2, #0
	bl	__Func_8092304
	ldr	r3, =0xffffa000
	mov	r2, #0
	str	r3, [r5]
	mov	r1, #0x3c
	mov	r0, #8
	bl	__Func_8092304
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x64
	bl	__CutsceneWait
	ldr	r0, =0x23333
	ldr	r1, =0x28f
	bl	__Func_80933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0xa8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_80933f8
	mov	r0, #0x96
	lsl	r0, #1
	bl	__CutsceneWait
	ldr	r1, [r6, #0x4c]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	mov	r2, #0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x60
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =0
	mov	r1, #9
	bl	__SetDestMap
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008430

.thumb_func_start OvlFunc_970_2008b34
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #8
	mov	r10, r3
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r1, #0x9c
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x8c
	bl	__PlaySound
	mov	r6, #0xa0
	mov	r5, #0
	lsl	r6, #19
.Lm970_b76:
	lsl	r3, r5, #11
	lsl	r2, r5, #5
	orr	r3, r2
	strh	r3, [r6]
	mov	r0, #0xa
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0xf
	ble	.Lm970_b76
	mov	r2, #0xfc
	mov	r3, #0xa0
	lsl	r2, #7
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r2, =0x1010
	mov	r7, #0x81
	ldr	r6, =REG_BLDALPHA
	mov	r8, r2
	lsl	r7, #4
	mov	r5, #2
.Lm970_ba0:
	mov	r0, #0xd4
	bl	__PlaySound
	mov	r3, r8
	strh	r3, [r6]
	mov	r0, #3
	bl	__CutsceneWait
	strh	r7, [r6]
	mov	r0, #0x41
	sub	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0
	bge	.Lm970_ba0
	ldr	r3, =gOvl_020097e8
	mov	r5, #1
	str	r5, [r3]
	ldr	r3, =.Lm970_17ec
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_970_2008194
	mov	r8, r2
	bl	__StartTask
	ldr	r6, =.Lm970_17f8
	mov	r0, #0x14
	str	r5, [r6]
	bl	__CutsceneWait
	mov	r0, #0xa3
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r5, [r6]
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	ldr	r3, =.Lm970_17f4
	mov	r2, r8
	mov	r1, #0xc8
	mov	r6, #0xa0
	mov	r5, #0xb8
	str	r2, [r3]
	ldr	r0, =OvlFunc_970_2008168
	lsl	r1, #4
	lsl	r6, #1
	lsl	r5, #1
	ldr	r7, =0x3333
	bl	__StartTask
	add	r6, r10
	mov	r2, #0
	add	r5, r10
.Lm970_c44:
	ldr	r3, [r6]
	add	r3, r7
	str	r3, [r6]
	ldr	r3, [r5]
	add	r3, r7
	add	r2, r7
	str	r3, [r5]
	mov	r0, #1
	str	r2, [sp]
	bl	__WaitFrames
	ldr	r3, =0x59ffff
	ldr	r2, [sp]
	cmp	r2, r3
	ble	.Lm970_c44
	ldr	r0, =OvlFunc_970_2008168
	bl	__StopTask
	ldr	r0, =REG_BG3CNT
	ldr	r3, =.Lm970_17f8
	ldr	r2, =0xfffc
	ldrh	r1, [r0]
	mov	r6, #0
	ldr	r4, .Lm970_cac	@ 3
	str	r6, [r3]
	mov	r3, r2
	mov	r5, sp
	and	r3, r1
	orr	r3, r4
	add	r5, #6
	strh	r3, [r5]
	strh	r3, [r0]
	sub	r0, #2
	ldrh	r1, [r0]
	mov	r3, r2
	and	r3, r1
	orr	r3, r4
	strh	r3, [r5]
	ldr	r1, =REG_BG1CNT
	strh	r3, [r0]
	ldrh	r3, [r1]
	and	r2, r3
	ldr	r3, .Lm970_cb0	@ 2
	orr	r2, r3
	ldr	r3, =gOvl_020097e8
	mov	r0, #0x90
	strh	r2, [r5]
	str	r6, [r3]
	strh	r2, [r1]
	lsl	r0, #1
	b	.Lm970_cec

	.align	2, 0
.Lm970_cac:
	.word	3
.Lm970_cb0:
	.word	2
	.pool

.Lm970_cec:
	bl	__PlaySound
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x91
	bl	__PlaySound
	mov	r2, #0xbf
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r5, #0
	ldr	r6, =REG_BLDY
.Lm970_d06:
	strh	r5, [r6]
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0x10
	ble	.Lm970_d06
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	ldr	r2, =.Lm970_1804
	str	r3, [r2]
	mov	r3, #0xb8
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	ldr	r2, =.Lm970_1808
	str	r3, [r2]
	ldr	r2, =.Lm970_17fc
	mov	r3, #1
	str	r3, [r2]
	ldr	r6, =REG_BLDY
	mov	r5, #0x10
.Lm970_d4a:
	strh	r5, [r6]
	mov	r0, #8
	sub	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0
	bge	.Lm970_d4a
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_970_20080b0
	bl	__StartTask
	mov	r0, #0x50
	bl	__PlaySound
	bl	__Func_80b04c4
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
	bl	OvlFunc_970_2008430
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008b34

.thumb_func_start LaliveroShip_MapInit
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldr	r5, =iwram_3001e70
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #4
	ldr	r7, [r5]
	cmp	r3, #0x63
	bne	.Lm970_dc4
	mov	r0, #0
	mov	r1, #0xf2
	bl	__GiveItemTo
.Lm970_dc4:
	ldr	r3, [r5, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x59
	strb	r6, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r6, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	sub	r5, #0xf
	ldrb	r2, [r1, #9]
	mov	r3, r5
	mov	r6, #4
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #3
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x15]
	and	r5, r3
	orr	r5, r6
	strb	r5, [r2, #0x15]
	ldr	r0, =REG_BG3CNT
	ldr	r1, =0xfffc
	ldrh	r2, [r0]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .Lm970_edc	@ 2
	mov	r5, sp
	add	r5, #2
	orr	r3, r2
	strh	r3, [r5]
	strh	r3, [r0]
	sub	r0, #2
	ldrh	r2, [r0]
	ldr	r4, .Lm970_ee0	@ 3
	mov	r3, r1
	and	r3, r2
	orr	r3, r4
	strh	r3, [r5]
	ldr	r2, =REG_BG1CNT
	strh	r3, [r0]
	ldrh	r3, [r2]
	and	r1, r3
	orr	r1, r4
	strh	r1, [r5]
	strh	r1, [r2]
	ldr	r2, =0x2648
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r2, #0x81
	lsl	r2, #4
	add	r3, #2
	strh	r2, [r3]
	b	.Lm970_f00

	.align	2, 0
.Lm970_edc:
	.word	2
.Lm970_ee0:
	.word	3
	.pool

.Lm970_f00:
	mov	r3, #0x9a
	lsl	r3, #1
	add	r1, r7, r3
	ldr	r3, [r1, #0xc]
	ldr	r2, =0xffa60000
	add	r3, r2
	str	r3, [r1, #0xc]
	mov	r3, #0xb2
	lsl	r3, #1
	add	r1, r7, r3
	ldr	r3, [r1, #0xc]
	add	r3, r2
	str	r3, [r1, #0xc]
	bl	__Func_800fe9c
	bl	OvlFunc_970_200807c
	mov	r0, #0
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end LaliveroShip_MapInit

.thumb_func_start OvlFunc_970_2008f30
	ldr	r3, =iwram_3001ed8
	mov	r2, #0xf0
	ldr	r0, [r3]
	lsl	r2, #4
	add	r3, r0, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #7
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r1, =REG_BG3HOFS
	ldrh	r2, [r3, #0xa]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldr	r2, =0xa6600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_970_2008f30

.thumb_func_start OvlFunc_970_2008f80
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ed8
	ldr	r0, =iwram_3001ad0
	ldr	r6, [r3]
	mov	r2, #0xe
	ldrsh	r1, [r0, r2]
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r6, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	mov	r2, #0xf1
	lsl	r3, #7
	lsl	r2, #4
	add	r5, r6, r3
	add	r3, r6, r2
	ldr	r3, [r3]
	sub	r2, #0xe
	lsl	r1, #16
	sub	sp, #4
	mov	r10, r3
	add	r3, r6, r2
	ldrh	r2, [r3]
	str	r1, [sp]
	lsr	r3, r1, #16
	ldr	r1, =0xf08
	add	r2, r3
	add	r3, r6, r1
	ldr	r3, [r3]
	mov	r4, r3
	mul	r4, r2
	ldr	r2, =0xf18
	add	r3, r6, r2
	ldr	r3, [r3]
	ldrh	r0, [r0, #0xc]
	mov	r14, r3
	ldr	r3, =Func_8000888
	mov	r9, r0
	mov	r0, #0xff
	mov	r7, #0
	mov	r8, r3
	mov	r11, r0
.Lm970_fe6:
	mov	r1, r11
	asr	r3, r4, #16
	and	r3, r1
	ldr	r2, =.Lm970_14c8
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r14
	.call_via	r8
	cmp	r0, #0
	bge	.Lm970_ffe
	add	r0, #0xff
.Lm970_ffe:
	lsl	r3, r0, #8
	lsr	r3, #16
	add	r3, r9
	add	r7, #1
	strh	r3, [r5]
	add	r4, r10
	add	r5, #4
	cmp	r7, #0xa0
	bne	.Lm970_fe6
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r6, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	ldr	r0, =0xf14
	lsl	r3, #7
	add	r3, r6, r3
	add	r5, r3, #2
	add	r3, r6, r0
	ldr	r3, [r3]
	ldr	r1, =0xf02
	mov	r10, r3
	add	r3, r6, r1
	ldrh	r2, [r3]
	ldr	r3, [sp]
	sub	r0, #8
	lsr	r1, r3, #16
	add	r3, r6, r0
	ldr	r3, [r3]
	add	r2, r1
	mov	r4, r3
	mul	r4, r2
	ldr	r2, =0xf1c
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r14, r3
	ldr	r3, =Func_8000888
	mov	r0, #0xff
	mov	r7, #0
	mov	r8, r3
	mov	r9, r1
	mov	r11, r0
.Lm970_1058:
	mov	r1, r11
	asr	r3, r4, #16
	and	r3, r1
	ldr	r2, =.Lm970_14c8
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r14
	.call_via r8
	cmp	r0, #0
	bge	.Lm970_1072
	add	r0, #0xff
.Lm970_1072:
	lsl	r3, r0, #8
	lsr	r3, #16
	add	r3, r9
	add	r7, #1
	strh	r3, [r5]
	add	r4, r10
	add	r5, #4
	cmp	r7, #0xa0
	bne	.Lm970_1058
	ldr	r3, =0xf02
	add	r2, r6, r3
	ldrh	r3, [r2]
	mov	r0, #0xf0
	add	r3, #1
	strh	r3, [r2]
	lsl	r0, #4
	add	r1, r6, r0
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008f80

.thumb_func_start OvlFunc_970_20090d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r1, #0xf2
	mov	r5, r0
	lsl	r1, #4
	mov	r0, #0x22
	sub	sp, #4
	mov	r8, r2
	mov	r7, r3
	bl	__galloc_ewram
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850003c8
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	mov	r1, r3
	lsl	r2, #24
.Lm970_1106:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm970_1106
	ldr	r2, =0xf01
	add	r3, r4, r2
	add	r2, #7
	strb	r5, [r3]
	add	r3, r4, r2
	str	r6, [r3]
	ldr	r3, =0xf0c
	add	r2, r4, r3
	ldr	r3, [sp, #0x18]
	str	r3, [r2]
	ldr	r2, =0xf18
	add	r3, r4, r2
	str	r7, [r3]
	ldr	r3, =0xf1c
	add	r2, r4, r3
	ldr	r3, [sp, #0x20]
	str	r3, [r2]
	mov	r2, #0xf1
	lsl	r2, #4
	add	r3, r4, r2
	mov	r2, r8
	str	r2, [r3]
	ldr	r3, =0xf14
	add	r2, r4, r3
	ldr	r3, [sp, #0x1c]
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_970_2008f80
	bl	__StartTask
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =OvlFunc_970_2008f30
	bl	__StartTask
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_20090d4

