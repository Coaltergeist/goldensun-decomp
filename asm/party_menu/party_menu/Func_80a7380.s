	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a7380  @ 0x080a7380
	push	{r5, r6, r7, lr}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	galloc_iwram
	ldr	r3, =iwram_3001e68
	ldr	r2, [r3]
	mov	r3, #1
	mov	r7, r0
	mov	r1, #0
	strh	r3, [r2, #4]
	mov	r0, #0
	mov	r3, #0x14
	mov	r2, #0x1e
	bl	_FillUIRegion
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	bl	Func_80a1090
	mov	r2, #0x82
	lsl	r2, #2
	add	r0, r7, r2
	bl	_Func_80796c4
	ldr	r2, =0x219
	add	r3, r7, r2
	strb	r0, [r3]
	mov	r1, #3
	mov	r0, #0
	mov	r2, #0
	mov	r3, #7
	bl	Func_80a8034
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #5
	mov	r0, #0xd
	bl	_CreateUIBox
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	str	r0, [r3]
	mov	r0, #0xa9
	lsl	r0, #1
	ldr	r1, .La7424	@ 0x1e
	mov	r2, #7
	add	r3, r7, r0
.La73ee:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La73ee
	mov	r3, #0x88
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #3
	strh	r3, [r2]
	bl	Func_80a7440
	mov	r6, r0
	ldr	r0, [r7, #0x24]
	bl	_Func_80164ac
	bl	Func_80a34c0
	ldr	r3, =iwram_3001e68
	ldr	r3, [r3]
	mov	r5, #0
	strh	r5, [r3, #4]
	mov	r0, #1
	bl	WaitFrames
	b	.La7430

	.align	2, 0
.La7424:
	.word	0x1e
	.pool

.La7430:
	mov	r0, #0x37
	bl	gfree
	mov	r0, r6
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a7380

