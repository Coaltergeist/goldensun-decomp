	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeRiver_MapInit
	push	{r5, lr}
	ldr	r2, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	sp, #8
	cmp	r3, #0x10
	bne	.Lm883_2a7e
	ldr	r1, =0x205
	add	r3, r2, r1
	add	r1, #1
	ldrb	r0, [r3]
	add	r3, r2, r1
	ldrb	r1, [r3]
	bl	__SetUIColor
	bl	OvlFunc_883_200b4c8
	b	.Lm883_2c6e
.Lm883_2a7e:
	mov	r0, #0xfd
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_2aa2
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_2a9c
	mov	r0, #0x1a
	bl	OvlFunc_883_200db48
	b	.Lm883_2aa2
.Lm883_2a9c:
	mov	r0, #0x14
	bl	OvlFunc_883_200db48
.Lm883_2aa2:
	mov	r3, #2
	str	r3, [sp]
	mov	r5, #1
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x66
	mov	r2, #0x53
	mov	r3, #0x29
	mov	r0, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	ldr	r0, =0x87a
	bl	__GetFlag
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	add	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r5, r0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_2af2
	mov	r3, #0xb5
	b	.Lm883_2b02
.Lm883_2af2:
	ldr	r0, =0x316
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_2b00
	mov	r3, #0xc5
	b	.Lm883_2b02
.Lm883_2b00:
	mov	r3, #0xbd
.Lm883_2b02:
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0x92
	lsl	r3, #18
	str	r3, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	bl	OvlFunc_883_200d950
	mov	r1, r5
	add	r1, #0x22
	mov	r3, #3
	strb	r3, [r1]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	mov	r1, #0xc8
	strb	r2, [r3]
	ldr	r0, =OvlFunc_883_200da94
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_2c24
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_2b5e
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =0x28f
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
.Lm883_2b5e:
	ldr	r0, =0x808
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_2b86
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm883_2b86:
	ldr	r0, =0x815
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.Lm883_2bfc
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_2bc8
	ldr	r0, =0x823
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_2bd8
	mov	r1, #0x80
	mov	r2, #0xe4
	lsl	r1, #17
	mov	r0, #0x16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_883_200d72c
	ldr	r1, =gScript_883__0200e248
	str	r3, [r0, #0x6c]
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	b	.Lm883_2bd8
.Lm883_2bc8:
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5b
	strb	r5, [r0]
	ldr	r0, =0x241
	bl	__ClearFlag
.Lm883_2bd8:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x10
	beq	.Lm883_2bfc
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_2bfc
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_883_200da40
	lsl	r1, #4
	bl	__StartTask
.Lm883_2bfc:
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_2c24
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x11
	bne	.Lm883_2c24
	bl	OvlFunc_883_200bfb0
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__SetFlag
.Lm883_2c24:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_2c5e
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_2c4e
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x35
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
.Lm883_2c4e:
	mov	r0, #0x84
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_2c5e
	bl	OvlFunc_883_2008d70
.Lm883_2c5e:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.Lm883_2c6e:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ValeRiver_MapInit

