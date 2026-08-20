	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b424  @ 0x0801b424
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e98
	ldr	r5, [r3]
	mov	r6, r0
.L1b42c:
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0xe8
	lsl	r1, #2
	add	r3, r5, r1
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L1b42c
	ldr	r2, =0x3e7
	cmp	r6, r2
	beq	.L1b4bc
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1b45e
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, r5
	bl	Func_801b664
	b	.L1b474
.L1b45e:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1b474
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, r5
	bl	Func_801b810
.L1b474:
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b4bc
	mov	r1, #0xe7
	lsl	r1, #2
	add	r3, r5, r1
	add	r1, #2
	ldrh	r2, [r3]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r6, r2, r3
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r5, r2
	ldr	r3, [r3]
	ldrh	r3, [r3, #0xa]
	cmp	r3, #6
	bne	.L1b4b2
	cmp	r6, #0
	bne	.L1b4aa
	mov	r0, #0x70
	bl	_PlaySound
	b	.L1b4b8
.L1b4aa:
	mov	r0, #0x71
	bl	_PlaySound
	b	.L1b4b8
.L1b4b2:
	mov	r0, #0x70
	bl	_PlaySound
.L1b4b8:
	mov	r0, r6
	b	.L1b4d6
.L1b4bc:
	cmp	r6, #0
	beq	.L1b42c
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1b42c
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, #1
	neg	r0, r0
.L1b4d6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_801b424

