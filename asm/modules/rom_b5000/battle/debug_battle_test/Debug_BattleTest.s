	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_BattleTest  @ 0x080b56e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r10, r2
	bl	_GameInit
.Lb56f6:
	mov	r5, #0xb5
	lsl	r5, #1
	bl	LoadStaticUIGFX
	bl	ClearVRAM
	bl	ClearTasks
	bl	ClearHeap
	bl	ClearSprites
	mov	r0, r5
	bl	_SetFlag
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	ldr	r6, =0x101
	cmp	r3, #0
	bne	.Lb5724
	b	.Lb583e
.Lb5724:
	mov	r3, #1
	neg	r3, r3
	mov	r0, r5
	mov	r8, r3
	bl	_ClearFlag
	ldr	r2, =ewram_200046b
	mov	r3, #0x55
	mov	r9, r2
	neg	r3, r3
	add	r3, r9
	ldr	r5, =gKeyRepeat
	mov	r7, #0
	mov	r11, r3
.Lb5740:
	mov	r0, #0x20
	bl	_ClearFlag
	mov	r0, #1
	bl	WaitFrames
	b	.Lb579a
.Lb574e:
	ldr	r3, [r5]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lb575c
	bl	Func_80b5534
.Lb575c:
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lb576a
	bl	Func_80c2a08
.Lb576a:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lb577a
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb5784
.Lb577a:
	mov	r3, #1
	mov	r10, r3
	mov	r3, #5
	mov	r2, r9
	strb	r3, [r2]
.Lb5784:
	cmp	r7, r8
	beq	.Lb5794
	bl	_GameInit
	mov	r0, r7
	bl	Debug_LoadPresetParty
	mov	r8, r7
.Lb5794:
	mov	r0, #1
	bl	WaitFrames
.Lb579a:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57a6
	add	r6, #1
.Lb57a6:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57b2
	sub	r6, #1
.Lb57b2:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57be
	sub	r6, #0xa
.Lb57be:
	ldr	r3, [r5]
	mov	r1, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.Lb57ca
	add	r6, #0xa
.Lb57ca:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57d8
	add	r7, #1
.Lb57d8:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57e6
	sub	r7, #1
.Lb57e6:
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb574e
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	and	r3, r1
	cmp	r3, #0
	beq	.Lb5802
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_SetFlag
.Lb5802:
	mov	r0, #0
	bl	_CalcStats
	ldr	r3, =0x1d
	mov	r2, r11
	strh	r3, [r2]
	cmp	r6, #0x1c
	bne	.Lb581a
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_SetFlag
.Lb581a:
	mov	r0, #0xb1
	lsl	r0, #1
	bl	_SetFlag
	mov	r0, r6
	bl	BattleMain
	bl	LoadStaticUIGFX
	bl	ClearVRAM
	bl	ClearTasks
	bl	ClearHeap
	bl	ClearSprites
	b	.Lb5740
.Lb583e:
	mov	r0, #0xb1
	lsl	r0, #1
	bl	_SetFlag
	ldr	r0, =0x101
	bl	BattleMain
	b	.Lb56f6
.func_end Debug_BattleTest


