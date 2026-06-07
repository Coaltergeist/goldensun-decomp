	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801cf48
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ea0
	ldr	r1, =0x574
	ldr	r5, [r3]
	ldr	r2, =0x5a4
	add	r3, r5, r1
	add	r0, r5, r2
	ldrh	r6, [r3]
	bl	_Func_80b08b8
	ldr	r3, =0x5b4
	add	r0, r5, r3
	bl	_Func_80b0958
	ldr	r1, =0x5c4
	add	r0, r5, r1
	bl	_Func_80b0958
	cmp	r6, #0
	bne	.L1cf80
	ldr	r2, =0x57c
	add	r3, r5, r2
	ldrh	r2, [r3]
	mov	r3, #7
	and	r3, r2
	ldr	r2, =_FILE_e8
	add	r0, r3, r2
	b	.L1cf82
.L1cf80:
	ldr	r0, =_FILE_e8
.L1cf82:
	bl	GetFile
	ldr	r1, =0x5b4
	add	r3, r5, r1
	ldr	r3, [r3]
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #1
	ldrb	r0, [r3, #0xe]
	bl	Func_8003fa4
	cmp	r6, #1
	bne	.L1cfac
	ldr	r2, =0x57c
	add	r3, r5, r2
	ldrh	r2, [r3]
	mov	r3, #7
	and	r3, r2
	ldr	r2, =_FILE_e8
	add	r0, r3, r2
	b	.L1cfae
.L1cfac:
	ldr	r0, =_FILE_e8
.L1cfae:
	bl	GetFile
	ldr	r1, =0x5c4
	add	r3, r5, r1
	ldr	r3, [r3]
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #1
	ldrb	r0, [r3, #0xe]
	bl	Func_8003fa4
	cmp	r6, #1
	ble	.L1cfe0
	ldr	r1, =0x594
	add	r2, r6, r1
	ldrsb	r2, [r5, r2]
	lsl	r3, r6, #1
	add	r3, r6
	add	r3, r2
	ldr	r2, =0x5d4
	lsl	r3, #2
	add	r3, r2
	ldr	r0, [r5, r3]
	bl	Func_80217a4
.L1cfe0:
	ldr	r3, =0x57c
	add	r2, r5, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801cf48

.thumb_func_start Func_801d014
	push	{lr}
	mov	r1, #0xc5
	lsl	r1, #3
	mov	r0, #0x14
	sub	sp, #4
	bl	Func_80048f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500018a
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =ewram_2000240
	ldr	r0, =0x205
	add	r3, r1, r0
	ldr	r0, =0x594
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x599
	ldr	r0, =0x206
	add	r2, r4, r3
	mov	r3, #0x18
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x595
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x59a
	mov	r0, #0x83
	add	r2, r4, r3
	lsl	r0, #2
	mov	r3, #0xf
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x596
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r3, =0x59b
	ldr	r0, =0x20a
	add	r2, r4, r3
	mov	r3, #3
	strb	r3, [r2]
	add	r3, r1, r0
	ldr	r0, =0x597
	ldrb	r2, [r3]
	add	r3, r4, r0
	strb	r2, [r3]
	ldr	r2, =0x59c
	mov	r0, #2
	add	r3, r4, r2
	strb	r0, [r3]
	ldr	r3, =0x22a
	add	r1, r3
	ldrb	r2, [r1]
	mov	r1, #0xb3
	lsl	r1, #3
	add	r3, r4, r1
	strb	r2, [r3]
	ldr	r2, =0x59d
	mov	r1, #0xc8
	add	r4, r2
	strb	r0, [r4]
	lsl	r1, #4
	ldr	r0, =Func_801cf48
	bl	StartTask
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_801d014

