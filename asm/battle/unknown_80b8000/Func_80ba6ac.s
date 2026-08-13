	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ba6ac  @ 0x080ba6ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f00
	ldr	r1, [r3]
	ldrb	r3, [r0]
	mov	r8, r2
	sub	sp, #0x58
	mov	r10, r0
	ldr	r2, =0xffffe000
	cmp	r3, #4
	bhi	.Lba6cc
	mov	r2, #0x80
	lsl	r2, #6
.Lba6cc:
	ldr	r3, [r1]
	cmp	r3, r2
	beq	.Lba6d4
	str	r2, [r1]
.Lba6d4:
	add	r5, sp, #4
	mov	r1, r5
	mov	r0, r10
	bl	InitAnimContext
	mov	r1, #0
	mov	r0, #0
	bl	Func_80c10e8
	ldr	r0, [r5, #8]
	bl	GetBattleActor
	ldr	r0, [r0]
	mov	r1, #3
	mov	r9, r0
	bl	_Actor_SetAnim
	mov	r1, #0x10
	mov	r0, r9
	bl	_Actor_SetAnimSpeed
	mov	r1, r10
	ldrb	r3, [r1, #2]
	cmp	r3, #7
	bhi	.Lba70a
	mov	r3, #1
	b	.Lba70c
.Lba70a:
	mov	r3, #0
.Lba70c:
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x14]
	mov	r7, #0
	mov	r2, r5
	cmp	r3, #0
	beq	.Lba75e
	mov	r6, #0
.Lba71a:
	lsl	r3, r7, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	GetBattleActor
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_80b7f70
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r1, #0
	cmp	r3, #0
	beq	.Lba752
	mov	r12, r3
	add	r3, r6, r5
	mov	r2, r3
	add	r2, #0x34
	add	r0, #0x28
.Lba744:
	ldmia	r0!, {r3}
	ldrb	r3, [r3, #5]
	add	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, r12
	bne	.Lba744
.Lba752:
	ldr	r3, [r5, #0x14]
	add	r7, #1
	add	r6, #4
	mov	r2, r5
	cmp	r7, r3
	bne	.Lba71a
.Lba75e:
	mov	r1, #0xc8
	ldr	r0, =Func_80bd898
	lsl	r1, #4
	bl	StartTask
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lba7c0
	mov	r7, #0
	mov	r6, #0
.Lba772:
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	cmp	r7, #0x13
	bgt	.Lba792
	ldr	r2, =0x544
	ldr	r1, =0x644
	add	r0, r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r1
	sub	r2, r6
	str	r2, [r3]
	ldr	r1, =0x50000c0
	mov	r3, #0x80
	bl	UploadBGPalette
.Lba792:
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =0x444
	add	r7, #1
	add	r6, r2
	cmp	r7, #0x13
	ble	.Lba772
	mov	r6, r10
	ldr	r3, [r6, #0x58]
	mov	r2, #0x80
	lsl	r2, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lba7b8
	mov	r0, r5
	bl	_Anim_Attack
	b	.Lba7c6
.Lba7b8:
	mov	r0, r5
	bl	_Anim_Func
	b	.Lba7c6
.Lba7c0:
	mov	r0, #0x3c
	bl	WaitFrames
.Lba7c6:
	bl	Func_80be02c
	mov	r6, r5
	mov	r0, r9
	mov	r1, #1
	bl	_Actor_SetAnim
	ldr	r3, [r6, #0x14]
	mov	r7, #0
	cmp	r3, #0
	beq	.Lba7f4
	mov	r2, #0x24
.Lba7de:
	ldrsh	r0, [r6, r2]
	str	r2, [sp]
	bl	Func_80b8000
	mov	r5, r6
	ldr	r2, [sp]
	ldr	r3, [r5, #0x14]
	add	r7, #1
	add	r2, #2
	cmp	r7, r3
	bne	.Lba7de
.Lba7f4:
	mov	r3, r8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_GetUnit
	mov	r1, r8
	mov	r7, #8
	ldrsh	r3, [r1, r7]
	lsl	r3, #1
	add	r3, #0xd8
	mov	r6, r0
	ldrh	r5, [r6, r3]
	mov	r0, r5
	bl	_GetItemInfo
	ldrb	r2, [r0, #0xc]
	mov	r3, r2
	cmp	r3, #1
	bne	.Lba87e
	mov	r3, r8
	mov	r6, #8
	ldrsh	r1, [r3, r6]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_80788c4
	mov	r1, r8
	mov	r7, #8
	ldrsh	r5, [r1, r7]
	cmp	r0, #2
	bne	.Lba8da
	ldr	r3, =iwram_3001e74
	ldr	r0, [r3]
	mov	r4, #0
.Lba838:
	mov	r2, #0xbc
	lsl	r1, r4, #4
	lsl	r2, #2
	add	r3, r1, r2
	add	r3, r0, r3
	mov	r6, #2
	ldrsh	r3, [r3, r6]
	cmp	r3, #2
	bne	.Lba876
	mov	r7, #0xbb
	lsl	r7, #2
	add	r3, r1, r7
	ldrsh	r2, [r0, r3]
	mov	r6, r8
	mov	r7, #0
	ldrsh	r3, [r6, r7]
	cmp	r2, r3
	bne	.Lba876
	mov	r7, #0xbd
	lsl	r7, #2
	add	r1, r7
	ldrsh	r2, [r0, r1]
	ldrh	r3, [r0, r1]
	cmp	r2, r5
	bne	.Lba86e
	ldr	r3, =0xffff
	b	.Lba874
.Lba86e:
	cmp	r2, r5
	ble	.Lba876
	sub	r3, #1
.Lba874:
	strh	r3, [r0, r1]
.Lba876:
	add	r4, #1
	cmp	r4, #0x13
	bls	.Lba838
	b	.Lba8da
.Lba87e:
	lsl	r3, r2, #24
	lsr	r3, #24
	cmp	r3, #2
	bne	.Lba8c0
	bl	_RPGRandom
	mov	r3, #7
	and	r0, r3
	cmp	r0, #0
	bne	.Lba8da
	mov	r1, r8
	mov	r7, #8
	ldrsh	r3, [r1, r7]
	lsl	r3, #1
	add	r3, #0xd8
	ldrh	r1, [r6, r3]
	mov	r0, #2
	bl	Func_80bbabc
	ldr	r1, =0x81c
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, r8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r6, #8
	ldrsh	r1, [r3, r6]
	bl	_BreakItem
	bl	Func_80bb938
	b	.Lba8da
.Lba8c0:
	cmp	r3, #4
	bne	.Lba8da
	ldr	r3, =0x1ff
	and	r3, r5
	cmp	r3, #0xb8
	bne	.Lba8ce
	mov	r5, #0xb9
.Lba8ce:
	mov	r1, r8
	mov	r7, #8
	ldrsh	r3, [r1, r7]
	lsl	r3, #1
	add	r3, #0xd8
	strh	r5, [r6, r3]
.Lba8da:
	mov	r0, #0
	add	sp, #0x58
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ba6ac
