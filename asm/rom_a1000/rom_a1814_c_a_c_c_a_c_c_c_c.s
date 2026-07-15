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
	bl	Func_8004970
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
	bl	_Func_80170f8
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
	bl	_Func_80170f8
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

.thumb_func_start Func_80a2680  @ 0x080a2680
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r1, [sp, #0x20]
	mov	r1, #0
	str	r0, [sp, #0x24]
	str	r2, [sp, #0x1c]
	str	r1, [sp, #0x18]
	str	r1, [sp, #0x14]
	str	r1, [sp, #0x10]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r8, r1
	mov	r9, r3
	bl	.La3252
.La26aa:
	mov	r2, r8
	cmp	r2, #0xc
	bls	.La26b4
	bl	.La324e
.La26b4:
	lsl	r3, r2, #2
	ldr	r2, =.La26bc
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La26bc:
	.word	.La26f0
	.word	.La2750
	.word	.La28d8
	.word	.La308e
	.word	.La2b8e
	.word	.La2a30
	.word	.La29a2
	.word	.La2dcc
	.word	.La3252
	.word	.La27b2
	.word	.La31fc
	.word	.La3162
	.word	.La323c
.La26f0:
	mov	r2, #0xba
	lsl	r2, #1
	add	r2, r9
	mov	r3, #0
	strh	r3, [r2]
	bl	Func_80a4ee0
	bl	Func_80a4e44
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r1, =0xad8
	mov	r0, #0
	bl	Func_80a3cf8
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_8016498
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	Func_80a23c0
	mov	r0, #0
	bl	Func_80a355c
	mov	r3, #1
	mov	r7, r0
	neg	r3, r3
	cmp	r7, r3
	bne	.La2740
	mov	r2, #0
	str	r3, [sp, #0x10]
	mov	r3, #1
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x18]
.La2740:
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_8016498
	bl	Func_80a345c
	bl	.La31f6
.La2750:
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	bl	Func_80a3d6c
	mov	r3, #0
	mov	r8, r3
	cmp	r0, #0
	bne	.La2766
	bl	.La3252
.La2766:
	bl	Func_80a4ee0
	bl	Func_80a4e44
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r1, r9
	ldr	r2, [r1, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r1, =0xad9
	mov	r0, #0
	bl	Func_80a3cf8
	mov	r0, #0
	bl	Func_80a5788
	mov	r3, #1
	mov	r2, #0
	neg	r3, r3
	str	r0, [sp, #0x14]
	mov	r8, r2
	cmp	r0, r3
	bne	.La27a2
	bl	.La3252
.La27a2:
	ldr	r2, =0x25d
	mov	r3, #0xff
	add	r2, r9
	mov	r1, #9
	strb	r3, [r2]
	mov	r8, r1
	bl	.La3252
.La27b2:
	bl	Func_80a414c
	mov	r5, #1
	mov	r7, r0
	neg	r5, r5
	cmp	r7, r5
	bne	.La27cc
	mov	r2, #1
	ldr	r3, =0x222
	mov	r8, r2
	add	r3, r9
	mov	r1, r8
	strh	r1, [r3]
.La27cc:
	cmp	r7, #0
	bne	.La28a8
	mov	r2, #0xbc
	lsl	r2, #1
	add	r2, r9
	ldrh	r3, [r2]
	ldr	r0, =0x1ff
	and	r0, r3
	mov	r10, r2
	bl	_Func_808e990
	cmp	r0, #0
	beq	.La280c
	mov	r3, #1
	str	r3, [sp, #0x18]
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r1, [sp, #0x24]
	str	r3, [r1]
	ldr	r2, [sp, #0x20]
	str	r7, [r2]
	mov	r3, r10
	ldrh	r2, [r3]
	ldr	r3, =0x1ff
	ldr	r1, [sp, #0x1c]
	and	r3, r2
	mov	r2, #1
	str	r3, [r1]
	str	r2, [sp, #0x10]
	bl	.La3252
.La280c:
	ldr	r3, =0x21a
	mov	r2, r10
	add	r3, r9
	ldrb	r0, [r3]
	ldrh	r1, [r2]
	mov	r11, r3
	bl	Func_80a46b4
	mov	r6, r0
	cmp	r6, #1
	bne	.La2826
	mov	r3, #2
	mov	r8, r3
.La2826:
	cmp	r6, #2
	bne	.La287c
	bl	Func_80a32b8
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_80164ac
	ldr	r3, =0x25a
	add	r3, r9
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r2, r5
	add	r0, r3
	mov	r1, #0
	bl	Func_80a1d08
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r5, #0xe4
	mov	r3, #0xd
	mov	r1, r11
	lsl	r5, #1
	strb	r3, [r2, #5]
	ldrb	r0, [r1]
	add	r5, r9
	bl	_GetUnit
	mov	r2, #0
	mov	r1, r5
	bl	Func_80a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r5
	bl	Func_80a3e28
	mov	r2, #0
	mov	r8, r2
.La287c:
	add	r3, r6, #1
	cmp	r3, #1
	bhi	.La28a8
	mov	r3, #1
	str	r3, [sp, #0x18]
	mov	r1, r11
	ldrb	r3, [r1]
	ldr	r2, [sp, #0x24]
	str	r3, [r2]
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r1, [sp, #0x20]
	str	r3, [r1]
	mov	r3, r10
	ldrh	r2, [r3]
	ldr	r3, =0x1ff
	ldr	r1, [sp, #0x1c]
	and	r3, r2
	mov	r2, #1
	str	r3, [r1]
	str	r2, [sp, #0x10]
.La28a8:
	cmp	r7, #1
	bne	.La28b0
	mov	r3, #3
	mov	r8, r3
.La28b0:
	cmp	r7, #3
	bne	.La28b8
	mov	r1, #6
	mov	r8, r1
.La28b8:
	cmp	r7, #5
	bne	.La28c0
	mov	r2, #5
	mov	r8, r2
.La28c0:
	cmp	r7, #4
	bne	.La28c8
	mov	r3, #0xb
	mov	r8, r3
.La28c8:
	cmp	r7, #2
	beq	.La28d0
	bl	.La3252
.La28d0:
	mov	r1, #0xa
	mov	r8, r1
	bl	.La3252
.La28d8:
	mov	r5, #0x86
	lsl	r5, #1
	add	r5, r9
	bl	Func_80a345c
	bl	Func_80a4e68
	bl	Func_80a4e20
	ldr	r0, [r5]
	bl	_Func_8016498
	bl	Func_80a51d0
	ldr	r1, [r5]
	ldr	r0, =0xadb
	mov	r2, #0x10
	mov	r3, #0x10
	bl	_Func_801e7c0
	mov	r0, #0
	bl	Func_80a38d0
	mov	r5, #1
	neg	r5, r5
	cmp	r0, r5
	beq	.La29f2
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	mov	r7, #0
	bl	Func_80a3ce4
	cmp	r0, #0
	beq	.La2926
	mov	r7, #8
.La2926:
	bl	Func_80a32b8
	ldr	r3, =0x21b
	mov	r2, r9
	add	r3, r9
	mov	r6, r0
	ldrb	r1, [r3]
	ldr	r0, [r2, #0x24]
	mov	r3, r7
	mov	r2, #0
	bl	Func_80a112c
	cmp	r6, r5
	beq	.La296e
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_80164ac
	ldr	r3, =0x25a
	add	r3, r9
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldr	r3, =0xbef
	mov	r1, #0
	add	r0, r3
	mov	r2, r5
	bl	Func_80a1d08
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	bl	Func_80a4754
	mov	r1, #1
	mov	r8, r1
.La296e:
	ldr	r3, =0x21a
	mov	r5, #0xe4
	add	r3, r9
	lsl	r5, #1
	ldrb	r0, [r3]
	add	r5, r9
	bl	_GetUnit
	mov	r2, #0
	mov	r1, r5
	bl	Func_80a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r5
	bl	Func_80a3e28
	ldr	r2, =0x222
	mov	r3, #1
	add	r2, r9
	strh	r3, [r2]
	bl	.La3252
.La29a2:
	mov	r5, #0x86
	lsl	r5, #1
	add	r5, r9
	bl	Func_80a4e68
	bl	Func_80a4e20
	ldr	r0, [r5]
	bl	_Func_8016498
	bl	Func_80a51d0
	ldr	r1, [r5]
	mov	r3, #0x10
	ldr	r0, =0xadc
	mov	r2, #0x10
	bl	_Func_801e7c0
	mov	r0, #1
	bl	Func_80a38d0
	mov	r1, #1
	mov	r3, #4
	neg	r1, r1
	mov	r8, r3
	cmp	r0, r1
	beq	.La29dc
	bl	.La3252
.La29dc:
	ldr	r3, =0x21a
	mov	r2, #0xba
	add	r3, r9
	ldrb	r3, [r3]
	lsl	r2, #1
	add	r2, r9
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
.La29f2:
	mov	r2, #9
	mov	r8, r2
	bl	.La3252

	.pool_aligned

.La2a30:
	mov	r5, #0xbc
	lsl	r5, #1
	add	r5, r9
	bl	Func_80a345c
	ldrh	r3, [r5]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #0x10
	and	r3, r2
	mov	r6, #0
	cmp	r3, #0
	beq	.La2a6a
	ldrh	r3, [r5]
	lsr	r3, #11
	add	r5, r3, #1
	cmp	r5, #1
	ble	.La2a6a
	bl	Func_80a51d0
	mov	r0, #0
	mov	r1, r5
	mov	r2, #1
	bl	Func_80a4f08
	mov	r6, r0
.La2a6a:
	mov	r1, #1
	mov	r3, #9
	neg	r1, r1
	mov	r8, r3
	cmp	r6, r1
	bne	.La2a7a
	bl	.La3252
.La2a7a:
	ldr	r2, =0x21b
	mov	r3, #0
	add	r2, r9
	strb	r3, [r2]
	mov	r3, #0xbc
	ldr	r2, =0x1ff
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r8, r2
	mov	r5, #0x87
	mov	r1, r8
	lsl	r5, #2
	add	r5, r9
	and	r1, r3
	lsl	r3, r6, #11
	orr	r1, r3
	ldr	r3, [r5]
	mov	r0, #2
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_801bcd4
	ldr	r2, [r5]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r2, [r5]
	mov	r3, #0x78
	strh	r3, [r2, #6]
	ldr	r2, [r5]
	mov	r3, #0x1c
	strh	r3, [r2, #8]
	ldr	r0, [r5]
	bl	Func_80a17c4
	mov	r3, r9
	ldr	r0, [r3, #0x34]
	mov	r3, #0x60
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x48
	mov	r3, #0x78
	bl	_Func_80164d4
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	bl	_Func_8016498
	ldr	r0, [sp, #0x14]
	bl	Func_80a524c
	cmp	r0, #0
	bne	.La2b6e
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r7, [r3]
	mov	r0, r7
	bl	_GetUnit
	add	r0, r6, #1
	cmp	r0, #0
	ble	.La2b24
	mov	r5, r0
	mov	r6, r8
.La2afe:
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	mov	r0, r7
	bl	_Func_80788c4
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r0, r6
	and	r0, r3
	mov	r1, #1
	sub	r5, #1
	bl	_Func_8078ad0
	cmp	r5, #0
	bne	.La2afe
.La2b24:
	mov	r0, r7
	bl	_CalcStats
	bl	Func_80a4e44
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r1, #0
	bl	Func_80a3e88
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, #0xd
	strb	r2, [r3, #5]
	mov	r1, r9
	ldr	r3, [r1, #0x14]
	mov	r0, #1
	strb	r2, [r3, #5]
	bl	WaitFrames
	mov	r2, r9
	ldr	r0, [r2, #0x2c]
	bl	_Func_80164ac
	mov	r2, #0xd
	ldr	r0, =0xb7d
	mov	r1, #0xe
	bl	Func_80a1d08
	ldr	r2, =0x222
	mov	r3, #1
	add	r2, r9
	strh	r3, [r2]
	b	.La2b70
.La2b6e:
	mov	r3, #9
.La2b70:
	mov	r8, r3
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	bl	_CalcStats
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	bl	_Func_8091858
	b	.La3252
.La2b8e:
	mov	r5, #0xbc
	lsl	r5, #1
	add	r5, r9
	ldr	r7, =0x1ff
	ldrh	r3, [r5]
	mov	r0, r7
	mov	r1, #0
	and	r0, r3
	mov	r10, r1
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La2c6a
	ldr	r6, =0x21b
	ldrh	r3, [r5]
	add	r6, r9
	mov	r1, r7
	ldrb	r0, [r6]
	and	r1, r3
	bl	Func_80a3d9c
	mov	r5, r0
	cmp	r5, #0x1e
	bne	.La2bc8
	mov	r2, #1
	mov	r10, r2
.La2bc8:
	ldrb	r0, [r6]
	bl	Func_80a3d6c
	cmp	r0, #0xf
	bne	.La2bd6
	cmp	r5, #0
	beq	.La2c8a
.La2bd6:
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r1, r10
	lsr	r3, #11
	add	r3, #1
	cmp	r1, #0
	bne	.La2cb4
	lsl	r2, r3, #24
	asr	r1, r2, #24
	add	r3, r5, r1
	cmp	r3, #0x1e
	ble	.La2bf6
	mov	r3, #0x1e
	sub	r1, r3, r5
.La2bf6:
	mov	r3, #0x80
	lsl	r3, #17
	cmp	r2, r3
	ble	.La2c0a
	mov	r0, #0
	mov	r2, #0
	bl	Func_80a4f08
	mov	r6, r0
	b	.La2c0c
.La2c0a:
	mov	r6, #0
.La2c0c:
	mov	r1, #1
	neg	r1, r1
	cmp	r6, r1
	bne	.La2c16
	b	.La2df0
.La2c16:
	mov	r7, #0
	add	r6, #1
	cmp	r7, r6
	bge	.La2cb4
	ldr	r3, =0x5ff
	mov	r11, r3
.La2c22:
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r1, r11
	and	r1, r3
	bl	_GiveItemTo
	mov	r1, #1
	mov	r5, r0
	neg	r1, r1
	cmp	r5, r1
	beq	.La2c5e
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	bl	_Func_80788c4
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r9
	strh	r5, [r3]
	b	.La2c62
.La2c5e:
	mov	r2, #1
	mov	r10, r2
.La2c62:
	add	r7, #1
	cmp	r7, r6
	blt	.La2c22
	b	.La2cb4
.La2c6a:
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r1, =0x5ff
	and	r1, r3
	bl	_GiveItemTo
	mov	r5, #1
	mov	r6, r0
	neg	r5, r5
	cmp	r6, r5
	bne	.La2c90
.La2c8a:
	mov	r3, #7
	mov	r8, r3
	b	.La3252
.La2c90:
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r9
	strh	r6, [r3]
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	bl	_Func_80788c4
	mov	r6, r0
	cmp	r6, r5
	bne	.La2cb4
	mov	r1, #1
	mov	r10, r1
.La2cb4:
	ldr	r5, =0x21a
	ldr	r7, =0x21b
	add	r5, r9
	ldrb	r0, [r5]
	add	r7, r9
	bl	_CalcStats
	ldrb	r0, [r7]
	bl	_CalcStats
	ldrb	r0, [r5]
	bl	_Func_8078bf0
	ldrb	r0, [r7]
	bl	_Func_8078bf0
	mov	r2, r10
	mov	r6, #1
	cmp	r2, #0
	bne	.La2d0a
	ldrb	r3, [r7]
	mov	r2, #0xbc
	strb	r3, [r5]
	lsl	r2, #1
	add	r2, r9
	ldrh	r1, [r2]
	ldr	r3, =0x1ff
	and	r3, r1
	strh	r3, [r2]
	bl	Func_80a4e90
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	bl	_Func_8016498
	bl	Func_80a51d0
	mov	r0, #0
	bl	Func_80a5388
	mov	r6, r0
.La2d0a:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La2d18
	b	.La3252
.La2d18:
	mov	r1, #1
	ldrb	r0, [r7]
	bl	Func_80a3e88
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, r10
	cmp	r1, #1
	bne	.La2d40
	mov	r2, r9
	ldr	r0, [r2, #0x2c]
	bl	_Func_80164ac
	ldr	r0, =0xb85
	b	.La2d4e
.La2d40:
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_80164ac
	cmp	r6, #1
	bne	.La2d58
	ldr	r0, =0xb7f
.La2d4e:
	mov	r1, #0xf
	mov	r2, #0xe
	bl	Func_80a1d08
	b	.La3084
.La2d58:
	mov	r2, #0xbb
	ldrb	r3, [r7]
	lsl	r2, #1
	add	r2, r9
	mov	r0, r3
	ldrh	r1, [r2]
	mov	r2, #0
	bl	Func_80a3ef0
	ldr	r5, =0xb7c
	mov	r2, #0xe
	mov	r0, r5
	mov	r1, #0xf
	bl	Func_80a1d08
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r0, [r3]
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.La2d8e
	b	.La3084
.La2d8e:
	mov	r0, #0x67
	bl	_PlaySound
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_80164ac
	add	r0, r5, #7
	mov	r1, #0xe
	mov	r2, #0xe
	bl	Func_80a1d08
	b	.La3084

	.pool_aligned

.La2dcc:
	mov	r3, #0
	mov	r10, r3
	bl	Func_80a4ee0
	bl	Func_80a4e44
	ldr	r1, =0xadd
	mov	r0, #0
	bl	Func_80a3cf8
	mov	r0, #1
	bl	Func_80a5788
	mov	r1, #1
	neg	r1, r1
	str	r0, [sp, #0x14]
	cmp	r0, r1
	bne	.La2dfc
.La2df0:
	mov	r2, #6
	mov	r8, r2
	b	.La3252
.La2df6:
	mov	r3, #1
	mov	r10, r3
	b	.La2eea
.La2dfc:
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	bl	_GetUnit
	ldr	r3, =0x21b
	str	r0, [sp, #0xc]
	add	r3, r9
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r5, #0xa6
	lsl	r5, #1
	str	r0, [sp, #8]
	mov	r0, r5
	bl	Func_8004938
	mov	r11, r0
	mov	r0, r5
	bl	Func_8004938
	mov	r2, r5
	ldr	r1, [sp, #0xc]
	mov	r8, r0
	ldr	r6, =Func_8001af8
	mov	r0, r11
	bl	_call_via_r6
	mov	r2, r5
	mov	r0, r8
	ldr	r1, [sp, #8]
	bl	_call_via_r6
	add	r5, #0xce
	mov	r7, #0
	add	r5, r9
	b	.La2e5e

	.pool_aligned

.La2e58:
	add	r3, r7, #1
	lsl	r3, #24
	lsr	r7, r3, #24
.La2e5e:
	cmp	r7, #0x1d
	bhi	.La2e82
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrb	r0, [r5]
	ldrh	r1, [r3]
	bl	_Func_80788c4
	mov	r6, r0
	cmp	r6, #2
	beq	.La2e82
	mov	r1, #1
	neg	r1, r1
	cmp	r6, r1
	bne	.La2e58
	mov	r2, #1
	mov	r10, r2
.La2e82:
	add	r3, r7, #1
	lsl	r3, #24
	lsr	r7, r3, #24
	mov	r5, #0
.La2e8a:
	mov	r3, #0xbd
	lsl	r3, #1
	add	r3, r9
	ldrh	r2, [r3]
	ldr	r3, =0x200
	and	r3, r2
	cmp	r3, #0
	beq	.La2eb0
	ldr	r0, =0x1ff
	and	r0, r2
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La2eb0
	mov	r3, #1
	mov	r10, r3
.La2eb0:
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	bl	_Func_80788c4
	b	.La2ed0

	.pool_aligned

.La2ed0:
	mov	r6, r0
	cmp	r6, #2
	beq	.La2eea
	mov	r1, #1
	neg	r1, r1
	cmp	r6, r1
	bne	.La2ee0
	b	.La2df6
.La2ee0:
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #0x1d
	bls	.La2e8a
.La2eea:
	add	r3, r5, #1
	lsl	r3, #24
	ldr	r2, =0x5ff
	lsr	r5, r3, #24
	b	.La2f08

	.pool_aligned

.La2ef8:
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r9
	strh	r6, [r3]
	mov	r3, r7
	add	r3, #0xff
	lsl	r3, #24
	lsr	r7, r3, #24
.La2f08:
	cmp	r7, #0
	beq	.La2f34
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r1, r2
	and	r1, r3
	str	r2, [sp, #4]
	bl	_GiveItemTo
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	ldr	r2, [sp, #4]
	cmp	r6, r3
	bne	.La2ef8
	mov	r1, #1
	mov	r10, r1
.La2f34:
	ldr	r7, .La2f38	@ 0x5ff
	b	.La2f50

	.align	2, 0
.La2f38:
	.word	0x5ff
	.pool

.La2f40:
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	strh	r6, [r3]
	mov	r3, r5
	add	r3, #0xff
	lsl	r3, #24
	lsr	r5, r3, #24
.La2f50:
	cmp	r5, #0
	beq	.La2f78
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbd
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r1, r7
	and	r1, r3
	bl	_GiveItemTo
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	bne	.La2f40
	mov	r3, #1
	mov	r10, r3
.La2f78:
	mov	r0, #1
	bl	WaitFrames
	mov	r1, r10
	cmp	r1, #1
	bne	.La2fac
	mov	r2, #0xa6
	ldr	r0, [sp, #0xc]
	ldr	r5, =Func_8001af8
	mov	r1, r11
	lsl	r2, #1
	bl	_call_via_r5
	mov	r2, #0xa6
	mov	r1, r8
	ldr	r0, [sp, #8]
	lsl	r2, #1
	bl	_call_via_r5
	mov	r2, r9
	ldr	r0, [r2, #0x2c]
	bl	_Func_80164ac
	ldr	r0, =0xb84
	mov	r1, #0xf
	b	.La3066
.La2fac:
	ldr	r5, =0x21a
	ldr	r7, =0x21b
	add	r5, r9
	ldrb	r0, [r5]
	add	r7, r9
	bl	_CalcStats
	ldrb	r0, [r7]
	bl	_CalcStats
	ldrb	r0, [r5]
	bl	_Func_8078bf0
	ldrb	r0, [r7]
	bl	_Func_8078bf0
	bl	Func_80a4e68
	bl	Func_80a4e90
	bl	Func_80a3480
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	bl	_Func_8016498
	ldrb	r3, [r7]
	strb	r3, [r5]
	mov	r5, #0xbc
	lsl	r5, #1
	add	r5, r9
	ldrh	r2, [r5]
	ldr	r3, =0x1ff
	and	r3, r2
	strh	r3, [r5]
	bl	Func_80a51d0
	mov	r0, #0
	bl	Func_80a5388
	mov	r6, r0
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La3078
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_80164ac
	bl	Func_80a4e20
	ldrb	r0, [r7]
	mov	r1, #1
	bl	Func_80a3e88
	cmp	r6, #0
	bne	.La306e
	mov	r2, #0xbb
	ldrb	r3, [r7]
	lsl	r2, #1
	add	r2, r9
	mov	r0, r3
	ldrh	r1, [r2]
	mov	r2, #0
	bl	Func_80a3ef0
	ldr	r6, =0xb7c
	mov	r2, #0xe
	mov	r0, r6
	mov	r1, #0xf
	bl	Func_80a1d08
	ldrh	r0, [r5]
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La3078
	mov	r0, #0x67
	bl	_PlaySound
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_80164ac
	add	r0, r6, #7
	mov	r1, #0xe
.La3066:
	mov	r2, #0xe
	bl	Func_80a1d08
	b	.La3078
.La306e:
	ldr	r0, =0xb81
	mov	r1, #0xf
	mov	r2, #0xe
	bl	Func_80a1d08
.La3078:
	mov	r0, r8
	bl	free
	mov	r0, r11
	bl	free
.La3084:
	bl	_Func_8091858
	mov	r2, #0
	mov	r8, r2
	b	.La3252
.La308e:
	ldr	r7, =0x21a
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	add	r7, r9
	ldrh	r1, [r3]
	ldrb	r0, [r7]
	mov	r10, r3
	bl	_EquipItem
	mov	r5, #1
	mov	r1, #1
	mov	r6, r0
	neg	r5, r5
	mov	r8, r1
	cmp	r6, r5
	bne	.La30b2
	b	.La3252
.La30b2:
	mov	r2, #2
	neg	r2, r2
	cmp	r6, r2
	bne	.La30d2
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_80164ac
	mov	r1, #0
	ldr	r0, =0xb82
	mov	r2, r5
	bl	Func_80a1d08
	mov	r1, #1
	mov	r8, r1
	b	.La3252
.La30d2:
	ldrb	r0, [r7]
	bl	_CalcStats
	ldrb	r0, [r7]
	bl	_Func_8078bf0
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r5, #0xe4
	mov	r3, #0xd
	lsl	r5, #1
	strb	r3, [r2, #5]
	add	r5, r9
	ldrb	r0, [r7]
	bl	_GetUnit
	mov	r2, #0
	mov	r1, r5
	bl	Func_80a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r5
	bl	Func_80a3e28
	mov	r0, #1
	bl	WaitFrames
	ldrb	r3, [r7]
	mov	r2, r10
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_80164ac
	ldr	r5, =0xb7c
	mov	r2, #8
	mov	r0, r5
	mov	r1, #0xf
	bl	Func_80a1d08
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r0, [r3]
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La31f6
	mov	r0, #0x67
	bl	_PlaySound
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_80164ac
	add	r0, r5, #7
	mov	r1, #0xe
	mov	r2, #8
	bl	Func_80a1d08
	b	.La31f6
.La3162:
	ldr	r6, =0x21a
	add	r6, r9
	ldrb	r0, [r6]
	bl	_GetUnit
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrh	r2, [r3]
	lsl	r2, #1
	add	r2, #0xd8
	ldrh	r1, [r0, r2]
	mov	r8, r3
	ldr	r3, =0xfdff
	and	r3, r1
	strh	r3, [r0, r2]
	ldrb	r0, [r6]
	bl	_CalcStats
	ldrb	r0, [r6]
	bl	_Func_8078bf0
	mov	r1, r9
	ldr	r2, [r1, #0x14]
	mov	r3, #0
	mov	r5, #0xe4
	mov	r10, r3
	lsl	r5, #1
	mov	r3, #0xd
	strb	r3, [r2, #5]
	add	r5, r9
	ldrb	r0, [r6]
	bl	_GetUnit
	mov	r2, #0
	mov	r1, r5
	bl	Func_80a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r5
	mov	r5, #0x97
	bl	Func_80a3e28
	lsl	r5, #2
	mov	r0, #1
	bl	WaitFrames
	add	r5, r9
	mov	r3, #1
	strb	r3, [r5]
	ldrb	r3, [r6]
	mov	r2, r8
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
	mov	r3, r10
	strb	r3, [r5]
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_80164ac
	mov	r2, #8
	ldr	r0, =0xb80
	mov	r1, #0xe
	bl	Func_80a1d08
	bl	_Func_8091858
.La31f6:
	mov	r2, #1
	mov	r8, r2
	b	.La3252
.La31fc:
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r0, [r3]
	bl	Func_80a4800
	mov	r1, r9
	ldr	r0, [r1, #0x24]
	bl	_Func_8016498
	ldr	r3, =0x21a
	mov	r2, #0xba
	add	r3, r9
	ldrb	r3, [r3]
	lsl	r2, #1
	add	r2, r9
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r1, #9
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r8, r1
	b	.La3252
.La323c:
	mov	r0, #0
	mov	r1, #0x1e
	mov	r2, #0
	bl	Func_80a4f08
	mov	r3, #1
	mov	r6, r0
	mov	r8, r3
	b	.La3252
.La324e:
	mov	r1, #1
	str	r1, [sp, #0x18]
.La3252:
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.La3268
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La3268
	bl	.La26aa
.La3268:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La327a
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0x10]
.La327a:
	ldr	r0, [sp, #0x10]
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a2680

.thumb_func_start Func_80a32b8  @ 0x080a32b8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xba
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r0, [r3]
	ldr	r3, =0x21a
	add	r2, #0xa7
	add	r7, r5, r3
	add	r2, r5
	ldrb	r1, [r7]
	mov	r8, r2
	ldrb	r2, [r2]
	bl	Func_80a9e48
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	cmp	r6, r3
	bne	.La3312
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r0, [r5, #0x2c]
	bl	_Func_80164ac
	ldr	r2, =0x25a
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r2, r6
	add	r0, r3
	mov	r1, r6
	bl	Func_80a1d08
	ldr	r3, =0x222
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	mov	r0, r6
	b	.La3332
.La3312:
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	Func_80aa448
	ldrb	r0, [r7]
	bl	_CalcStats
	mov	r3, r8
	ldrb	r0, [r3]
	bl	_CalcStats
	mov	r0, #1
.La3332:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a32b8

	.section .text.after_a3354, "ax", %progbits
