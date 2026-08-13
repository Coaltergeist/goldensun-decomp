	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c10e8  @ 0x080c10e8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	sub	sp, #0x1c
	mov	r8, r0
	mov	r10, r1
	ldr	r5, [r3]
	cmp	r1, #0
	bne	.Lc1122
	ldr	r0, =Func_80c1084
	bl	StopTask
	ldr	r3, =REG_BLDY
	mov	r1, r10
	strh	r1, [r3]
	bl	Func_80c1054
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, =REG_BLDCNT
	mov	r1, #0
	bl	SetRegAnimDest
.Lc1122:
	cmp	r5, #0
	beq	.Lc11c4
	mov	r2, r10
	cmp	r2, #0
	beq	.Lc11c4
	mov	r1, #0xca
	lsl	r1, #3
	add	r3, r5, r1
	mov	r1, r10
	strh	r1, [r3]
	ldr	r1, =0x64e
	mov	r2, #0
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r3, =REG_BLDY
	strh	r2, [r3]
	mov	r2, #0x10
	sub	r3, #2
	strh	r2, [r3]
	mov	r5, sp
	mov	r1, r5
	mov	r0, #3
	bl	Func_80b6c08
	mov	r6, #0
	mov	r7, r0
	cmp	r6, r7
	bcs	.Lc1178
	mov	r2, #1
	mov	r11, r5
	mov	r9, r2
	mov	r5, #0
.Lc1162:
	mov	r3, r11
	ldrsh	r0, [r5, r3]
	mov	r2, r9
	mov	r1, r10
	and	r1, r2
	add	r6, #1
	bl	Func_80c0f98
	add	r5, #2
	cmp	r6, r7
	bcc	.Lc1162
.Lc1178:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lc11ac
	ldrh	r0, [r3]
	mov	r1, #2
	mov	r6, #0
	add	r8, r1
	cmp	r0, #0xff
	beq	.Lc11ac
	mov	r7, #1
	mov	r5, r7
	mov	r2, r10
	and	r5, r2
.Lc1192:
	mov	r1, r5
	eor	r1, r7
	add	r6, #1
	bl	Func_80c0f98
	cmp	r6, #0xd
	bhi	.Lc11ac
	mov	r3, r8
	ldrh	r0, [r3]
	mov	r1, #2
	add	r8, r1
	cmp	r0, #0xff
	bne	.Lc1192
.Lc11ac:
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, =REG_BLDCNT
	mov	r1, #0
	bl	SetRegAnimDest
	mov	r1, #0x90
	ldr	r0, =Func_80c1084
	lsl	r1, #3
	bl	StartTask
.Lc11c4:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c10e8
