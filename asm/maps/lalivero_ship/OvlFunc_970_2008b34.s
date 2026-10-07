	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_2008b34
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #8
	mov	r10, r3
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r1, #0x9c
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x8c
	bl	__PlaySound
	mov	r6, #0xa0
	mov	r5, #0
	lsl	r6, #19
.Lm970_b76:
	lsl	r3, r5, #11
	lsl	r2, r5, #5
	orr	r3, r2
	strh	r3, [r6]
	mov	r0, #0xa
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0xf
	ble	.Lm970_b76
	mov	r2, #0xfc
	mov	r3, #0xa0
	lsl	r2, #7
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r2, =0x1010
	mov	r7, #0x81
	ldr	r6, =REG_BLDALPHA
	mov	r8, r2
	lsl	r7, #4
	mov	r5, #2
.Lm970_ba0:
	mov	r0, #0xd4
	bl	__PlaySound
	mov	r3, r8
	strh	r3, [r6]
	mov	r0, #3
	bl	__CutsceneWait
	strh	r7, [r6]
	mov	r0, #0x41
	sub	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0
	bge	.Lm970_ba0
	ldr	r3, =gOvl_020097e8
	mov	r5, #1
	str	r5, [r3]
	ldr	r3, =.Lm970_17ec
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_970_2008194
	mov	r8, r2
	bl	__StartTask
	ldr	r6, =.Lm970_17f8
	mov	r0, #0x14
	str	r5, [r6]
	bl	__CutsceneWait
	mov	r0, #0xa3
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r5, [r6]
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	ldr	r3, =.Lm970_17f4
	mov	r2, r8
	mov	r1, #0xc8
	mov	r6, #0xa0
	mov	r5, #0xb8
	str	r2, [r3]
	ldr	r0, =OvlFunc_970_2008168
	lsl	r1, #4
	lsl	r6, #1
	lsl	r5, #1
	ldr	r7, =0x3333
	bl	__StartTask
	add	r6, r10
	mov	r2, #0
	add	r5, r10
.Lm970_c44:
	ldr	r3, [r6]
	add	r3, r7
	str	r3, [r6]
	ldr	r3, [r5]
	add	r3, r7
	add	r2, r7
	str	r3, [r5]
	mov	r0, #1
	str	r2, [sp]
	bl	__WaitFrames
	ldr	r3, =0x59ffff
	ldr	r2, [sp]
	cmp	r2, r3
	ble	.Lm970_c44
	ldr	r0, =OvlFunc_970_2008168
	bl	__StopTask
	ldr	r0, =REG_BG3CNT
	ldr	r3, =.Lm970_17f8
	ldr	r2, =0xfffc
	ldrh	r1, [r0]
	mov	r6, #0
	ldr	r4, .Lm970_cac	@ 3
	str	r6, [r3]
	mov	r3, r2
	mov	r5, sp
	and	r3, r1
	orr	r3, r4
	add	r5, #6
	strh	r3, [r5]
	strh	r3, [r0]
	sub	r0, #2
	ldrh	r1, [r0]
	mov	r3, r2
	and	r3, r1
	orr	r3, r4
	strh	r3, [r5]
	ldr	r1, =REG_BG1CNT
	strh	r3, [r0]
	ldrh	r3, [r1]
	and	r2, r3
	ldr	r3, .Lm970_cb0	@ 2
	orr	r2, r3
	ldr	r3, =gOvl_020097e8
	mov	r0, #0x90
	strh	r2, [r5]
	str	r6, [r3]
	strh	r2, [r1]
	lsl	r0, #1
	b	.Lm970_cec

	.align	2, 0
.Lm970_cac:
	.word	3
.Lm970_cb0:
	.word	2
	.pool

.Lm970_cec:
	bl	__PlaySound
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x91
	bl	__PlaySound
	mov	r2, #0xbf
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r5, #0
	ldr	r6, =REG_BLDY
.Lm970_d06:
	strh	r5, [r6]
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0x10
	ble	.Lm970_d06
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	ldr	r2, =.Lm970_1804
	str	r3, [r2]
	mov	r3, #0xb8
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	ldr	r2, =.Lm970_1808
	str	r3, [r2]
	ldr	r2, =.Lm970_17fc
	mov	r3, #1
	str	r3, [r2]
	ldr	r6, =REG_BLDY
	mov	r5, #0x10
.Lm970_d4a:
	strh	r5, [r6]
	mov	r0, #8
	sub	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0
	bge	.Lm970_d4a
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_970_20080b0
	bl	__StartTask
	mov	r0, #0x50
	bl	__PlaySound
	bl	__Func_80b04c4
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
	bl	OvlFunc_970_2008430
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008b34

