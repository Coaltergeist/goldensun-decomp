	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008754
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r2, r3
	mov	r10, r2
	sub	sp, #0x10
	bl	__CutsceneStart
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm935_782
	mov	r3, r10
	str	r2, [r3, #0x18]
	str	r2, [r3, #0x1c]
	b	.Lm935_78c
.Lm935_782:
	mov	r3, #1
	neg	r3, r3
	mov	r2, r10
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
.Lm935_78c:
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, #0xa3
	bl	__PlaySound
	ldr	r3, =0x1df
	mov	r8, r3
.Lm935_7b4:
	bl	__Random
	mov	r2, r10
	mov	r5, r0
	ldr	r0, [r2, #0x24]
	bl	OvlFunc_common2_304
	lsl	r5, #11
	lsr	r5, #16
	str	r0, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r0, r5
	bl	OvlFunc_common2_304
	mov	r7, r1
	mov	r6, r0
	cmp	r5, #0
	bge	.Lm935_7e4
	ldr	r2, =0x41f00000
	ldr	r3, =0
	bl	OvlFunc_common2_254
	mov	r7, r1
	mov	r6, r0
.Lm935_7e4:
	mov	r3, r7
	mov	r2, r6
	ldr	r0, =0x40b26e97
	ldr	r1, =0x8d4fdf3b
	bl	OvlFunc_common2_28c
	mov	r3, r1
	mov	r2, r0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0xc]
	bl	OvlFunc_common2_28c
	bl	OvlFunc_common2_380
	mov	r3, r10
	str	r0, [r3, #0x24]
	mov	r0, #1
	bl	__CutsceneWait
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bge	.Lm935_7b4
	mov	r5, #6
	mov	r2, #0
	mov	r6, #6
	mov	r8, r2
	lsl	r7, r5, #10
.Lm935_820:
	lsl	r1, r5, #5
	orr	r1, r7
	orr	r1, r6
	ldr	r0, =REG_BLDALPHA
	bl	__SetRegAnimDest
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #0x14
	bl	_modsi3_RAM
	cmp	r0, #0
	bne	.Lm935_842
	sub	r6, #1
	sub	r5, #1
.Lm935_842:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0x45
	ble	.Lm935_820
	mov	r3, #0x13
	mov	r2, #0x5b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x53
	mov	r2, #0xf
	mov	r3, #8
	mov	r0, #0x13
	bl	__Func_80105d4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	bl	__Func_800fe9c
	bl	__Func_8012350
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008754

.thumb_func_start OvlFunc_935_20088a8
	push	{r5, r6, lr}
	ldr	r0, =0x9a8
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_932
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	ldr	r0, =0x9a8
	bl	__SetFlag
	mov	r0, #0x9b
	bl	__PlaySound
	mov	r5, #0x1b
	mov	r6, #0x5c
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x6b
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x27
	bl	__CutsceneWait
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x6c
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0x9c
	bl	__PlaySound
	mov	r6, #0x19
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	mov	r0, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_935_2008754
.Lm935_932:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20088a8

.thumb_func_start OvlFunc_935_2008944
	push	{r5, r6, r7, lr}
	bl	__MapActor_GetActor
	mov	r5, #0
	mov	r6, r0
.Lm935_94e:
	mov	r0, r5
	add	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	ldr	r2, =0xffffe
	sub	r3, #1
	cmp	r3, r2
	bhi	.Lm935_9a8
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lm935_96a
	ldr	r7, =0xfffff
	add	r3, r7
.Lm935_96a:
	asr	r4, r3, #20
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm935_976
	ldr	r2, =0xfffff
	add	r3, r2
.Lm935_976:
	asr	r1, r3, #20
	ldr	r3, [r6, #0x10]
	cmp	r3, #0
	bge	.Lm935_982
	ldr	r7, =0xfffff
	add	r3, r7
.Lm935_982:
	asr	r2, r3, #20
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bge	.Lm935_98e
	ldr	r7, =0xfffff
	add	r3, r7
.Lm935_98e:
	asr	r3, #20
	sub	r2, r4
	cmp	r3, r1
	bne	.Lm935_9a8
	cmp	r2, #0
	bne	.Lm935_9a8
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r0, #0xc]
	str	r2, [r0, #0x48]
	str	r2, [r0, #0x28]
	mov	r0, #1
	b	.Lm935_9b0
.Lm935_9a8:
	add	r5, #1
	cmp	r5, #3
	ble	.Lm935_94e
	mov	r0, #0
.Lm935_9b0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_935_2008944

.thumb_func_start OvlFunc_935_20089c0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5b
	ldrb	r6, [r0]
	cmp	r6, #0
	bne	.Lm935_a82
	ldr	r1, =.Lm935_2224
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0xbe
	ble	.Lm935_9de
	str	r6, [r1]
.Lm935_9de:
	ldr	r7, =.Lm935_2228
	ldr	r0, [r7]
	ldr	r2, =.Lm935_2214
	lsl	r3, r0, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r1]
	cmp	r2, r3
	bne	.Lm935_a06
	add	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, =0xa3d
	mov	r5, r0
	str	r3, [r5, #0x48]
	ldr	r3, [r7]
	add	r3, #1
	str	r3, [r7]
	cmp	r3, #3
	ble	.Lm935_a06
	str	r6, [r7]
.Lm935_a06:
	mov	r6, #0
	mov	r7, #0
.Lm935_a0a:
	mov	r0, r6
	add	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	blt	.Lm935_a3c
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff
	cmp	r3, r2
	bgt	.Lm935_a3c
	bl	OvlFunc_935_2008b8c
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, r5
	add	r3, #0x5b
	str	r7, [r5, #0x48]
	str	r7, [r5, #0x28]
	mov	r0, #0x6a
	strb	r7, [r3]
	bl	__PlaySound
.Lm935_a3c:
	add	r6, #1
	cmp	r6, #3
	ble	.Lm935_a0a
	mov	r0, #0xa
	bl	OvlFunc_935_2008944
	cmp	r0, #0
	beq	.Lm935_a72
	mov	r0, #0xa
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_a6c
	ldr	r0, =0x207
	bl	__SetFlag
	mov	r0, #0xcc
	bl	__PlaySound
	b	.Lm935_a72
.Lm935_a6c:
	mov	r0, #0x6a
	bl	__PlaySound
.Lm935_a72:
	mov	r0, #9
	bl	OvlFunc_935_2008944
	cmp	r0, #0
	beq	.Lm935_a82
	mov	r0, #0x6a
	bl	__PlaySound
.Lm935_a82:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20089c0

.thumb_func_start OvlFunc_935_2008aa0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x5b
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lm935_b3a
	ldr	r3, =.Lm935_222c
	ldr	r2, [r3]
	add	r2, #1
	str	r2, [r3]
	mov	r3, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.Lm935_ade
	ldr	r5, =.Lm935_2230
	bl	__Random
	mov	r1, #6
	bl	_umodsi3_RAM
	str	r0, [r5]
	add	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, =0xa3d
	mov	r5, r0
	str	r3, [r5, #0x48]
.Lm935_ade:
	mov	r7, #0xff
	mov	r6, #0
	lsl	r7, #16
.Lm935_ae4:
	mov	r0, r6
	add	r0, #0xa
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #2
	mov	r5, r0
	add	r0, r6, r2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_b1a
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	bgt	.Lm935_b0a
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x20ffff
	cmp	r3, r2
	bgt	.Lm935_b34
.Lm935_b0a:
	mov	r3, #0
	str	r7, [r5, #0xc]
	str	r3, [r5, #0x48]
	str	r3, [r5, #0x28]
	mov	r0, #0x6a
	bl	__PlaySound
	b	.Lm935_b34
.Lm935_b1a:
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	bgt	.Lm935_b28
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff
	cmp	r3, r2
	bgt	.Lm935_b34
.Lm935_b28:
	str	r0, [r5, #0x48]
	str	r0, [r5, #0x28]
	str	r7, [r5, #0xc]
	mov	r0, #0x6a
	bl	__PlaySound
.Lm935_b34:
	add	r6, #1
	cmp	r6, #5
	ble	.Lm935_ae4
.Lm935_b3a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008aa0

