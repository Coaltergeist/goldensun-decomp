	.include "macros.inc"

.thumb_func_start Func_8093304
	push	{r5, lr}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0x80
	lsl	r1, #24
	ldr	r5, [r3]
	cmp	r0, r1
	bne	.L9331e
	ldr	r2, =0x12f4
	ldr	r1, =0x12f6
	add	r3, r5, r2
	mov	r2, #0
	strh	r2, [r3]
	b	.L9333c
.L9331e:
	bl	Func_8092ba8
	bl	GetSpriteVoice
	ldr	r3, =gState
	mov	r1, #0x83
	lsl	r1, #2
	add	r3, r1
	ldrb	r3, [r3]
	ldr	r1, =0x12f4
	ldr	r2, =.L9fc28
	ldrb	r2, [r2, r3]
	add	r3, r5, r1
	add	r1, #2
	strh	r0, [r3]
.L9333c:
	add	r3, r5, r1
	strh	r2, [r3]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8093304

.thumb_func_start SetCameraTarget
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r1
	bl	GetFieldActor
	ldr	r1, =0xccc
	mov	r6, r0
	mov	r0, #0x1b
	bl	galloc_ewram
	mov	r3, #0xf0
	mov	r8, r0
	lsl	r3, #1
	add	r3, r8
	ldr	r5, [r3]
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	cmp	r6, #0
	beq	.L933be
	mov	r7, r5
	add	r7, #8
	str	r7, [r3]
	mov	r0, r5
	mov	r1, r6
	bl	_Camera_SetTarget
	mov	r2, r10
	cmp	r2, #0
	bne	.L933be
	ldr	r3, [r6, #8]
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #1
	str	r3, [r5, #0x10]
	bl	WaitFrames
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	beq	.L933be
	bl	_Func_800fe9c
.L933be:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end SetCameraTarget

.thumb_func_start Func_80933d4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0x1b
	ldr	r1, =0xccc
	bl	galloc_ewram
	mov	r3, #0xf0
	lsl	r3, #1
	add	r0, r3
	ldr	r3, [r0]
	str	r5, [r3, #0x30]
	str	r6, [r3, #0x34]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80933d4

.thumb_func_start Func_80933f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r6, r0
	mov	r10, r1
	mov	r0, #0x1b
	ldr	r1, =0xccc
	str	r3, [sp, #0xc]
	mov	r7, r2
	bl	galloc_ewram
	mov	r1, #0xf0
	str	r0, [sp, #8]
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r5, [r3]
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r2, #0xf0
	lsl	r2, #15
	add	r2, r3, r2
	str	r2, [sp, #4]
	mov	r3, r1
	add	r3, #0xf0
	ldr	r2, [r5, #0xc]
	ldr	r3, [r3]
	mov	r0, #0xc0
	add	r3, r2
	lsl	r0, #15
	add	r0, r3, r0
	str	r0, [sp]
	mov	r3, r1
	add	r3, #0xf4
	ldr	r3, [r3]
	ldr	r0, =0xff880000
	add	r0, r3
	mov	r3, r1
	add	r3, #0xf8
	ldr	r3, [r3]
	add	r3, r2
	ldr	r2, =0xffc00000
	add	r2, r3
	mov	r3, #8
	add	r3, r5
	str	r3, [r1]
	mov	r11, r0
	mov	r0, r5
	mov	r8, r3
	mov	r9, r2
	bl	_Actor_Stop
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L9347a
	mov	r0, r8
	ldr	r6, [r0]
.L9347a:
	cmp	r10, r3
	bne	.L93482
	ldr	r1, [r5, #0xc]
	mov	r10, r1
.L93482:
	cmp	r7, r3
	bne	.L93488
	ldr	r7, [r5, #0x10]
.L93488:
	ldr	r2, [sp, #4]
	cmp	r6, r2
	bge	.L93490
	mov	r6, r2
.L93490:
	ldr	r3, [sp]
	cmp	r7, r3
	bge	.L93498
	mov	r7, r3
.L93498:
	cmp	r6, r11
	ble	.L9349e
	mov	r6, r11
.L9349e:
	cmp	r7, r9
	ble	.L934a4
	mov	r7, r9
.L934a4:
	ldr	r0, [sp, #0xc]
	cmp	r0, #0
	bne	.L934d0
	mov	r1, r8
	mov	r2, r10
	str	r6, [r1]
	mov	r0, #1
	str	r2, [r5, #0xc]
	str	r7, [r5, #0x10]
	bl	WaitFrames
	mov	r1, #0xcf
	ldr	r0, [sp, #8]
	lsl	r1, #1
	add	r3, r0, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	beq	.L934dc
	bl	_Func_800fe9c
	b	.L934dc
.L934d0:
	mov	r0, r5
	mov	r1, r6
	mov	r2, r10
	mov	r3, r7
	bl	_Actor_TravelTo
.L934dc:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80933f8

