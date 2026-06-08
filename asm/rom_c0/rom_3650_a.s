	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start VBlank
	push	{r5, lr}
	ldr	r2, =REG_DMA0SAD
	ldr	r3, =0xc5ff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldr	r3, =0x7fff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldrh	r3, [r2, #0xa]
	ldr	r3, =iwram_3001cb0
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L367e
	ldr	r0, =ewram_2002220
	ldr	r1, =ewram_2002020
	ldr	r5, =iwram_3001f64
	bl	Func_8006088
	strh	r0, [r5]
	bl	Func_800655c
.L367e:
	bl	_UpdateMusicSettings
	bl	Func_8003adc
	ldr	r5, =iwram_3001e44
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L36bc
	ldr	r3, =iwram_3001d18
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L36a8
	ldr	r2, =gPtrs
	mov	r1, #0xe0
	add	r2, #0xd0
	ldr	r0, [r2]
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000100
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L36a8:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_3001ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	UploadPalette
	mov	r3, #0
	strb	r3, [r5]
.L36bc:
	ldr	r1, =iwram_3001cfc
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L36cc
	mov	r3, #0
	str	r3, [r1]
	bl	_call_via_r2
.L36cc:
	mov	r0, #0x90
	lsl	r0, #3
	bl	RunTasks
	ldr	r3, =REG_KEYINPUT
	ldrh	r2, [r3]
	ldr	r3, .L3708	@ 0x3ff
	ldr	r4, =gKeyHeld
	mov	r0, r3
	eor	r0, r2
	ldr	r3, [r4]
	mov	r2, r0
	bic	r2, r3
	ldr	r3, =gKeyPress
	ldr	r1, =iwram_3001af8
	str	r2, [r3]
	ldr	r3, [r1]
	orr	r3, r2
	str	r3, [r1]
	str	r0, [r4]
	cmp	r0, #0
	bne	.L3768
	ldr	r3, =iwram_3001b00
	mov	r2, #0x13
	str	r2, [r3]
	ldr	r3, =gKeyRepeat
	ldr	r1, =iwram_3001d0c
	str	r0, [r3]
	b	.L3792

	.align	2, 0
.L3708:
	.word	0x3ff
	.pool

.L3768:
	ldr	r1, =iwram_3001d0c
	ldr	r2, =0xffff
	ldr	r3, [r1]
	eor	r3, r2
	ldr	r2, [r4]
	and	r2, r3
	cmp	r2, #0
	beq	.L3786
	ldr	r3, =iwram_3001b00
	mov	r2, #1
	neg	r2, r2
	str	r2, [r3]
	ldr	r3, =gKeyRepeat
	str	r0, [r3]
	b	.L3792
.L3786:
	ldr	r2, =iwram_3001b00
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L3792
	sub	r3, #1
	str	r3, [r2]
.L3792:
	str	r0, [r1]
	ldr	r2, =iwram_3001800
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	ldr	r2, =iwram_3001ccc
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r2, =iwram_3001d28
	ldr	r3, .L37b4	@ 1
	strh	r3, [r2]
	bl	cam4aSoundMain
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L37b4:
	.word 1
.func_end VBlank

.thumb_func_start SetSoundFXMode
	push	{lr}
	cmp	r0, #4
	bls	.L37dc
	mov	r0, #0
.L37dc:
	mov	r3, #0x98
	mov	r2, r0
	mul	r2, r3
	ldr	r0, =Func_8000404
	ldr	r3, =REG_DMA3SAD
	add	r0, r2, r0
	ldr	r1, =Label_1348
	ldr	r2, =0x84000026
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end SetSoundFXMode

