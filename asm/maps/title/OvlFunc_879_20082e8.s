	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_879_20082e8
	push	{r5, r6, r7, lr}
	bl	OvlFunc_879_2008454
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r2, =.L68c
	ldr	r3, .L31c	@ 0
	mov	r0, #0
	strh	r3, [r2]
	bl	OvlFunc_879_20081c0
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_879_2008238
	bl	__StartTask
	ldr	r7, =gDMATaskCount
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r7]
	cmp	r2, #0x1f
	bgt	.L350
	b	.L330

	.align	2, 0
.L31c:
	.word	0
	.pool

.L330:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r7
	strh	r2, [r7]
	mov	r2, #0xaa
	add	r3, #4
	lsl	r2, #5
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L350:
	strh	r1, [r5]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r7]
	cmp	r2, #0x1f
	bgt	.L37a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r7
	strh	r2, [r7]
	ldr	r2, =0x2fce
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L37a:
	strh	r1, [r5]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r7]
	cmp	r2, #0x1f
	bgt	.L3a4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r7
	add	r3, #4
	strh	r2, [r7]
	mov	r2, #0x10
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDY
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L3a4:
	strh	r1, [r5]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r7]
	cmp	r2, #0x1f
	bgt	.L3ce
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r7
	strh	r2, [r7]
	ldr	r2, =0x1010
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDALPHA
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L3ce:
	strh	r1, [r5]
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r6, #0
.L3d8:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r7]
	cmp	r3, #0x1f
	bgt	.L402
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #2
	add	r3, #1
	add	r2, r7, r2
	strh	r3, [r7]
	mov	r3, #0x10
	add	r2, #4
	sub	r3, r6
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDY
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L402:
	strh	r1, [r5]
	mov	r0, #3
	add	r6, #1
	bl	__WaitFrames
	cmp	r6, #0x10
	ble	.L3d8
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	mov	r5, #0xe4
	mov	r3, #0
	str	r3, [r2]
	lsl	r5, #1
	mov	r3, #1
	str	r3, [r1, r5]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r2, [r6]
	mov	r3, #0x3c
	str	r3, [r2, r5]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_879_20082e8

