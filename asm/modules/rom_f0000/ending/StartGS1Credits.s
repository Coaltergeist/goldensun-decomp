	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartGS1Credits  @ 0x080f03f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001d18
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, =iwram_3001f58
	strb	r2, [r3]
	ldr	r3, =iwram_3001ac4
	strb	r2, [r3]
	ldr	r3, =iwram_3001d08
	strb	r2, [r3]
	bl	ClearTasks
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_80f03c0
	bl	StartTask
	mov	r3, #0x40
	mov	r5, #0x80
	lsl	r5, #19
	strh	r3, [r5]
	ldr	r0, =0x6007800
	bl	Func_80f037c
	ldr	r0, =0x600f800
	bl	Func_80f037c
	mov	r0, #0
	bl	Func_80f0254
	mov	r0, #1
	bl	Func_80f0254
	ldr	r2, =0x1f8a
	ldr	r3, =REG_BG2CNT
	strh	r2, [r3]
	ldr	r2, =0xf83
	add	r3, #2
	strh	r2, [r3]
	mov	r3, #0xe2
	lsl	r3, #5
	strh	r3, [r5]
	ldr	r2, =0x2844
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	bl	Func_80f0678
	mov	r0, #0x96
	lsl	r0, #1
	bl	WaitFrames
	mov	r1, #0
	mov	r8, r1
	ldr	r3, =REG_BLDALPHA
	ldr	r1, =.Lf0a5c
	mov	r2, #1
	mov	r11, r2
	mov	r10, r3
	mov	r9, r1
.Lf0472:
	mov	r3, r11
	mov	r5, r8
	and	r5, r3
	mov	r2, r9
	mov	r1, r5
	ldr	r0, [r2]
	eor	r1, r3
	bl	LoadGS1CreditsBG
	mov	r7, r5
	mov	r5, #0xf0
	mov	r6, #1
	lsl	r5, #4
.Lf048c:
	cmp	r7, #0
	beq	.Lf049e
	mov	r1, #0x10
	sub	r2, r1, r6
	lsl	r3, r6, #8
	orr	r3, r2
	mov	r2, r10
	strh	r3, [r2]
	b	.Lf04a6
.Lf049e:
	mov	r3, r5
	orr	r3, r6
	mov	r1, r10
	strh	r3, [r1]
.Lf04a6:
	mov	r0, #4
	bl	WaitFrames
	ldr	r2, =0xffffff00
	add	r6, #1
	add	r5, r2
	cmp	r6, #0x10
	ble	.Lf048c
	ldr	r0, =0x10b
	bl	WaitFrames
	mov	r1, #1
	add	r8, r1
	mov	r3, #4
	mov	r2, r8
	add	r9, r3
	cmp	r2, #0x20
	bls	.Lf0472
	ldr	r3, =REG_BLDCNT
	mov	r2, #0
	strh	r2, [r3]
	mov	r2, #0x82
	lsl	r2, #5
	sub	r3, #0x50
	strh	r2, [r3]
	bl	LoadStaticUIGFX
	bl	ClearVRAM
	ldr	r2, =iwram_3001d18
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end StartGS1Credits

