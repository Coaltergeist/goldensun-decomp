	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InnHeal  @ 0x080b3398
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x10
	mov	r8, sp
	mov	r5, r0
	mov	r0, r8
	bl	_Func_80796c4
	neg	r5, r5
	mov	r7, r0
	mov	r0, r5
	bl	_AddCoins
	cmp	r7, #0
	ble	.Lb33e8
	mov	r10, r8
	mov	r6, #0
	mov	r5, r7
.Lb33c0:
	mov	r2, r10
	ldrsh	r0, [r6, r2]
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lb33e0
	ldrh	r3, [r0, #0x34]
	strh	r3, [r0, #0x38]
	ldrh	r3, [r0, #0x36]
	strh	r3, [r0, #0x3a]
	mov	r3, r8
	ldrsh	r0, [r6, r3]
	bl	_UpdateStatBarPercent
.Lb33e0:
	sub	r5, #1
	add	r6, #2
	cmp	r5, #0
	bne	.Lb33c0
.Lb33e8:
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	mov	r5, #0xe4
	add	r3, #0x49
	str	r3, [r2]
	lsl	r5, #1
	mov	r3, #0x3c
	str	r3, [r1, r5]
	mov	r0, #0x14
	bl	WaitFrames
	bl	_MapTransitionOut
	bl	_WaitMapTransition
	mov	r0, #0x56
	bl	_PlaySound
	bl	Func_80b04c4
	mov	r0, #0xa
	bl	WaitFrames
	bl	_MapTransitionIn
	bl	_WaitMapTransition
	mov	r0, #0x1e
	bl	WaitFrames
	ldr	r2, [r6]
	mov	r3, #0x10
	str	r3, [r2, r5]
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end InnHeal

