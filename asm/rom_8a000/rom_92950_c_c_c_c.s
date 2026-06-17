	.include "macros.inc"

.thumb_func_start Func_80931ec  @ 0x080931ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r3
	ldr	r3, =iwram_3001ebc
	ldr	r6, [sp, #0x24]
	mov	r10, r2
	mov	r8, r1
	ldr	r5, [r3]
	bl	Func_8092ba8
	mov	r11, r0
	mov	r0, r6
	bl	Func_8092ba8
	mov	r7, r0
	mov	r0, r11
	bl	GetSpriteVoice
	mov	r2, #0xec
	lsl	r2, #1
	add	r5, r2
	mov	r3, r0
	ldrh	r0, [r5]
	add	r2, r0, #1
	lsl	r0, #16
	strh	r2, [r5]
	mov	r1, r8
	mov	r2, r10
	lsl	r3, #16
	asr	r0, #16
	bl	_Func_8017658
	mov	r2, r9
	ldr	r3, [sp, #0x20]
	mov	r1, #0
	mov	r10, r0
	mov	r0, r11
	bl	_Func_8019da8
	mov	r0, r7
	bl	GetSpriteVoice
	mov	r3, r0
	ldrh	r0, [r5]
	add	r2, r0, #1
	strh	r2, [r5]
	lsl	r0, #16
	ldr	r1, [sp, #0x28]
	ldr	r2, [sp, #0x2c]
	lsl	r3, #16
	asr	r0, #16
	bl	_Func_8017658
	mov	r1, #0
	mov	r8, r0
	ldr	r2, [sp, #0x30]
	mov	r0, r7
	ldr	r3, [sp, #0x34]
	bl	_Func_8019da8
	b	.L93276
.L93270:
	mov	r0, #1
	bl	WaitFrames
.L93276:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.L93270
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, =0x303
	ldr	r3, [r1]
	and	r3, r2
	cmp	r3, #0
	bne	.L932a2
	mov	r6, r1
	mov	r5, r2
.L93294:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.L93294
.L932a2:
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r11
	bl	_Func_8019e48
	mov	r0, r7
	bl	_Func_8019e48
	bl	_Func_8019a54
	mov	r0, #1
	bl	WaitFrames
	b	.L932c6
.L932c0:
	mov	r0, #1
	bl	WaitFrames
.L932c6:
	mov	r0, r10
	bl	_Func_8017394
	cmp	r0, #0
	beq	.L932c0
	b	.L932d8
.L932d2:
	mov	r0, #1
	bl	WaitFrames
.L932d8:
	mov	r0, r8
	bl	_Func_8017394
	cmp	r0, #0
	beq	.L932d2
	mov	r0, #1
	bl	WaitFrames
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80931ec

	.section .rodata
	.global .L9ed80

.L9ed80:
	.incrom 0x9ed80, 0x9ed84
