	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a5b94  @ 0x080a5b94
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #0x10
	bl	galloc_iwram
	ldr	r1, =iwram_3001e68
	ldr	r2, [r1]
	mov	r3, #1
	mov	r6, r0
	strh	r3, [r2, #4]
	mov	r0, #0
	mov	r3, #0x14
	mov	r2, #0x1e
	mov	r8, r1
	mov	r1, #0
	bl	_FillUIRegion
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	bl	Func_80a1090
	mov	r2, #0x82
	lsl	r2, #2
	add	r0, r6, r2
	bl	_Func_80796c4
	ldr	r1, =0x219
	add	r3, r6, r1
	strb	r0, [r3]
	mov	r1, #3
	mov	r0, #0
	mov	r2, #0
	mov	r3, #7
	bl	Func_80a3354
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #3
	mov	r0, #0xd
	bl	_CreateUIBox
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r6, r2
	str	r0, [r3]
	mov	r0, #0xe
	bl	Func_80a2144
	ldr	r0, =0x6002500
	bl	_Func_80219c8
	bl	Func_80a2474
	add	r0, sp, #0xc
	add	r1, sp, #8
	add	r2, sp, #4
	bl	Func_80a5cc0
	mov	r7, r0
	bl	Func_80a2490
	cmp	r7, #1
	bne	.La5c46
	mov	r1, #0xbc
	lsl	r1, #1
	mov	r3, r8
	ldr	r5, [r3, #0x54]
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	ldr	r3, [sp, #0xc]
	ldr	r2, [sp, #4]
	mov	r1, #0xbf
	lsl	r3, #10
	lsl	r1, #1
	orr	r2, r3
	add	r3, r5, r1
	strh	r2, [r3]
.La5c46:
	ldr	r0, [r6, #0x24]
	mov	r6, r8
	add	r6, #0x24
	bl	_Func_80164ac
	ldr	r5, =0xea6
	ldr	r2, [r6]
	ldr	r3, .La5c90	@ 1
	strb	r3, [r2, r5]
	bl	Func_80a34c0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_FillUIRegion
	mov	r0, #0x37
	bl	gfree
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0
	strh	r3, [r2, #4]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_ClearUIRegion
	ldr	r3, [r6]
	ldr	r2, .La5c94	@ 0
	add	r3, r5
	b	.La5cac

	.align	2, 0
.La5c90:
	.word	1
.La5c94:
	.word	0
	.pool

.La5cac:
	strb	r2, [r3]
	bl	_Func_8091858
	mov	r0, r7
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5b94

