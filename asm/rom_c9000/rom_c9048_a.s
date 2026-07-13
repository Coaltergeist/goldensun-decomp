	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c9048  @ 0x080c9048
	push	{lr}
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc9080	@ 0
	strh	r3, [r2]
	ldr	r3, .Lc9084	@ 0x100e
	add	r2, #2
	strh	r3, [r2]
	ldr	r1, .Lc9088	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lc908c	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lc9090	@ 0x3537
	ldr	r1, =gDMATaskCount
	strh	r3, [r2]
	ldr	r3, .Lc9094	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	b	.Lc90ac

	.align	2, 0
.Lc9080:
	.word	0
.Lc9084:
	.word	0x100e
.Lc9088:
	.word	0xf0
.Lc908c:
	.word	0x1088
.Lc9090:
	.word	0x3537
.Lc9094:
	.word	0x3f21
	.pool

.Lc90ac:
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lc90d4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lc90d4:
	strh	r4, [r0]
	mov	r0, #1
	bl	WaitFrames
	pop	{r0}
	bx	r0
.func_end Func_80c9048
