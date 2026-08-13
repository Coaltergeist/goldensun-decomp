	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ba584  @ 0x080ba584
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f00
	mov	r6, r0
	ldrb	r0, [r6]
	sub	sp, #0x54
	mov	r8, r1
	ldr	r5, [r3]
	bl	GetBattleActor
	ldr	r3, [r0]
	ldr	r1, [r3, #0x10]
	ldr	r0, [r3, #8]
	bl	atan2
	ldr	r1, =0xffffe000
	lsl	r0, #16
	ldrb	r3, [r6]
	lsr	r0, #16
	add	r2, r0, r1
	cmp	r3, #7
	bls	.Lba5b8
	mov	r3, #0xc0
	lsl	r3, #7
	add	r2, r0, r3
.Lba5b8:
	ldr	r3, =0x7fff
	ldr	r1, =0xffffe000
	and	r2, r3
	add	r3, r2, r1
	lsr	r2, r3, #31
	add	r3, r2
	mov	r1, #0x80
	asr	r3, #1
	lsl	r1, #6
	add	r2, r3, r1
	ldr	r3, [r5]
	cmp	r3, r2
	bne	.Lba5dc
	str	r2, [r5]
	mov	r0, #5
	bl	WaitFrames
	b	.Lba5e4
.Lba5dc:
	str	r2, [r5]
	mov	r0, #0x14
	bl	WaitFrames
.Lba5e4:
	mov	r0, #0
	mov	r1, #0
	bl	Func_80c10e8
	mov	r5, sp
	mov	r1, r5
	mov	r0, r6
	bl	InitAnimContext
	ldr	r0, [r5, #8]
	bl	_GetUnit
	ldrb	r0, [r6, #2]
	bl	_GetUnit
	mov	r7, #2
	mov	r2, r8
	ldrb	r0, [r6]
	and	r7, r2
	bl	GetBattleActor
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_80b7f70
	ldr	r3, [r0, #0x28]
	mov	r2, #1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #2
	bl	_Func_800be20
	mov	r3, #0
	mov	r2, r0
	ldrb	r1, [r6, #2]
	ldr	r0, [r5, #8]
	bl	Func_80b82c4
	ldr	r0, [r5, #8]
	bl	GetBattleActor
	mov	r1, #0x10
	ldr	r0, [r0]
	bl	_Actor_SetAnimSpeed
	ldrb	r0, [r6, #2]
	bl	GetBattleActor
	ldrb	r3, [r6, #2]
	cmp	r3, #7
	bhi	.Lba64e
	mov	r3, #1
	b	.Lba650
.Lba64e:
	mov	r3, #0
.Lba650:
	str	r3, [r5, #4]
	cmp	r7, #0
	beq	.Lba67c
	mov	r0, #0xa
	bl	WaitFrames
	ldrb	r0, [r6, #2]
	bl	Func_80b8178
	mov	r0, #2
	bl	WaitFrames
	mov	r0, #4
	bl	WaitFrames
	mov	r0, #0xa
	bl	WaitFrames
	ldrb	r0, [r6, #2]
	bl	Func_80b8000
	b	.Lba68c
.Lba67c:
	mov	r0, r5
	bl	_Anim_Attack
	bl	Func_80bb938
	ldrb	r0, [r6, #2]
	bl	Func_80b8000
.Lba68c:
	ldr	r0, [r5, #8]
	bl	Func_80b8000
	mov	r0, #0
	add	sp, #0x54
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ba584
