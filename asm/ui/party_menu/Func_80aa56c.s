	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80aa56c  @ 0x080aa56c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	galloc_iwram
	ldr	r3, =gState
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	ldrb	r2, [r3]
	mov	r9, r2
	mov	r2, #2
	strb	r2, [r3]
	ldr	r3, =iwram_3001e68
	mov	r2, #1
	ldr	r3, [r3]
	mov	r10, r2
	mov	r2, r10
	mov	r1, #0
	strh	r2, [r3, #4]
	mov	r7, r0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_FillUIRegion
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	bl	Func_80a1090
	ldr	r0, =0x2130
	bl	alloc_ewram
	mov	r2, #0xc2
	lsl	r2, #1
	add	r3, r7, r2
	str	r0, [r3]
	ldr	r6, =0x212c
	ldr	r3, =0x2128
	mov	r8, r0
	mov	r5, #0
	add	r3, r8
	add	r6, r8
	mov	r0, #0xb7
	str	r5, [r3]
	str	r5, [r6]
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.Laa62c
	ldr	r0, =0x16f
	bl	_GetFlag
	cmp	r0, #0
	bne	.Laa5fe
	ldr	r0, =0x171
	bl	_GetFlag
	cmp	r0, #0
	bne	.Laa5fa
	mov	r3, r10
	b	.Laa62a
.Laa5fa:
	mov	r3, #0xe
	b	.Laa62a
.Laa5fe:
	ldr	r0, =0x171
	bl	_GetFlag
	cmp	r0, #0
	bne	.Laa628
	mov	r3, #0x1b
	b	.Laa62a

	.pool_aligned

.Laa628:
	mov	r3, #0x1c
.Laa62a:
	str	r3, [r6]
.Laa62c:
	bl	Func_80a1070
	mov	r0, #1
	bl	_Func_801e3c8
	ldr	r0, =0x6002500
	bl	_Func_80219c8
	mov	r2, #0x82
	lsl	r2, #2
	add	r0, r7, r2
	bl	_Func_80796c4
	ldr	r2, =0x219
	add	r3, r7, r2
	strb	r0, [r3]
	bl	Func_80ae88c
	mov	r1, #3
	mov	r2, #0
	mov	r3, #7
	mov	r0, #0
	bl	Func_80a3354
	mov	r0, #0
	bl	Func_80aa544
	mov	r0, #0xe
	bl	Func_80a2144
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #5
	mov	r0, #0xd
	bl	_CreateUIBox
	mov	r2, #0xbc
	lsl	r2, #1
	mov	r3, #0x86
	add	r1, r7, r2
	lsl	r3, #1
	ldr	r2, .Laa6c0	@ 0
	add	r4, r7, r3
	mov	r3, #0xff
	str	r0, [r4]
	strh	r3, [r1]
	strb	r2, [r7, #0x1c]
	strb	r2, [r7, #0x1d]
	mov	r2, #0xba
	lsl	r2, #1
	mov	r5, #0
	add	r3, r7, r2
	add	r2, #2
	strh	r5, [r3]
	add	r3, r7, r2
	strh	r5, [r3]
	mov	r1, #0
	ldr	r0, [r4]
	bl	Func_80ad508
	bl	Func_80aa768
	bl	Func_80ad658
	bl	Func_80ae8dc
	mov	r0, #1
	bl	WaitFrames
	bl	Func_80a34c0
	b	.Laa6cc

	.align	2, 0
.Laa6c0:
	.word	0
	.pool

.Laa6cc:
	mov	r1, #0
	mov	r2, #0x1e
	mov	r0, #0
	mov	r3, #0x14
	bl	_FillUIRegion
	ldr	r3, =iwram_3001e68
	ldr	r3, [r3]
	strh	r5, [r3, #4]
	bl	_Func_801e318
	mov	r0, #0
	bl	_Func_801e3c8
	mov	r1, r8
	mov	r2, #0x80
	ldr	r5, =Func_8001af8
	add	r1, #0xa8
	lsl	r2, #6
	ldr	r0, =0x6004000
	bl	_call_via_r5
	ldr	r1, =0x20a8
	mov	r2, #0x80
	add	r1, r8
	ldr	r0, =0x5000080
	bl	_call_via_r5
	mov	r0, #1
	bl	WaitFrames
	bl	Func_80a1050
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_ClearUIRegion
	mov	r2, #0xc2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	free
	mov	r0, #0x37
	bl	gfree
	bl	_Func_8091858
	ldr	r3, =gState
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	mov	r2, r9
	mov	r0, #1
	strb	r2, [r3]
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80aa56c

