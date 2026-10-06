	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start KolimaForest5_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xe
	mov	r1, #0xf
	bl	__Func_8092950
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r2, #0x81
	add	r3, r0
	lsl	r2, #2
	str	r2, [r3]
	ldr	r2, =gState
	add	r0, #0x80
	ldr	r1, =0x28
	add	r3, r2, r0
	strh	r1, [r3]
	ldr	r3, =0x242
	add	r2, r3
	mov	r3, #4
	strh	r3, [r2]
	ldr	r0, =0x845
	ldr	r6, .Lm917_10d4	@ 0
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm917_10ec
	mov	r0, #3
	bl	OvlFunc_917_2009768
	b	.Lm917_10ec

	.align	2, 0
.Lm917_10d4:
	.word	0
	.pool

.Lm917_10ec:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #6
	strh	r5, [r0, #0x20]
	mov	r0, #9
	bl	__MapActor_GetActor
	strh	r5, [r0, #0x20]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	strh	r5, [r0, #0x20]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	strh	r5, [r0, #0x20]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092b08
	mov	r3, r8
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r7
	mov	r3, #0xe0
	lsl	r3, #13
	mov	r0, r8
	add	r2, #0x55
	str	r3, [r0, #0xc]
	strb	r6, [r2]
	mov	r2, r10
	add	r2, #0x55
	str	r3, [r7, #0xc]
	strb	r6, [r2]
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #8
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end KolimaForest5_MapInit

