	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GomaCaveEntry_MapInit
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	sub	sp, #8
	bl	__SetFlag
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xaa
	bl	__Func_8091ff0
	mov	r1, #2
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x865
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm903_55e
	mov	r3, #0x49
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm903_55e:
	mov	r0, #0x86
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm903_5b6
	mov	r1, #0x88
	mov	r2, #0xc4
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r3, #8
	mov	r5, #0xc
	str	r3, [sp]
	mov	r0, #0x27
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.Lm903_5b6:
	ldr	r0, =0x861
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm903_5e4
	mov	r1, #0x84
	mov	r2, #0x9c
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	b	.Lm903_610
.Lm903_5e4:
	ldr	r0, =0x862
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm903_610
	mov	r1, #0x8c
	mov	r2, #0x9c
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
.Lm903_610:
	ldr	r0, =0x863
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm903_660
	mov	r1, #0xbc
	mov	r2, #0x8c
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x17
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x36
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm903_660:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end GomaCaveEntry_MapInit

