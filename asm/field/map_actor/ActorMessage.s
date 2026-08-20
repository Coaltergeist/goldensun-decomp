	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ActorMessage  @ 0x08092f84
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r7, r0
	mov	r9, r3
	bl	ShowActorMessage_NoWait
	mov	r10, r0
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r7
	bl	GetActorSpriteID
	mov	r5, #0
	mov	r8, r0
	cmp	r7, #7
	bgt	.L92fc0
	ldr	r6, =0xfff
	and	r6, r7
	mov	r0, r6
	bl	Func_808d394
	cmp	r0, #0
	bne	.L92fc0
	mov	r8, r6
.L92fc0:
	mov	r0, r8
	bl	_Func_8019e48
	mov	r3, #0xe6
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L9301e
	b	.L93014
.L92fd4:
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0x96
	add	r5, #1
	lsl	r3, #2
	cmp	r5, r3
	bhi	.L93010
	ldr	r1, =gKeyHeld
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	beq	.L93014
	ldr	r2, [r1]
	add	r3, #0xfc
	and	r2, r3
	cmp	r2, #0
	beq	.L93014
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L93014
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L93014
.L93010:
	bl	_Func_8019a54
.L93014:
	mov	r0, r10
	bl	_Func_8017394
	cmp	r0, #0
	beq	.L92fd4
.L9301e:
	mov	r0, #1
	bl	WaitFrames
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end ActorMessage

