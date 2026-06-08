	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80173ac
	ldr	r3, =iwram_3001e8c
	ldr	r2, [r3]
	ldr	r3, =0xeae
	add	r1, r2, r3
	mov	r3, #0xf
	strh	r3, [r1]
	ldr	r3, =0xea8
	add	r1, r2, r3
	mov	r3, #0xa
	strh	r3, [r1]
	ldr	r3, =0x12b0
	add	r1, r2, r3
	mov	r3, #9
	strh	r3, [r1]
	ldr	r1, =0xeac
	mov	r0, #0
	add	r3, r2, r1
	strh	r0, [r3]
	ldr	r3, =0xeaa
	add	r2, r3
	mov	r3, #1
	strh	r3, [r2]
	bx	lr
.func_end Func_80173ac

.thumb_func_start Func_80173f4
	push	{r5, lr}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0x5f
	ldr	r5, [r3]
	bl	UploadSpriteGFX
	ldr	r2, =0x12b8
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r3, =0x12b0
	add	r2, r5, r3
	mov	r3, #9
	strh	r3, [r2]
	ldr	r3, =0xea8
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	ldr	r2, =0xeac
	mov	r1, #0
	add	r3, r5, r2
	strh	r1, [r3]
	ldr	r3, =0xeae
	add	r2, r5, r3
	mov	r3, #0xf
	strh	r3, [r2]
	ldr	r2, =0x12b2
	add	r5, r2
	strh	r1, [r5]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_801789c
	bl	StartTask
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80173f4

.thumb_func_start Func_8017464
	push	{r5, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r5, [r3]
	cmp	r0, #0
	beq	.L17480
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x5f
	bl	UploadSpriteGFX
	ldr	r2, =0x12b8
	add	r3, r5, r2
	strh	r0, [r3]
.L17480:
	ldr	r3, =0x12b0
	add	r2, r5, r3
	mov	r3, #9
	strh	r3, [r2]
	ldr	r3, =0xea8
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	ldr	r2, =0xeac
	mov	r1, #0
	add	r3, r5, r2
	strh	r1, [r3]
	ldr	r3, =0xeae
	add	r2, r5, r3
	mov	r3, #0xf
	strh	r3, [r2]
	ldr	r2, =0x12b2
	add	r3, r5, r2
	strh	r1, [r3]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_801789c
	bl	StartTask
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8017464

.thumb_func_start Func_80174d8
	push	{r5, lr}
	ldr	r3, =iwram_3001ee4
	ldr	r5, [r3]
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L174ee
	mov	r1, #1
	bl	CloseUIBox
	mov	r3, #0
	str	r3, [r5]
.L174ee:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80174d8

.thumb_func_start PrintBattleText
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e8c
	ldr	r6, [r3]
	ldr	r7, [r3, #0x58]
	ldr	r3, =0xea5
	add	r5, r6, r3
	mov	r3, #2
	mov	r2, #0
	strb	r3, [r5]
	mov	r1, #1
	mov	r8, r2
	sub	sp, #4
	bl	BufferString
	mov	r2, #1
	mov	r9, r2
	mov	r3, r9
	mov	r2, #0xeb
	strb	r3, [r5]
	lsl	r2, #4
	lsl	r3, r0, #1
	add	r3, r2
	ldrh	r3, [r6, r3]
	mov	r10, r0
	cmp	r3, #0
	beq	.L17588
	ldr	r0, [r7]
	cmp	r0, #0
	bne	.L17564
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #0xf
	mov	r2, #0x1e
	mov	r3, #6
	mov	r0, #0
	bl	CreateUIBox
	mov	r3, r9
	mov	r5, r0
	str	r5, [r7]
	mov	r2, #0x1e
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0xf
	mov	r3, #6
	bl	Func_8017248
	mov	r2, r8
	str	r2, [r7, #8]
	b	.L17566
.L17564:
	mov	r5, r0
.L17566:
	cmp	r5, #0
	beq	.L17588
	ldr	r2, [r7, #8]
	mov	r0, r5
	mov	r1, r10
	bl	Func_8016670
	mov	r3, #0
	mov	r8, r0
	str	r0, [r7, #4]
	str	r3, [r7, #8]
	cmp	r0, #0
	bne	.L17588
	mov	r0, r5
	mov	r1, #1
	bl	CloseUIBox
.L17588:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end PrintBattleText

.thumb_func_start Func_80175a0
	push	{lr}
	bl	PrintBattleText
	b	.L175ae
.L175a8:
	mov	r0, #1
	bl	WaitFrames
.L175ae:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L175a8
	mov	r0, #1
	bl	WaitFrames
	pop	{r0}
	bx	r0
.func_end Func_80175a0

.thumb_func_start Func_80175c0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0x12f4
	ldr	r5, [r3]
	mov	r6, #0
	add	r3, r5, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r5, r2
	strh	r6, [r3]
	mov	r7, r0
	mov	r0, r1
	mov	r1, #1
	sub	sp, #0x10
	bl	BufferString
	mov	r2, #0xeb
	mov	r1, r0
	lsl	r3, r1, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r3, [r5, r3]
	mov	r0, #0
	cmp	r3, #0
	beq	.L17610
	cmp	r7, #0
	beq	.L17610
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	Func_80165d8
	mov	r6, r0
	mov	r0, #0
	cmp	r6, #0
	beq	.L17610
	mov	r0, r6
.L17610:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80175c0

