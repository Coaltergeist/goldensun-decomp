	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_SoundTest  @ 0x080f92fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r9, sp
	ldr	r2, =.Lfb794
	mov	r3, r9
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	mov	r0, #2
	mov	r7, #0
	mov	r11, r0
	ldr	r3, =gRAMBuildDate
	str	r7, [r3]
	mov	r1, #0x14
	mov	r2, #0
	mov	r10, r1
	mov	r8, r2
	mov	r6, r9
.Lf932a:
	mov	r3, r10
	cmp	r3, #0
	beq	.Lf9336
	mov	r4, #1
	neg	r4, r4
	add	r10, r4
.Lf9336:
	ldr	r2, =Label_12cc
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lf9346
	mov	r3, #0
	mov	r0, #0x14
	str	r3, [r2]
	mov	r10, r0
.Lf9346:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lf9362
	mov	r0, r11
	add	r0, #1
	mov	r1, #5
	bl	__modsi3
	mov	r11, r0
	bl	SetSoundFXMode
.Lf9362:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf9374
	ldr	r3, [r6]
	add	r3, #0xa
	str	r3, [r6]
.Lf9374:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lf9386
	ldr	r3, [r6]
	sub	r3, #0xa
	str	r3, [r6]
.Lf9386:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lf9396
	ldr	r3, [r6]
	add	r3, #1
	str	r3, [r6]
.Lf9396:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93a6
	ldr	r3, [r6]
	sub	r3, #1
	str	r3, [r6]
.Lf93a6:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93be
	cmp	r7, #0
	ble	.Lf93be
	mov	r1, #4
	neg	r1, r1
	sub	r6, #4
	add	r8, r1
	sub	r7, #1
.Lf93be:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93d6
	cmp	r7, #1
	bgt	.Lf93d6
	mov	r2, #4
	add	r6, #4
	add	r8, r2
	add	r7, #1
.Lf93d6:
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93ea
	mov	r3, r8
	mov	r4, r9
	ldr	r0, [r3, r4]
	bl	PlaySound
.Lf93ea:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93fa
	mov	r0, #0x13
	bl	PlaySound
.Lf93fa:
	ldr	r3, [r5]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lf940a
	mov	r0, #0x11
	bl	PlaySound
.Lf940a:
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lf941a
	ldr	r0, =0x121
	bl	PlaySound
.Lf941a:
	mov	r0, #1
	bl	WaitFrames
	b	.Lf932a
.func_end Debug_SoundTest

