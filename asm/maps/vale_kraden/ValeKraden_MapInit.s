	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeKraden_MapInit
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r3, r2
	ldrh	r3, [r5]
	mov	r2, #0x80
	sub	r3, #5
	lsl	r3, #16
	lsl	r2, #9
	sub	sp, #8
	cmp	r3, r2
	bhi	.Lm885_1530
	ldr	r0, =0x12f
	bl	__ClearFlag
.Lm885_1530:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_1540
	ldr	r0, =0x242
	bl	__ClearFlag
.Lm885_1540:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm885_154c
	b	.Lm885_1656
.Lm885_154c:
	bl	__StartRain
	bl	__StartThunder
	bl	__CutsceneStart
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	mov	r1, #0xa6
	strb	r3, [r0]
	lsl	r1, #15
	mov	r0, #0xb
	ldr	r2, =0x1090000
	bl	__MapActor_SetPos
	ldr	r2, =0x111
	mov	r0, #0xb
	mov	r1, #0x53
	bl	__MapActor_TravelToAnimWait
	mov	r1, #5
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #0xc
	strh	r3, [r0, #0x20]
	ldr	r1, =gOvl_02009c34
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	ldr	r0, =0x839
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_15de
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm885_15de:
	bl	__CutsceneEnd
	mov	r3, #0xe
	str	r3, [sp]
	mov	r5, #0x15
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x17
	str	r3, [sp]
	mov	r5, #0x13
	mov	r8, r3
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r6, #0x18
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010704
	mov	r2, r8
	mov	r5, #0x14
	str	r2, [sp]
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.Lm885_171e
.Lm885_1656:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneStart
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm885_1698
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xa
	bne	.Lm885_1698
	bl	OvlFunc_885_2008964
.Lm885_1698:
	ldr	r0, =0x801
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_16c2
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm885_1702
.Lm885_16c2:
	ldr	r0, =0x808
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_1702
	mov	r1, #0xc4
	mov	r2, #0xbc
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xbc
	mov	r2, #0xbc
	mov	r0, #0xf
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	ldr	r5, =gScript_885__02009ce0
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
.Lm885_1702:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_171a
	mov	r1, #0x84
	mov	r2, #0x84
	mov	r0, #0x10
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
.Lm885_171a:
	bl	__CutsceneEnd
.Lm885_171e:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end ValeKraden_MapInit

