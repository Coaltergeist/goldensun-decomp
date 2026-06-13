	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b08b8  @ 0x080b08b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	cmp	r7, #0
	beq	.Lb094a
	mov	r1, #0xd
	ldrsb	r1, [r7, r1]
	mov	r10, r1
	cmp	r1, #0
	beq	.Lb094a
	ldr	r2, [r7]
	ldrb	r6, [r7, #0xc]
	mov	r8, r2
	add	r6, #1
	mov	r1, #4
	ldrsh	r2, [r7, r1]
	mov	r1, #8
	ldrsh	r3, [r7, r1]
	strb	r6, [r7, #0xc]
	lsl	r6, #24
	sub	r3, r2
	asr	r6, #24
	mov	r0, r6
	mul	r0, r3
	mov	r1, r10
	bl	__divsi3
	ldrh	r5, [r7, #4]
	mov	r3, r8
	add	r5, r0
	strh	r5, [r3, #6]
	ldr	r2, =0
	ldr	r3, =0x1ff
	mov	r1, r8
	and	r5, r3
	mov	r9, r2
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #0x16]
	and	r3, r2
	orr	r3, r5
	mov	r2, r8
	strh	r3, [r2, #0x16]
	mov	r1, #6
	ldrsh	r2, [r7, r1]
	mov	r1, #0xa
	ldrsh	r3, [r7, r1]
	sub	r3, r2
	mov	r0, r6
	mul	r0, r3
	mov	r1, r10
	bl	__divsi3
	ldrh	r5, [r7, #6]
	mov	r2, r8
	add	r5, r0
	strh	r5, [r2, #8]
	strb	r5, [r2, #0x14]
	b	.Lb0940

	.pool_aligned

.Lb0940:
	cmp	r6, r10
	bne	.Lb094a
	mov	r3, r9
	strb	r3, [r7, #0xd]
	strb	r3, [r7, #0xc]
.Lb094a:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b08b8

.thumb_func_start Func_80b0958  @ 0x080b0958
	push	{r5, lr}
	mov	r5, r0
	ldr	r4, [r5]
	cmp	r4, #0
	beq	.Lb09ea
	mov	r1, #8
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r4, #6]
	sub	r0, r2, r3
	mov	r3, r0
	cmp	r0, #0
	bge	.Lb0972
	add	r3, r0, #3
.Lb0972:
	asr	r3, #2
	cmp	r3, #0
	bge	.Lb097a
	neg	r3, r3
.Lb097a:
	cmp	r0, #0
	ble	.Lb098c
	cmp	r3, #0
	beq	.Lb0986
	sub	r3, r2, r3
	b	.Lb099a
.Lb0986:
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.Lb099a
.Lb098c:
	cmp	r0, #0
	bge	.Lb09ac
	cmp	r3, #0
	beq	.Lb0998
	add	r3, r2, r3
	b	.Lb099a
.Lb0998:
	add	r3, r2, #1
.Lb099a:
	strh	r3, [r4, #6]
	ldrh	r3, [r4, #6]
	ldr	r2, =0x1ff
	ldrh	r1, [r4, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r4, #0x16]
.Lb09ac:
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r4, #8]
	sub	r0, r2, r3
	mov	r3, r0
	cmp	r0, #0
	bge	.Lb09bc
	add	r3, r0, #3
.Lb09bc:
	asr	r3, #2
	cmp	r3, #0
	bge	.Lb09c4
	neg	r3, r3
.Lb09c4:
	cmp	r0, #0
	ble	.Lb09d6
	cmp	r3, #0
	beq	.Lb09d0
	sub	r3, r2, r3
	b	.Lb09e4
.Lb09d0:
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.Lb09e4
.Lb09d6:
	cmp	r0, #0
	bge	.Lb09ea
	cmp	r3, #0
	beq	.Lb09e2
	add	r3, r2, r3
	b	.Lb09e4
.Lb09e2:
	add	r3, r2, #1
.Lb09e4:
	strh	r3, [r4, #8]
	ldrh	r3, [r4, #8]
	strb	r3, [r4, #0x14]
.Lb09ea:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80b0958

.thumb_func_start Func_80b09fc  @ 0x080b09fc
	push	{r5, r6, lr}
	ldr	r5, [r0]
	ldrh	r4, [r5, #6]
	ldr	r6, =0
	strh	r4, [r0, #4]
	ldrh	r4, [r5, #8]
	strh	r1, [r0, #8]
	strh	r4, [r0, #6]
	strh	r2, [r0, #0xa]
	strb	r3, [r0, #0xd]
	strb	r6, [r0, #0xc]
	b	.Lb0a18

	.pool_aligned
.Lb0a18:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b09fc

.thumb_func_start Func_80b0a20  @ 0x080b0a20
	push	{r5, r6, lr}
	ldr	r5, [r0]
	ldr	r6, =0xffff
	mov	r3, #1
	ldr	r4, =0
	strb	r3, [r0, #0xd]
	ldr	r3, =0x1ff
	strh	r1, [r5, #6]
	strh	r1, [r0, #8]
	strh	r1, [r0, #4]
	and	r1, r6
	and	r1, r3
	strb	r4, [r0, #0xc]
	ldr	r3, =0xfffffe00
	ldrh	r4, [r5, #0x16]
	and	r3, r4
	orr	r3, r1
	strh	r3, [r5, #0x16]
	ldr	r3, [r0]
	strh	r2, [r0, #0xa]
	strh	r2, [r0, #6]
	strh	r2, [r3, #8]
	and	r2, r6
	strb	r2, [r3, #0x14]
	b	.Lb0a64

	.pool_aligned

.Lb0a64:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b0a20

.thumb_func_start Func_80b0a6c  @ 0x080b0a6c
	push	{lr}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r12, r3
	cmp	r0, #0
	beq	.Lb0a8c
	ldrh	r3, [r0, #0xc]
	lsl	r3, #3
	add	r3, r1, r3
	mov	r1, r3
	ldrh	r3, [r0, #0xe]
	lsl	r3, #3
	add	r3, r2, r3
	mov	r2, r3
	add	r1, #8
	add	r2, #8
.Lb0a8c:
	mov	r3, #0xea
	mov	r0, #0xe0
	lsl	r3, #2
	add	r3, r12
	lsl	r0, #2
	add	r0, r12
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	bl	Func_80b09fc
	pop	{r0}
	bx	r0
.func_end Func_80b0a6c

.thumb_func_start Func_80b0aac  @ 0x080b0aac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #0x24
	mov	r0, #0
	mov	r1, #0
	str	r0, [sp, #0x20]
	str	r0, [sp, #0x10]
	mov	r10, r3
	str	r1, [r3, #0x20]
	mov	r5, #2
	mov	r1, #7
	mov	r3, #4
	mov	r2, #0xc
	mov	r0, #0x12
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r2, r10
	str	r0, [r2, #0xc]
	bl	Func_80b10cc
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0xf
	mov	r3, #4
	str	r5, [sp]
	bl	_CreateUIBox
	str	r0, [sp, #0x20]
.Lb0af4:
	mov	r5, #2
	mov	r1, #0xc
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	ldr	r7, [sp, #0x10]
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, #0xe0
	str	r0, [sp, #0x1c]
	lsl	r3, #2
	add	r3, r10
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r10
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r0, #0
	mov	r3, #3
	mov	r1, #0x11
	mov	r2, #0x1e
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, #1
	str	r0, [sp, #0x18]
	mov	r11, r3
.Lb0b32:
	ldr	r3, =0x3a6
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r11
	mov	r9, r3
	cmp	r0, #0
	beq	.Lb0ba0
	mov	r2, #0x9b
	lsl	r2, #2
	lsl	r3, r7, #1
	add	r2, r10
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	bl	_GetItemInfo
	mov	r2, #0
	mov	r6, r0
	mov	r1, #7
	mov	r0, r7
	mov	r11, r2
	bl	__modsi3
	mov	r1, r0
	lsl	r1, #5
	ldr	r0, [sp, #0x1c]
	sub	r1, #8
	mov	r2, #8
	bl	Func_80b0a6c
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #4
	add	r2, r10
	strb	r3, [r2]
	ldr	r0, [sp, #0x1c]
	mov	r1, r7
	bl	Func_80b0fa4
	ldr	r1, =0x75
	ldr	r0, [sp, #0x18]
	add	r1, r5, r1
	bl	Func_80b11a4
	ldr	r0, [sp, #0x20]
	bl	_Func_8016498
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	ldr	r0, [sp, #0x20]
	mov	r1, r5
	mov	r3, #0
	bl	Func_80b110c
.Lb0ba0:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0bae
	b	.Lb0f48
.Lb0bae:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0bba
	b	.Lb0f3a
.Lb0bba:
	ldr	r0, =gKeyRepeat
	ldr	r3, [r0]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0be2
	mov	r1, r9
	mov	r8, r7
	sub	r7, #1
	add	r0, r7, r1
	bl	__modsi3
	mov	r7, r0
	cmp	r8, r7
	beq	.Lb0be2
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r11, r2
.Lb0be2:
	ldr	r0, =gKeyRepeat
	ldr	r3, [r0]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0c0a
	mov	r1, r9
	mov	r8, r7
	add	r7, #1
	add	r0, r7, r1
	bl	__modsi3
	mov	r7, r0
	cmp	r8, r7
	beq	.Lb0c0a
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r11, r2
.Lb0c0a:
	ldr	r0, =gKeyRepeat
	ldr	r3, [r0]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0c22
	sub	r3, r7, #7
	cmp	r3, #0
	blt	.Lb0c22
	mov	r1, #1
	mov	r7, r3
	mov	r11, r1
.Lb0c22:
	ldr	r2, =gKeyRepeat
	ldr	r3, [r2]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0c52
	mov	r0, r9
	add	r0, #6
	mov	r1, #7
	bl	__divsi3
	lsl	r3, r0, #3
	add	r5, r7, #7
	sub	r3, r0
	cmp	r5, r3
	bge	.Lb0c48
	mov	r3, #1
	mov	r7, r5
	mov	r11, r3
.Lb0c48:
	mov	r0, r9
	sub	r0, #1
	cmp	r7, r0
	ble	.Lb0c52
	mov	r7, r0
.Lb0c52:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb0b32
.Lb0c5a:
	ldr	r0, [sp, #0x18]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x1c]
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r8
	cmp	r0, #0
	beq	.Lb0c78
	b	.Lb0f56
.Lb0c78:
	ldr	r1, [sp, #0x10]
	mov	r2, #0x9b
	lsl	r3, r1, #1
	lsl	r2, #2
	add	r3, r2
	mov	r0, r10
	ldr	r5, =0x39e
	ldrh	r3, [r0, r3]
	add	r5, r10
	strh	r3, [r5]
	ldr	r0, =0xc9d
	bl	Func_80b04dc
	ldrh	r0, [r5]
	bl	_GetItemInfo
	mov	r1, #1
	str	r0, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r5, #2
	mov	r1, #0xe
	mov	r2, #0xd
	mov	r3, #3
	mov	r6, #0
	mov	r0, #0
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, #0xe0
	str	r0, [sp, #0x14]
	lsl	r3, #2
	add	r3, r10
	ldr	r2, [r3]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r10
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r2, r8
	str	r2, [sp]
	ldr	r0, [sp, #0x14]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_80a1870
	mov	r3, #9
	mov	r0, #0x10
	mov	r1, #0xb
	mov	r2, #0xe
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, #1
	mov	r7, #0
	mov	r9, r0
	mov	r11, r3
.Lb0cf0:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.Lb0d04
	mov	r1, #0
	ldr	r0, =0xc9d
	str	r1, [sp, #4]
	bl	Func_80b04dc
	mov	r2, #1
	mov	r11, r2
.Lb0d04:
	mov	r3, r11
	cmp	r3, #0
	beq	.Lb0d72
	ldr	r3, =0x3a7
	add	r3, r10
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r0, #0
	mov	r11, r0
	add	r0, r7, r1
	bl	__modsi3
	mov	r3, #0xdb
	mov	r7, r0
	lsl	r1, r7, #1
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, r10
	add	r1, r7
	add	r3, #2
	lsl	r1, #3
	ldrsh	r6, [r3, r2]
	sub	r1, #0xc
	ldr	r0, [sp, #0x14]
	mov	r2, #0
	bl	Func_80b0a6c
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r10
	mov	r3, #3
	ldr	r5, =0x39e
	strb	r3, [r2]
	add	r5, r10
	ldr	r0, [sp, #0x14]
	ldrh	r2, [r5]
	mov	r1, r7
	bl	Func_80b11c4
	ldrh	r0, [r5]
	bl	_Func_8078480
	cmp	r0, #0
	bne	.Lb0d68
	ldrh	r2, [r5]
	mov	r0, r9
	mov	r1, r6
	bl	Func_80b1470
	b	.Lb0d72
.Lb0d68:
	ldrh	r2, [r5]
	mov	r0, r9
	mov	r1, r6
	bl	Func_80b1260
.Lb0d72:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb0e6a
	ldr	r5, =0x39e
	add	r5, r10
	ldrh	r1, [r5]
	mov	r0, r6
	bl	_GiveItemTo
	mov	r1, r0
	cmp	r1, #0
	bge	.Lb0de8
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	ldrh	r0, [r5]
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r6
	bl	_FindEmptyInventorySlot
	cmp	r0, #0xf
	bne	.Lb0db8
	ldr	r0, =0xc9e
	bl	Func_80b04dc
	b	.Lb0cf0
.Lb0db8:
	ldr	r0, =0xca6
	bl	Func_80b04dc
	b	.Lb0cf0

	.pool_aligned

.Lb0de8:
	mov	r0, r6
	bl	_Func_80788c4
	ldr	r2, [sp, #8]
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	ldr	r2, =gState
	ldr	r2, [r2, #0x10]
	cmp	r3, r2
	bls	.Lb0dfe
	b	.Lb0f26
.Lb0dfe:
	ldrh	r1, [r5]
	mov	r0, r6
	bl	_Func_807845c
	cmp	r0, #0
	bne	.Lb0e28
	mov	r1, #1
	mov	r0, r6
	bl	_Func_8019908
	ldr	r0, =0xc9f
	bl	Func_80b04dc
	mov	r0, #0
	bl	Func_80b0634
	mov	r3, #1
	str	r3, [sp, #4]
	cmp	r0, #0
	beq	.Lb0e28
	b	.Lb0cf0
.Lb0e28:
	ldr	r5, =0x39e
	mov	r0, #0x70
	bl	_PlaySound
	add	r5, r10
	mov	r0, #1
	bl	WaitFrames
	ldrh	r1, [r5]
	mov	r0, r6
	bl	Func_80b153c
	str	r0, [sp, #0xc]
	mov	r2, #1
	ldr	r1, [sp, #0xc]
	mov	r0, #1
	neg	r2, r2
	str	r0, [sp, #4]
	cmp	r1, r2
	bne	.Lb0e52
	b	.Lb0cf0
.Lb0e52:
	ldrh	r1, [r5]
	mov	r0, r6
	ldr	r2, [sp, #0xc]
	bl	Func_80b17e4
	mov	r1, r9
	ldr	r0, [sp, #0x14]
	bl	Func_80b24e4
	mov	r3, #0
	mov	r8, r3
	b	.Lb0eaa
.Lb0e6a:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lb0f18
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0e8c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	sub	r7, #1
	mov	r11, r0
.Lb0e8c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0ea2
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	add	r7, #1
	mov	r11, r1
.Lb0ea2:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb0cf0
.Lb0eaa:
	bl	_Func_80a195c
	mov	r0, r9
	mov	r1, #2
	bl	_CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x14]
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r2, r8
	cmp	r2, #0
	bne	.Lb0f10
	ldr	r3, =0x3aa
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #2
	bne	.Lb0f10
	ldr	r3, [sp, #0xc]
	cmp	r8, r3
	bge	.Lb0ef4
	ldr	r6, =0x39e
	mov	r5, r3
	add	r6, r10
.Lb0ee4:
	mov	r1, #1
	ldrh	r0, [r6]
	neg	r1, r1
	sub	r5, #1
	bl	_Func_8078ad0
	cmp	r5, #0
	bne	.Lb0ee4
.Lb0ef4:
	bl	Func_80b0070
	cmp	r0, #0
	beq	.Lb0f56
	ldr	r3, =0x3a6
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r0, [sp, #0x10]
	sub	r3, #1
	cmp	r0, r3
	ble	.Lb0f10
	str	r3, [sp, #0x10]
.Lb0f10:
	ldr	r0, =0xca8
	bl	Func_80b04dc
	b	.Lb0af4
.Lb0f18:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r1, #1
	neg	r1, r1
	mov	r8, r1
	b	.Lb0eaa
.Lb0f26:
	mov	r0, #0x71
	bl	_PlaySound
	ldr	r0, =0xc9c
	bl	Func_80b0574
	mov	r2, #1
	neg	r2, r2
	mov	r8, r2
	b	.Lb0eaa
.Lb0f3a:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r3, #1
	neg	r3, r3
	mov	r8, r3
	b	.Lb0c5a
.Lb0f48:
	mov	r0, #0x70
	str	r7, [sp, #0x10]
	bl	_PlaySound
	mov	r0, #0
	mov	r8, r0
	b	.Lb0c5a
.Lb0f56:
	ldr	r0, [sp, #0x20]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r1, r10
	ldr	r0, [r1, #0xc]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0aac

.thumb_func_start Func_80b0fa4  @ 0x080b0fa4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r1, [sp, #8]
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x9b
	ldr	r5, [r3]
	lsl	r2, #2
	add	r7, r5, r2
	ldr	r2, =0x3a6
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r0
	mov	r0, r1
	mov	r1, #7
	str	r3, [sp, #4]
	bl	__modsi3
	ldr	r3, [sp, #8]
	mov	r2, r9
	sub	r6, r3, r0
	cmp	r2, #0
	beq	.Lb10ac
	mov	r0, r9
	bl	_Func_8016478
	cmp	r6, #0
	beq	.Lb100c
	ldr	r2, =0x392
	add	r3, r5, r2
	ldrh	r0, [r3]
	mov	r3, #0x10
	neg	r3, r3
	mov	r1, #0x80
	str	r3, [sp]
	mov	r2, r9
	mov	r3, #0xd8
	lsl	r1, #23
	bl	_Func_801eadc
	mov	r2, #0
	mov	r3, #0x11
	strb	r2, [r0, #4]
	strb	r3, [r0, #5]
	strh	r2, [r0, #0xc]
.Lb100c:
	ldr	r2, [sp, #4]
	add	r3, r6, #7
	cmp	r3, r2
	bge	.Lb1036
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	mov	r1, #0x80
	mov	r3, #0x18
	str	r3, [sp]
	mov	r2, r9
	mov	r3, #0xd8
	lsl	r1, #23
	bl	_Func_801eadc
	mov	r2, #0
	mov	r3, #0xf
	strb	r2, [r0, #4]
	strb	r3, [r0, #5]
	strh	r2, [r0, #0xc]
.Lb1036:
	ldr	r2, [sp, #4]
	mov	r3, #0
	mov	r10, r3
	cmp	r6, r2
	bcs	.Lb10ac
	lsl	r3, r6, #1
	add	r3, r7
	mov	r8, r3
	mov	r3, #0x10
	mov	r11, r3
.Lb104a:
	mov	r3, r8
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	bl	_GetItemInfo
	mov	r2, r10
	lsl	r3, r2, #5
	mov	r2, #0
	str	r2, [sp]
	mov	r7, r0
	mov	r1, #1
	mov	r0, r5
	mov	r2, r9
	bl	_Func_801eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
	ldr	r3, [sp, #8]
	cmp	r6, r3
	bne	.Lb1080
	mov	r3, #9
	strb	r3, [r0, #5]
	mov	r3, #0xa
	strh	r3, [r0, #0xc]
	mov	r3, #0xfd
	strb	r3, [r0, #0xf]
.Lb1080:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r3, #0
	mov	r2, r11
	mov	r1, r9
	bl	Func_80b0744
	mov	r3, #0xfb
	mov	r2, #1
	strb	r3, [r0, #0xf]
	add	r10, r2
	mov	r3, #0x20
	add	r11, r3
	mov	r2, r10
	mov	r3, #2
	add	r8, r3
	add	r6, #1
	cmp	r2, #6
	bhi	.Lb10ac
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bcc	.Lb104a
.Lb10ac:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b0fa4

.thumb_func_start Func_80b10cc  @ 0x080b10cc
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	ldr	r5, [r3, #0xc]
	sub	sp, #4
	cmp	r5, #0
	beq	.Lb10f8
	ldr	r0, =0xc8a
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	ldr	r3, =gState
	ldr	r0, [r3, #0x10]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #6
	mov	r2, r5
	mov	r3, #0x20
	bl	_Func_801ea08
.Lb10f8:
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80b10cc

.thumb_func_start Func_80b110c  @ 0x080b110c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	sub	sp, #4
	mov	r5, r1
	mov	r8, r2
	mov	r7, r3
	cmp	r6, #0
	bne	.Lb1158
	b	.Lb1186
.Lb1122:
	ldr	r0, =0xc92
	mov	r1, r6
	mov	r2, #0
	b	.Lb1150
.Lb112a:
	ldr	r5, =0xc8b
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #5
	mov	r2, r6
	mov	r3, #0x20
	sub	r5, #3
	bl	_Func_801ea08
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0x48
.Lb1150:
	mov	r3, #8
	bl	_Func_801e7c0
	b	.Lb1186
.Lb1158:
	mov	r0, r6
	bl	_Func_8016498
	ldr	r0, =0x182
	mov	r3, #0
	add	r0, r5, r0
	mov	r1, r6
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r3, r8
	cmp	r3, #0
	bne	.Lb112a
	cmp	r7, #1
	beq	.Lb1122
	cmp	r7, #2
	bne	.Lb112a
	ldr	r0, =0xc93
	mov	r1, r6
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
.Lb1186:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b110c

