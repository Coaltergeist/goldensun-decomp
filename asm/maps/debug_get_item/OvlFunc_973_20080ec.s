	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_973_20080ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	bl	__GetUnit
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #9
	mov	r8, r0
	mov	r0, #0
	bl	__CreateUIBox
	ldr	r5, =0xc20
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	__DrawSmallText
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #2
	bl	__DrawSmallText
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x20
	mov	r7, #1
	bl	__DrawSmallText
.L140:
	cmp	r7, #0
	beq	.L176
	mov	r0, r6
	bl	__Func_8016498
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x30
	bl	__Func_801e8b0
	ldr	r0, =s_Lv_973__020088d0
	mov	r1, r6
	mov	r2, #0x30
	mov	r3, #0x30
	bl	__UIDrawText
	mov	r3, r8
	ldrb	r0, [r3, #0xf]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #0
	mov	r2, r6
	mov	r3, #0x48
	mov	r7, #0
	bl	__Func_801ea08
.L176:
	ldr	r5, =gKeyPress
	ldr	r3, [r5]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L18c
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L19a
.L18c:
	mov	r0, #5
	bl	OvlFunc_973_20080c0
	mov	r0, #0x5d
	bl	__PlaySound
	mov	r7, #1
.L19a:
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b2
	mov	r0, #1
	bl	OvlFunc_973_20080c0
	mov	r0, #0x5b
	bl	__PlaySound
	mov	r7, #1
.L1b2:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1fa
	mov	r0, #0x71
	bl	__PlaySound
	mov	r0, r6
	bl	__Func_8016498
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, r6
	bl	__CloseUIBox
	mov	r0, #0
	bl	__CalcStats
	mov	r0, #1
	bl	__CalcStats
	mov	r0, #3
	bl	__CalcStats
	mov	r0, #2
	bl	__CalcStats
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.L1fa:
	mov	r0, #1
	bl	__WaitFrames
	b	.L140
.func_end OvlFunc_973_20080ec
