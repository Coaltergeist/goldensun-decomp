	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5534  @ 0x080b5534
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0
	mov	r0, #0
	sub	sp, #0x80
	mov	r10, r2
	bl	_GetUnit
	mov	r5, sp
	mov	r6, r0
	mov	r1, r5
	ldr	r0, =0x903
	bl	_DecompressString2
	mov	r2, r10
	ldrh	r3, [r5, r2]
	strb	r3, [r6]
	lsl	r3, #16
	mov	r0, #0
	cmp	r3, #0
	beq	.Lb557a
	mov	r2, r6
	mov	r1, r5
.Lb5566:
	add	r0, #1
	cmp	r0, #0xd
	bgt	.Lb557a
	add	r1, #2
	ldrh	r3, [r1]
	add	r2, #1
	strb	r3, [r2]
	lsl	r3, #16
	cmp	r3, #0
	bne	.Lb5566
.Lb557a:
	mov	r3, #0
	strb	r3, [r6, #0xe]
	bl	_Func_8015f30
	mov	r0, #0x47
	bl	_PlaySound
	mov	r5, #0
	ldr	r2, =0x1341
	mov	r3, #0x80
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r3, =gState
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	mov	r2, #2
.Lb559c:
	strb	r2, [r3]
	bl	_Func_80198dc
	ldr	r0, =0x3e7
	mov	r1, #5
	bl	_Func_8019908
	mov	r0, #0
	mov	r1, #3
	bl	_Func_8019908
	mov	r0, #1
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, #1
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, #2
	mov	r1, #4
	bl	_Func_8019908
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb55da
	ldr	r3, =0x26fa
	mov	r1, #2
	add	r0, r5, r3
	mov	r2, #0xa
	b	.Lb55e2
.Lb55da:
	ldr	r3, =0xad0
	mov	r1, #2
	add	r0, r5, r3
	mov	r2, #2
.Lb55e2:
	mov	r3, #4
	bl	_Func_8017658
	mov	r7, r0
	mov	r0, #0xa
	bl	WaitFrames
	ldr	r2, =0x2850
	ldr	r3, =0x26fa
	ldr	r6, =gKeyRepeat
	sub	r2, r3
	mov	r8, r2
	b	.Lb5614
.Lb55fc:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb560e
	ldr	r3, [r6]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lb569a
.Lb560e:
	mov	r0, #1
	bl	WaitFrames
.Lb5614:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5630
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb562a
	mov	r3, #0
	mov	r10, r3
	b	.Lb5630
.Lb562a:
	mov	r2, #1
	add	r5, #1
	mov	r10, r2
.Lb5630:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb563c
	add	r5, #1
.Lb563c:
	ldr	r3, [r6]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5648
	sub	r5, #2
.Lb5648:
	ldr	r3, [r6]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5656
	mov	r3, #1
	mov	r10, r3
.Lb5656:
	ldr	r3, [r6]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5664
	mov	r2, #0
	mov	r10, r2
.Lb5664:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5672
	add	r5, #0xa
.Lb5672:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5680
	sub	r5, #0xa
.Lb5680:
	cmp	r5, #0
	bge	.Lb5686
	mov	r5, #0
.Lb5686:
	mov	r3, r8
	add	r3, #5
	cmp	r5, r3
	bcc	.Lb5690
	mov	r5, r3
.Lb5690:
	ldr	r3, [r6]
	ldr	r2, =0x3f2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb55fc
.Lb569a:
	mov	r0, #1
	bl	_Func_80197c4
	mov	r0, r7
	mov	r1, #1
	bl	_CloseUIBox
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0x12f8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	b	.Lb559c
.func_end Func_80b5534

