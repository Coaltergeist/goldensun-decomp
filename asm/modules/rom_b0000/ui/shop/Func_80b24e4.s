	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b24e4  @ 0x080b24e4
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
	ldr	r6, [r3]
	ldr	r3, =0x39e
	add	r3, r6
	ldrh	r4, [r3]
	mov	r9, r0
	mov	r0, #1
	ldr	r1, =gState
	mov	r11, r0
	mov	r0, #0x8e
	str	r4, [sp]
	lsl	r0, #1
	mov	r8, r3
	add	r3, r1, r0
	mov	r2, #0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r10, r2
	ldr	r2, =.Lb4146
	lsl	r3, #1
	ldrsh	r4, [r2, r3]
	mov	r2, #0x8c
	str	r4, [sp, #4]
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r7, #0
	cmp	r4, r3
	ble	.Lb2534
	b	.Lb2684
.Lb2534:
	mov	r3, #0xe4
	mov	r4, r8
	strh	r3, [r4]
	mov	r1, #2
	mov	r0, #0xe4
	bl	_Func_8019908
	ldr	r5, =0xcc3
	mov	r0, r5
	bl	Func_80b0574
	mov	r2, r8
	ldrh	r0, [r2]
	mov	r1, #2
	add	r5, #1
	bl	_Func_8019908
	mov	r0, r5
	bl	Func_80b0574
.Lb255c:
	mov	r3, r11
	cmp	r3, #0
	beq	.Lb25b4
	ldr	r0, =0x3a7
	add	r3, r6, r0
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r4, #0
	add	r0, r7, r1
	mov	r11, r4
	bl	__modsi3
	mov	r3, #0xdb
	mov	r7, r0
	lsl	r1, r7, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r6, #2
	add	r1, r7
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r9
	mov	r2, #0
	mov	r10, r4
	bl	Func_80b0a6c
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r6, r3
	ldr	r4, =0x39e
	mov	r3, #3
	strb	r3, [r2]
	add	r5, r6, r4
	ldrh	r2, [r5]
	mov	r0, r9
	mov	r1, r7
	bl	Func_80b11c4
	ldrh	r2, [r5]
	ldr	r0, [sp, #8]
	mov	r1, r10
	bl	Func_80b1470
.Lb25b4:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb262c
	ldr	r0, =0x39e
	add	r5, r6, r0
	ldrh	r1, [r5]
	mov	r0, r10
	bl	_GiveItemTo
	mov	r1, r0
	cmp	r1, #0
	bge	.Lb2602
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	ldrh	r0, [r5]
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r10
	bl	_FindEmptyInventorySlot
	cmp	r0, #0xf
	bne	.Lb25fa
	ldr	r0, =0xc9e
	bl	Func_80b04dc
	b	.Lb255c
.Lb25fa:
	ldr	r0, =0xca6
	bl	Func_80b04dc
	b	.Lb255c
.Lb2602:
	mov	r0, r10
	bl	_Func_80788c4
	mov	r0, #0x65
	bl	_PlaySound
	ldr	r0, =0xca1
	bl	Func_80b0574
	ldrh	r1, [r5]
	mov	r0, r10
	bl	_GiveItemTo
	ldr	r2, [sp, #4]
	neg	r0, r2
	bl	_AddCoinsSpent
	mov	r0, #1
	bl	_Func_8079754
	b	.Lb267a
.Lb262c:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2644
	ldr	r0, =0xcc5
	bl	Func_80b0574
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb267a
.Lb2644:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb265c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	sub	r7, #1
	mov	r11, r3
.Lb265c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2672
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r4, #1
	add	r7, #1
	mov	r11, r4
.Lb2672:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb255c
.Lb267a:
	ldr	r0, =0x39e
	mov	r2, sp
	ldrh	r2, [r2]
	add	r3, r6, r0
	strh	r2, [r3]
.Lb2684:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b24e4

