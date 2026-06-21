	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b04dc  @ 0x080b04dc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xe9
	ldr	r6, [r3]
	lsl	r2, #2
	add	r3, r6, r2
	mov	r5, r0
	ldrh	r0, [r3]
	bl	_GetSpriteVoice
	mov	r7, r0
	bl	_Func_8019a54
	ldr	r2, =0x3a9
	add	r3, r6, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #2
	bne	.Lb050a
	ldr	r3, =0xcc6
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb050a:
	cmp	r1, #0
	bne	.Lb0516
	ldr	r3, =0xcf1
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb0516:
	mov	r2, #0xeb
	lsl	r2, #2
	add	r3, r6, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb052e
	ldr	r3, =0xd4c
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb052e:
	lsl	r3, r7, #16
	mov	r2, #0x22
	orr	r3, r2
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	bl	_Func_8017658
	b	.Lb0546
.Lb0540:
	mov	r0, #1
	bl	WaitFrames
.Lb0546:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb0540
	mov	r0, #1
	bl	WaitFrames
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b04dc

.thumb_func_start Func_80b0574  @ 0x080b0574
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xe0
	ldr	r6, [r3]
	lsl	r2, #2
	add	r7, r6, r2
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]
	add	r2, #0x24
	mov	r10, r3
	add	r3, r6, r2
	mov	r5, r0
	ldrh	r0, [r3]
	bl	_GetSpriteVoice
	ldr	r2, =0x3a9
	add	r3, r6, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r8, r0
	cmp	r1, #2
	bne	.Lb05ae
	ldr	r3, =0xcc6
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05ae:
	cmp	r1, #0
	bne	.Lb05ba
	ldr	r3, =0xcf1
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05ba:
	mov	r2, #0xeb
	lsl	r2, #2
	add	r3, r6, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb05d2
	ldr	r3, =0xd4c
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05d2:
	ldr	r2, [r7]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	bl	_Func_8019a54
	mov	r2, r8
	lsl	r3, r2, #16
	mov	r2, #0x22
	orr	r3, r2
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	bl	_Func_8017658
	b	.Lb05f6
.Lb05f0:
	mov	r0, #1
	bl	WaitFrames
.Lb05f6:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb05f0
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xe0
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r2, r10
	strb	r2, [r3, #5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b0574

