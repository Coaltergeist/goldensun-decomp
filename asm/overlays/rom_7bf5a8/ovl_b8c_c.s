	.include "macros.inc"

	.section .text.after_8c50
.thumb_func_start OvlFunc_935_2008ca0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r6, =gState
	ldr	r3, =0x60
	ldrsh	r2, [r6, r2]
	sub	sp, #8
	cmp	r2, r3
	bne	.Ld56
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xa
	beq	.Ld50
	cmp	r3, #0xa
	bgt	.Lcd8
	cmp	r3, #8
	bgt	.Ld56
	cmp	r3, #5
	blt	.Ld56
	b	.Lcdc
.Lcd8:
	cmp	r3, #0xd
	bne	.Ld56
.Lcdc:
	ldr	r0, =0x9a8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lcfc
	mov	r3, #0x15
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Ld42
.Lcfc:
	mov	r3, #0x5c
	str	r3, [sp]
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0x1b
	mov	r0, #0x6c
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x13
	mov	r2, #0x5b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x53
	mov	r2, #0xf
	mov	r3, #8
	mov	r0, #0x13
	bl	__Func_80105d4
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x19
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
.Ld42:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r6, =gState
	b	.Ld56
.Ld50:
	ldr	r0, =0x9a8
	bl	__ClearFlag
.Ld56:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x61
	cmp	r2, r3
	beq	.Ld68
	b	.Lf3e
.Ld68:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ld80
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r0, #0x1c]
.Ld80:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r2, r3, #1
	cmp	r2, #0xd
	bls	.Ld92
	b	.Lf08
.Ld92:
	lsl	r3, r2, #2
	ldr	r2, =.Ld9c
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ld9c:
	.word	.Ldd4
	.word	.Ldd4
	.word	.Ldd4
	.word	.Ldd4
	.word	.Lf08
	.word	.Lf08
	.word	.Lf08
	.word	.Le1c
	.word	.Le1c
	.word	.Lee0
	.word	.Lee0
	.word	.Lf08
	.word	.Lf08
	.word	.Le1c
.Ldd4:
	ldr	r0, =0x9a8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ldf4
	mov	r3, #5
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #5
	mov	r1, #0x51
	mov	r2, #0xb
	mov	r3, #7
	bl	__Func_80105d4
	b	.Lf08
.Ldf4:
	mov	r3, #6
	mov	r5, #0xc
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.Lf08
.Le1c:
	bl	OvlFunc_935_2008c08
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le38
	mov	r0, #0x10
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_200850c
.Le38:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le4e
	mov	r0, #0x11
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_2008554
.Le4e:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le64
	mov	r0, #0x12
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_20085a0
.Le64:
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le7a
	mov	r0, #0x13
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_20085ec
.Le7a:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le92
	mov	r0, #0x14
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_2008640
.Le92:
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lea8
	mov	r0, #0x15
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	OvlFunc_935_2008690
.Lea8:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_935_20086e4
	lsl	r1, #4
	bl	__StartTask
	b	.Lf08

	.pool_aligned

.Lee0:
	ldr	r0, =0x9a9
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lefc
	bl	OvlFunc_935_2008398
	mov	r1, #0xf8
	mov	r2, #0xdb
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lefc:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
.Lf08:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x59
	strb	r3, [r0]
	ldr	r6, =gState
.Lf3e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.L1026
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lf68
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
.Lf68:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x80
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r2, #0xe1
	lsl	r2, #1
	orr	r5, r3
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	strb	r5, [r0]
	cmp	r3, #6
	bgt	.L1026
	cmp	r3, #5
	blt	.L1026
	bl	OvlFunc_935_2008c50
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	ldr	r0, =0x9aa
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1026
	bl	OvlFunc_935_2008410
	mov	r1, #0x84
	mov	r2, #0xcc
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
.L1026:
	ldr	r3, =0x242
	mov	r1, #0x90
	add	r2, r6, r3
	mov	r3, #0xa
	strh	r3, [r2]
	lsl	r1, #2
	ldr	r2, =0x60
	add	r3, r6, r1
	mov	r0, #0
	strh	r2, [r3]
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_935_2008ca0

	.section .data

	.global gScript_935__02009884
gScript_935__02009884:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1884, (0x1888-0x1884)
