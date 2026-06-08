	.include "macros.inc"

.thumb_func_start BattleIntro
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xf7
	ldr	r6, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	sp, #8
	bl	_PlaySound
	mov	r0, #0x90
	lsl	r0, #1
	bl	_PlaySound
	mov	r0, #0x93
	bl	_PlaySound
	mov	r1, #0xcf
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L94266
	ldr	r2, =0x7fff
	ldr	r3, =0x50001e6
	strh	r2, [r3]
	ldr	r0, =0x401
	mov	r1, #0x10
	bl	ScreenTransitionOut
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, #0x10
	bl	WaitFrames
	mov	r7, #0xf0
	mov	r1, #0xf0
	mov	r5, #0
	lsl	r1, #2
	lsl	r7, #7
	mov	r6, #0x1e
.L94242:
	mov	r3, r7
	orr	r3, r1
	ldr	r2, =0x50001e6
	orr	r3, r6
	strh	r3, [r2]
	mov	r0, #1
	str	r1, [sp, #4]
	bl	WaitFrames
	ldr	r2, =0xfffff800
	ldr	r1, [sp, #4]
	add	r5, #1
	sub	r1, #0x40
	add	r7, r2
	sub	r6, #2
	cmp	r5, #0xf
	ble	.L94242
	b	.L942b6
.L94266:
	ldr	r3, =0x7fff
	mov	r5, #0xa0
	lsl	r5, #19
	strh	r3, [r5]
	ldr	r0, =0x207
	mov	r1, #0x10
	bl	ScreenTransitionOut
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, #0x10
	bl	WaitFrames
	mov	r7, #0xf0
	mov	r2, #0xf0
	mov	r8, r5
	lsl	r2, #2
	lsl	r7, #7
	mov	r6, #0x1e
	mov	r5, #0xf
.L94294:
	mov	r3, r7
	orr	r3, r2
	orr	r3, r6
	mov	r1, r8
	strh	r3, [r1]
	mov	r0, #1
	str	r2, [sp]
	bl	WaitFrames
	ldr	r3, =0xfffff800
	ldr	r2, [sp]
	sub	r5, #1
	sub	r2, #0x40
	add	r7, r3
	sub	r6, #2
	cmp	r5, #0
	bge	.L94294
.L942b6:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end BattleIntro

.thumb_func_Start Func_942e0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r0
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	mov	r1, #0x1b
	mov	r0, r6
	bl	_Sprite_AddLayer
	add	r6, #0x26
	mov	r1, #0
	strb	r1, [r6]
	mov	r3, #0xf
	strb	r3, [r0, #5]
	ldr	r2, =0xfff00000
	ldr	r3, [r5, #8]
	mov	r0, #0x80
	and	r3, r2
	lsl	r0, #12
	add	r3, r0
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r1, [r5, #0x24]
	str	r1, [r5, #0x2c]
	mov	r0, r5
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	mov	r1, r8
	bl	_Actor_SetAnim
	mov	r0, #0x12
	bl	WaitFrames
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_942e0

