	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a24d0  @ 0x080a24d0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x80
	lsl	r1, #6
	mov	r9, r1
	mov	r0, r9
	sub	sp, #0x10
	bl	alloc_ewram
	mov	r1, #0xa7
	mov	r7, r0
	lsl	r1, #4
	mov	r0, #0x37
	bl	galloc_iwram
	ldr	r2, =iwram_3001e68
	mov	r8, r2
	ldr	r2, [r2]
	mov	r3, #1
	mov	r1, #0
	mov	r5, r0
	strh	r3, [r2, #4]
	mov	r0, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_FillUIRegion
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	bl	Func_80a1090
	mov	r3, #0x82
	lsl	r3, #2
	add	r0, r5, r3
	bl	_Func_80796c4
	ldr	r1, =0x219
	add	r3, r5, r1
	mov	r2, #0
	mov	r1, #3
	strb	r0, [r3]
	mov	r3, #7
	mov	r0, #0
	bl	Func_80a3354
	bl	Func_80a5534
	mov	r0, #0xe
	bl	Func_80a2144
	ldr	r0, =0x6002500
	bl	_Func_80219c8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #3
	mov	r0, #0xd
	bl	_CreateUIBox
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r5, r2
	str	r0, [r3]
	bl	Func_80a1070
	ldr	r3, =Func_8001af8
	ldr	r1, =0x6004000
	mov	r11, r3
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r11
	ldr	r3, =Func_80008d8
	mov	r1, r9
	ldr	r2, =0x33333333
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #1
	bl	_Func_801e3c8
	bl	Func_80a2474
	add	r1, sp, #8
	add	r0, sp, #0xc
	add	r2, sp, #4
	bl	Func_80a2680
	mov	r10, r0
	bl	Func_80a2490
	mov	r1, r10
	cmp	r1, #1
	bne	.La25c2
	mov	r2, r8
	ldr	r0, [r2, #0x54]
	ldr	r1, [sp, #0xc]
	ldr	r3, [sp, #4]
	ldr	r2, =0x1ff
	lsl	r1, #10
	and	r3, r2
	sub	r2, #0x7f
	orr	r1, r3
	add	r3, r0, r2
	strh	r1, [r3]
	mov	r1, #0xba
	lsl	r1, #1
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r1, #0x26
	add	r2, r0, r1
	strh	r3, [r2]
.La25c2:
	mov	r6, r8
	ldr	r0, [r5, #0x24]
	add	r6, #0x24
	bl	_Func_80164ac
	ldr	r5, =0xea6
	ldr	r2, [r6]
	ldr	r3, .La2610	@ 1
	strb	r3, [r2, r5]
	bl	Func_80a34c0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_FillUIRegion
	bl	Func_80ae8dc
	mov	r0, #0x37
	bl	gfree
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0
	strh	r3, [r2, #4]
	bl	_Func_801e318
	mov	r0, #0
	bl	_Func_801e3c8
	mov	r2, r9
	mov	r1, r7
	ldr	r0, =0x6004000
	bl	_call_via_r11
	ldr	r3, [r6]
	b	.La2638

	.align	2, 0
.La2610:
	.word	1
	.pool

.La2638:
	mov	r1, #0
	add	r3, r5
	strb	r1, [r3]
	mov	r0, r7
	bl	free
	mov	r0, #1
	bl	WaitFrames
	bl	Func_80a1050
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_ClearUIRegion
	ldr	r3, [r6]
	mov	r2, #0
	add	r3, r5
	strb	r2, [r3]
	bl	_Func_8091858
	mov	r0, r10
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a24d0

