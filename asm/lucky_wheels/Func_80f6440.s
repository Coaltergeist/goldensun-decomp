	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f6440  @ 0x080f6440
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f04
	ldr	r7, [r3]
	sub	r3, #0x18
	ldr	r3, [r3]
	mov	r1, #0x80
	sub	sp, #0x28
	lsl	r1, #3
	mov	r0, #0
	str	r3, [sp, #0x24]
	str	r1, [sp, #0x1c]
	str	r0, [sp, #0x20]
	bl	Random
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldrh	r2, [r3, #0xa]
	mov	r2, #0x9b
	lsl	r2, #3
	add	r0, r7, r2
	ldr	r1, =REG_BLDY
	ldr	r2, =0xa2600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =gKeyHeld
	mov	r5, r7
	ldr	r4, [r3]
	add	r5, #0x9c
	ldrh	r0, [r5]
	lsl	r4, #16
	ldr	r1, [r3]
	mov	r6, r7
	lsr	r3, r4, #16
	bic	r3, r0
	add	r6, #0xa0
	strh	r3, [r6]
	mov	r3, #0x9e
	add	r3, r7
	mov	r2, #0xf0
	mov	r8, r3
	and	r1, r2
	mov	r0, r8
	strh	r1, [r0]
	ldrh	r3, [r5]
	and	r2, r3
	cmp	r2, r1
	bne	.Lf650c
	mov	r1, r7
	add	r1, #0xa2
	ldrh	r2, [r1]
	mov	r3, r2
	cmp	r3, #0xc
	bls	.Lf64ca
	mov	r3, #0xc
	strh	r3, [r1]
	ldr	r2, .Lf64e8	@ 0xc
.Lf64ca:
	mov	r3, r2
	cmp	r3, #0
	bne	.Lf64d6
	mov	r3, #4
	strh	r3, [r1]
	b	.Lf6514
.Lf64d6:
	ldr	r0, =0xffff
	add	r3, r2, r0
	strh	r3, [r1]
	add	r1, sp, #0x20
	ldrh	r1, [r1]
	mov	r2, r8
	strh	r1, [r2]
	b	.Lf6514

	.align	2, 0
.Lf64e8:
	.word	0xc
	.pool

.Lf650c:
	mov	r2, r7
	add	r2, #0xa2
	mov	r3, #0xc
	strh	r3, [r2]
.Lf6514:
	lsr	r3, r4, #16
	strh	r3, [r5]
	ldr	r3, =iwram_3001d20
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #0
	beq	.Lf6526
	bl	.Lf6dc2
.Lf6526:
	mov	r2, r7
	add	r2, #0x8c
	str	r2, [sp, #0xc]
	str	r2, [sp, #0x18]
	ldr	r5, [r2]
	cmp	r5, #0
	beq	.Lf6536
	b	.Lf6670
.Lf6536:
	mov	r0, #0xe4
	bl	_Func_8078b60
	mov	r3, #0x98
	add	r3, r7
	ldr	r1, =0x4cc
	mov	r9, r0
	ldr	r0, [r3]
	mov	r11, r3
	mov	r4, r9
	add	r5, r7, r1
	mov	r3, r10
	sub	r0, r4, r0
	ldr	r2, [r5]
	mov	r1, #2
	str	r3, [sp]
	mov	r3, #0x40
	bl	_Func_801ea08
	mov	r4, r11
	mov	r3, #8
	ldr	r2, [r5]
	ldr	r0, [r4]
	mov	r1, #2
	str	r3, [sp]
	mov	r3, #0x40
	bl	_Func_801ea08
	ldrh	r2, [r6]
	mov	r3, #2
	and	r3, r2
	mov	r8, r11
	cmp	r3, #0
	beq	.Lf65a4
	ldr	r0, [sp, #0xc]
	ldr	r2, =ewram_200024c
	mov	r1, #0x90
	mov	r3, #0xa
	lsl	r1, #1
	str	r3, [r0]
	add	r2, r1
	mov	r3, #0xfe
	strb	r3, [r2]
	mov	r2, #0x99
	lsl	r2, #3
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r3, #0x94
	add	r3, r7
	mov	r8, r3
	bl	.Lf6e26
.Lf65a4:
	mov	r3, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lf65ca
	mov	r4, r11
	ldr	r3, [r4]
	cmp	r3, #3
	bgt	.Lf65c4
	cmp	r9, r3
	ble	.Lf65c4
	add	r3, #1
	str	r3, [r4]
	mov	r0, #0x6f
	bl	_PlaySound
	b	.Lf65ca
.Lf65c4:
	mov	r0, #0x71
	bl	_PlaySound
.Lf65ca:
	ldrh	r2, [r6]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf65fa
	mov	r0, r8
	ldr	r3, [r0]
	cmp	r3, #1
	ble	.Lf65f4
	sub	r3, #1
	str	r3, [r0]
	mov	r0, #0x6f
	bl	_PlaySound
	b	.Lf65fa

	.pool_aligned

.Lf65f4:
	mov	r0, #0x71
	bl	_PlaySound
.Lf65fa:
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lf6634	@ 0x3fd0
	strh	r3, [r2]
	ldr	r3, .Lf6638	@ 0x10
	add	r2, #2
	strh	r3, [r2]
	mov	r1, #1
	ldrh	r2, [r6]
	mov	r3, r1
	and	r3, r2
	cmp	r3, #0
	bne	.Lf6614
	b	.Lf6dd2
.Lf6614:
	ldr	r2, [sp, #0x18]
	str	r1, [r2]
	ldr	r3, [sp, #0x24]
	ldr	r4, =0x778c
	mov	r0, #0x99
	add	r2, r3, r4
	lsl	r0, #3
	mov	r3, #0
	str	r3, [r2]
	add	r3, r7, r0
	ldr	r0, [r3]
	bl	_CloseUIBox
	mov	r1, r8
	ldr	r3, [r1]
	b	.Lf6644

	.align	2, 0
.Lf6634:
	.word	0x3fd0
.Lf6638:
	.word	0x10
	.pool

.Lf6644:
	mov	r5, #0
	cmp	r3, #0
	beq	.Lf665a
.Lf664a:
	mov	r0, #0xe4
	bl	_Func_80789dc
	mov	r2, r8
	ldr	r3, [r2]
	add	r5, #1
	cmp	r5, r3
	bne	.Lf664a
.Lf665a:
	ldr	r4, =0x4cc
	add	r3, r7, r4
	ldr	r0, [r3]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r0, #0x98
	lsl	r0, #1
	bl	_PlaySound
	b	.Lf6dd2
.Lf6670:
	cmp	r5, #5
	beq	.Lf6676
	b	.Lf691c
.Lf6676:
	mov	r4, r7
	mov	r1, #0
	add	r4, #0xa8
	mov	r9, r1
	mov	r1, r4
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	ldrb	r3, [r7, #0x19]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lf66a0
	mov	r2, r7
	add	r2, #0x19
.Lf6692:
	add	r5, #1
	cmp	r5, #5
	beq	.Lf66a4
	add	r2, #0x1c
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.Lf6692
.Lf66a0:
	cmp	r5, #5
	bne	.Lf66a8
.Lf66a4:
	mov	r2, #1
	mov	r9, r2
.Lf66a8:
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf675a
	mov	r2, #0
	str	r2, [r1]
	ldr	r4, [sp, #0x24]
	ldr	r0, =0x778c
	add	r3, r4, r0
	str	r2, [r3]
	mov	r1, #0x94
	add	r1, r7
	ldr	r3, [r1]
	mov	r8, r1
	mov	r10, r8
	cmp	r3, #4
	bne	.Lf66f4
	mov	r3, r7
	add	r3, #0x90
	str	r2, [r1]
	str	r2, [r3]
	ldr	r3, [sp, #0x18]
	str	r2, [r3]
	mov	r2, r7
	mov	r6, #0
	mov	r0, #0
	mov	r1, #0xff
	add	r2, #0x18
.Lf66e2:
	ldrb	r3, [r2, #2]
	add	r6, #1
	orr	r3, r1
	strb	r0, [r2, #1]
	strb	r3, [r2, #2]
	add	r2, #0x1c
	cmp	r6, #5
	bne	.Lf66e2
	b	.Lf67ac
.Lf66f4:
	mov	r5, r7
	add	r5, #0x90
	ldr	r3, [r5]
	cmp	r3, #4
	bgt	.Lf671a
	ldr	r0, =0x131
	bl	_PlaySound
	ldr	r2, [r5]
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #2
	add	r3, #0x18
	add	r3, r7, r3
	ldrb	r2, [r3, #1]
	mov	r1, #1
	eor	r2, r1
	strb	r2, [r3, #1]
	b	.Lf67ac
.Lf671a:
	mov	r4, r9
	cmp	r4, #0
	bne	.Lf6752
	mov	r0, #0x98
	lsl	r0, #1
	bl	_PlaySound
	ldr	r0, [sp, #0x18]
	mov	r1, r9
	mov	r3, #1
	mov	r2, r7
	str	r3, [r0]
	mov	r6, #0
	str	r1, [r5]
	add	r2, #0x18
	mov	r1, #0xff
.Lf673a:
	ldrb	r3, [r2, #2]
	add	r6, #1
	orr	r3, r1
	strb	r3, [r2, #2]
	add	r2, #0x1c
	cmp	r6, #5
	bne	.Lf673a
	mov	r2, r10
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	b	.Lf67ac
.Lf6752:
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lf67ac
.Lf675a:
	mov	r3, r8
	ldrh	r2, [r3]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lf6780
	mov	r5, r7
	add	r5, #0x90
	ldr	r0, [r5]
	mov	r1, #6
	add	r0, #1
	bl	__modsi3
	str	r0, [r5]
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r4, r8
	ldrh	r2, [r4]
.Lf6780:
	mov	r3, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lf67a6
	mov	r5, r7
	add	r5, #0x90
	ldr	r0, [r5]
	mov	r1, #6
	add	r0, #5
	bl	__modsi3
	str	r0, [r5]
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #0x94
	add	r0, r7
	mov	r8, r0
	b	.Lf67ac
.Lf67a6:
	mov	r1, #0x94
	add	r1, r7
	mov	r8, r1
.Lf67ac:
	ldr	r2, [sp, #0x18]
	ldr	r2, [r2]
	mov	r10, r2
	cmp	r2, #5
	beq	.Lf67b8
	b	.Lf6906
.Lf67b8:
	mov	r3, r7
	add	r3, #0x90
	ldr	r2, [r3]
	cmp	r2, #5
	bne	.Lf6870
	mov	r3, r9
	cmp	r3, #0
	beq	.Lf682c
	mov	r4, #0xc3
	lsl	r4, #3
	add	r6, r7, r4
	ldr	r2, [r6]
	sub	r3, r2, #1
	cmp	r3, #1
	bls	.Lf6808
	mov	r0, #0x99
	lsl	r0, #3
	add	r5, r7, r0
	ldr	r0, [r5]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x13
	mov	r3, #4
	mov	r0, #0xb
	bl	_CreateUIBox
	mov	r1, r0
	str	r1, [r5]
	mov	r3, #0
	ldr	r0, =0x912
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r1, #0x98
	mov	r3, #1
	b	.Lf6868
.Lf6808:
	cmp	r2, #1
	beq	.Lf680e
	b	.Lf6dda
.Lf680e:
	mov	r2, #0x99
	lsl	r2, #3
	add	r3, r7, r2
	ldr	r1, [r3]
	ldr	r0, =0x913
	mov	r3, #8
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r3, #2
	str	r3, [r6]
	mov	r3, #0x98
	add	r3, r7
	mov	r11, r3
	b	.Lf6e26
.Lf682c:
	mov	r4, #0xc3
	lsl	r4, #3
	add	r6, r7, r4
	ldr	r3, [r6]
	cmp	r3, #3
	beq	.Lf6864
	mov	r0, #0x99
	lsl	r0, #3
	add	r5, r7, r0
	ldr	r0, [r5]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0xe
	mov	r3, #3
	mov	r0, #0x10
	bl	_CreateUIBox
	mov	r1, r0
	str	r1, [r5]
	ldr	r0, =0x90f
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.Lf6864:
	mov	r1, #0x98
	mov	r3, #3
.Lf6868:
	add	r1, r7
	str	r3, [r6]
	mov	r11, r1
	b	.Lf6e26
.Lf6870:
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #2
	add	r3, r7
	ldrb	r3, [r3, #0x19]
	cmp	r3, #0
	bne	.Lf68c2
	mov	r2, #0xc3
	lsl	r2, #3
	add	r6, r7, r2
	ldr	r3, [r6]
	cmp	r3, #4
	beq	.Lf68b6
	mov	r3, #0x99
	lsl	r3, #3
	add	r5, r7, r3
	ldr	r0, [r5]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x17
	bl	_CreateUIBox
	mov	r1, r0
	str	r1, [r5]
	ldr	r0, =0x90d
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.Lf68b6:
	mov	r4, #0x98
	mov	r3, #4
	add	r4, r7
	str	r3, [r6]
	mov	r11, r4
	b	.Lf6e26
.Lf68c2:
	mov	r0, #0xc3
	lsl	r0, #3
	add	r6, r7, r0
	ldr	r3, [r6]
	cmp	r3, #5
	beq	.Lf68fa
	mov	r1, #0x99
	lsl	r1, #3
	add	r5, r7, r1
	ldr	r0, [r5]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x17
	bl	_CreateUIBox
	mov	r1, r0
	str	r1, [r5]
	ldr	r0, =0x90e
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.Lf68fa:
	mov	r3, #0x98
	mov	r2, r10
	add	r3, r7
	str	r2, [r6]
	mov	r11, r3
	b	.Lf6e26
.Lf6906:
	mov	r4, #0x99
	lsl	r4, #3
	add	r3, r7, r4
	ldr	r0, [r3]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r0, #0x98
	add	r0, r7
	mov	r11, r0
	b	.Lf6e26
.Lf691c:
	cmp	r5, #2
	bne	.Lf6998
	mov	r4, r7
	add	r4, #0xa8
	ldr	r3, [r4]
	mov	r1, #0
	add	r3, #1
	str	r3, [r4]
	str	r1, [sp, #0x1c]
	cmp	r3, #0x3c
	beq	.Lf6934
	b	.Lf6de2
.Lf6934:
	ldr	r2, [sp, #0xc]
	mov	r3, #3
	str	r3, [r2]
	mov	r0, #0x5d
	str	r4, [sp, #8]
	bl	_PlaySound
	ldr	r3, [sp, #0x1c]
	ldr	r4, [sp, #8]
	ldr	r2, =REG_BLDCNT
	str	r3, [r4]
	ldr	r3, .Lf6968	@ 0x3f44
	strh	r3, [r2]
	ldr	r3, .Lf696c	@ 0x1010
	add	r2, #2
	strh	r3, [r2]
	ldr	r4, [sp, #0x24]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r3, r4, r0
	str	r5, [r3]
	add	r2, r4, r1
	mov	r3, #0x4b
	str	r3, [r2]
	b	.Lf6de2

	.align	2, 0
.Lf6968:
	.word	0x3f44
.Lf696c:
	.word	0x1010
	.pool

.Lf6998:
	cmp	r5, #3
	bne	.Lf69c4
	mov	r4, r7
	add	r4, #0xa8
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	mov	r4, #0
	str	r4, [sp, #0x1c]
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lf69b6
	b	.Lf6df0
.Lf69b6:
	ldr	r0, [sp, #0xc]
	mov	r3, #0xa
	str	r3, [r0]
	mov	r0, #0x70
	bl	_PlaySound
	b	.Lf6dfe
.Lf69c4:
	cmp	r5, #0xb
	bne	.Lf6a16
	mov	r3, #0xc3
	lsl	r3, #3
	add	r5, r7, r3
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lf69ea
	mov	r4, #0x99
	mov	r3, #1
	lsl	r4, #3
	str	r3, [r5]
	add	r3, r7, r4
	ldr	r1, [r3]
	ldr	r0, =0x90c
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
.Lf69ea:
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lf69f6
	b	.Lf6dfe
.Lf69f6:
	ldr	r0, [sp, #0xc]
	mov	r3, #5
	mov	r1, r10
	str	r3, [r0]
	str	r1, [r5]
	mov	r0, #0x70
	bl	_PlaySound
	mov	r2, #0x99
	lsl	r2, #3
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r1, #1
	bl	_CloseUIBox
	b	.Lf6e0c
.Lf6a16:
	cmp	r5, #0x14
	bne	.Lf6a4e
	mov	r4, r7
	add	r4, #0xa8
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	cmp	r3, #0x2d
	beq	.Lf6a2a
	b	.Lf6e0c
.Lf6a2a:
	ldr	r0, [sp, #0xc]
	mov	r1, #0x98
	mov	r2, #0x94
	mov	r3, #0xa
	add	r1, r7
	add	r2, r7
	str	r3, [r0]
	b	.Lf6e06
.Lf6a3a:
	bl	Random
	mov	r3, #3
	and	r0, r3
	add	r0, #4
	strb	r0, [r5, #2]
	ldr	r0, =0x133
	bl	_PlaySound
	b	.Lf6adc
.Lf6a4e:
	cmp	r5, #0xa
	bne	.Lf6a54
	b	.Lf6e1a
.Lf6a54:
	mov	r4, r7
	add	r4, #0xa8
	str	r4, [sp, #0x14]
	ldr	r3, [r4]
	cmp	r3, #4
	bne	.Lf6a8a
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x11
	mov	r2, #0xc
	mov	r3, #3
	mov	r0, #0x12
	str	r4, [sp, #8]
	bl	_CreateUIBox
	mov	r1, r0
	mov	r0, #0x99
	lsl	r0, #3
	add	r3, r7, r0
	str	r1, [r3]
	ldr	r0, =0x90a
	mov	r3, #0
	mov	r2, #0
	bl	_Func_801e7c0
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
.Lf6a8a:
	cmp	r3, #0x10
	bne	.Lf6a9c
	mov	r0, #0x99
	lsl	r0, #1
	str	r4, [sp, #8]
	bl	_PlaySound
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
.Lf6a9c:
	cmp	r3, #0x38
	ble	.Lf6adc
	ldr	r3, =0x778c
	ldr	r2, [sp, #0x24]
	add	r1, r2, r3
	ldr	r3, [r1]
	cmp	r3, #0x1f
	bgt	.Lf6ab8
	ldrh	r2, [r6]
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf6adc
.Lf6ab8:
	mov	r4, r10
	mov	r2, #1
	mov	r5, r7
	str	r4, [r1]
	mov	r6, #0
	neg	r2, r2
	add	r5, #0x18
.Lf6ac6:
	ldrb	r3, [r5, #1]
	cmp	r3, #0
	bne	.Lf6ad4
	mov	r3, #2
	ldrsb	r3, [r5, r3]
	cmp	r3, r2
	beq	.Lf6a3a
.Lf6ad4:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #5
	bne	.Lf6ac6
.Lf6adc:
	mov	r2, r7
	mov	r6, #0
	add	r2, #0x18
.Lf6ae2:
	mov	r3, #2
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2, #2]
	cmp	r3, #0
	ble	.Lf6af0
	sub	r3, r1, #1
	strb	r3, [r2, #2]
.Lf6af0:
	add	r6, #1
	add	r2, #0x1c
	cmp	r6, #5
	bne	.Lf6ae2
	mov	r2, r7
	mov	r1, #0
	mov	r6, #0
	mov	r4, #0xf
	add	r2, #0x18
	mov	r0, #0
.Lf6b04:
	ldrb	r3, [r2, #1]
	cmp	r3, #1
	beq	.Lf6b1a
	mov	r3, #2
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	bne	.Lf6b1c
	ldr	r3, [r0, r7]
	and	r3, r4
	cmp	r3, #8
	bne	.Lf6b1c
.Lf6b1a:
	add	r1, #1
.Lf6b1c:
	add	r6, #1
	add	r2, #0x1c
	add	r0, #0x1c
	cmp	r6, #5
	bne	.Lf6b04
	cmp	r1, #5
	beq	.Lf6b2c
	b	.Lf6d5c
.Lf6b2c:
	mov	r0, #0
	mov	r1, #0x98
	mov	r2, #0xac
	add	r1, r7
	add	r2, r7
	str	r0, [sp, #0x10]
	mov	r10, r0
	mov	r11, r1
	mov	r8, r2
.Lf6b3e:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0]
	mov	r1, r11
	ldr	r2, [r1]
	mov	r9, r3
	mov	r3, #3
	mov	r4, #1
	sub	r3, r2
	neg	r4, r4
	cmp	r10, r3
	ble	.Lf6bf0
	add	r3, r2, #3
	cmp	r10, r3
	bge	.Lf6bf0
	mov	r6, #0
	mov	r5, #0
.Lf6b60:
	mov	r2, r10
	cmp	r2, #0
	bne	.Lf6b76
	ldr	r0, [r5, r7]
	cmp	r0, #0
	bge	.Lf6b6e
	add	r0, #0xf
.Lf6b6e:
	asr	r0, #4
	sub	r0, r6, r0
	add	r0, #0x16
	b	.Lf6b9e
.Lf6b76:
	mov	r3, r10
	cmp	r3, #6
	bne	.Lf6b8e
	ldr	r0, [r5, r7]
	neg	r3, r6
	cmp	r0, #0
	bge	.Lf6b86
	add	r0, #0xf
.Lf6b86:
	asr	r0, #4
	sub	r0, r3, r0
	add	r0, #0x1a
	b	.Lf6b9e
.Lf6b8e:
	ldr	r0, [r5, r7]
	cmp	r0, #0
	bge	.Lf6b96
	add	r0, #0xf
.Lf6b96:
	mov	r1, r10
	asr	r0, #4
	sub	r0, r1, r0
	add	r0, #0x15
.Lf6b9e:
	mov	r1, #0x15
	str	r4, [sp, #8]
	bl	__modsi3
	add	r0, r5
	add	r0, #4
	ldrb	r3, [r7, r0]
	ldr	r4, [sp, #8]
	cmp	r3, #5
	beq	.Lf6bc6
	mov	r2, #1
	neg	r2, r2
	cmp	r4, r2
	bne	.Lf6bbe
	mov	r4, r3
	b	.Lf6bc6
.Lf6bbe:
	cmp	r4, r3
	beq	.Lf6bc6
	mov	r3, #1
	mov	r9, r3
.Lf6bc6:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #5
	bne	.Lf6b60
	mov	r0, r9
	cmp	r0, #0
	bne	.Lf6bf0
	mov	r3, #1
	mov	r1, r8
	str	r3, [r1]
	ldr	r3, [sp, #0x10]
	mov	r0, #0x90
	lsl	r0, #1
	add	r2, r3, r0
	ldr	r3, =.Lf870c
	ldr	r1, =ewram_200024c
	ldrb	r3, [r3, r4]
	strb	r3, [r1, r2]
	ldr	r2, [sp, #0x10]
	add	r2, #1
	str	r2, [sp, #0x10]
.Lf6bf0:
	mov	r4, #1
	add	r10, r4
	mov	r3, #4
	mov	r0, r10
	add	r8, r3
	cmp	r0, #7
	bne	.Lf6b3e
	ldr	r1, [sp, #0x14]
	mov	r5, #0
	str	r5, [r1]
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	beq	.Lf6c52
	mov	r3, #0x90
	sub	r4, #2
	ldr	r0, =ewram_200024c
	lsl	r3, #1
	add	r2, r3
	mov	r3, r4
	strb	r3, [r0, r2]
	ldr	r1, [sp, #0x18]
	mov	r3, #2
	str	r3, [r1]
	mov	r0, #0xab
	bl	_PlaySound
	mov	r4, #0xef
	ldr	r3, [sp, #0x24]
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x7784
	add	r3, r0, r1
	str	r5, [r3]
	mov	r2, #0x99
	ldr	r3, =REG_BLDCNT
	lsl	r2, #3
	strh	r5, [r3]
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r3, #0x94
	add	r3, r7
	mov	r8, r3
	b	.Lf6d68
.Lf6c52:
	ldr	r4, [sp, #0x18]
	mov	r3, #0xb
	str	r3, [r4]
	mov	r0, #0xc3
	mov	r2, #0x99
	ldr	r1, [sp, #0x10]
	lsl	r2, #3
	lsl	r0, #3
	add	r5, r7, r2
	add	r3, r7, r0
	str	r1, [r3]
	ldr	r0, [r5]
	mov	r1, #1
	bl	_CloseUIBox
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0x18
	mov	r3, #4
	mov	r0, #3
	bl	_CreateUIBox
	mov	r1, r0
	str	r1, [r5]
	mov	r3, #0
	ldr	r0, =0x90b
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r3, #0x94
	add	r3, r7
	mov	r8, r3
	mov	r5, r8
	ldr	r3, [r5]
	cmp	r3, #4
	bne	.Lf6d68
	mov	r0, #0xe4
	bl	_Func_8078b60
	cmp	r0, #0
	ble	.Lf6cae
	ldr	r4, [sp, #0x18]
	mov	r3, #0x14
	str	r3, [r4]
	b	.Lf6cb4
.Lf6cae:
	ldr	r1, [sp, #0x18]
	mov	r3, #0x14
	str	r3, [r1]
.Lf6cb4:
	mov	r2, r11
	ldr	r3, [r2]
	cmp	r3, r0
	ble	.Lf6cbe
	str	r0, [r2]
.Lf6cbe:
	mov	r3, r7
	mov	r2, #0
	add	r3, #0x90
	str	r2, [r5]
	str	r2, [r3]
	mov	r2, r7
	mov	r6, #0
	mov	r0, #0
	mov	r1, #0xff
	add	r2, #0x18
.Lf6cd2:
	ldrb	r3, [r2, #2]
	add	r6, #1
	orr	r3, r1
	strb	r0, [r2, #1]
	strb	r3, [r2, #2]
	add	r2, #0x1c
	cmp	r6, #5
	bne	.Lf6cd2
	ldr	r3, [sp, #0x24]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x7784
	mov	r2, #0
	add	r3, r0, r1
	str	r2, [r3]
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x12
	bl	_CreateUIBox
	ldr	r2, =0x4cc
	ldr	r5, =0x905
	mov	r1, r0
	add	r6, r7, r2
	mov	r0, r5
	str	r1, [r6]
	mov	r2, #0
	mov	r3, #8
	sub	r5, #1
	bl	_Func_801e7c0
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	b	.Lf6d68

	.pool_aligned

.Lf6d5c:
	mov	r3, #0x98
	mov	r4, #0x94
	add	r3, r7
	add	r4, r7
	mov	r11, r3
	mov	r8, r4
.Lf6d68:
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0]
	cmp	r3, #1
	bne	.Lf6dac
	mov	r6, #0
	mov	r1, r7
.Lf6d74:
	ldrb	r3, [r1, #0x19]
	cmp	r3, #0
	bne	.Lf6da4
	mov	r3, #0x1a
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.Lf6d86
	ldr	r3, [r1]
	b	.Lf6d92
.Lf6d86:
	ldr	r2, [r1]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #8
	beq	.Lf6d98
	mov	r3, r2
.Lf6d92:
	add	r3, #8
	str	r3, [r1]
	mov	r2, r3
.Lf6d98:
	mov	r3, #0xa8
	lsl	r3, #1
	cmp	r2, r3
	bne	.Lf6da4
	mov	r3, #0
	str	r3, [r1]
.Lf6da4:
	add	r6, #1
	add	r1, #0x1c
	cmp	r6, #5
	bne	.Lf6d74
.Lf6dac:
	ldr	r4, [sp, #0x24]
	ldr	r0, =0x778c
	add	r3, r4, r0
	ldr	r2, [r3]
	add	r2, #1
	str	r2, [r3]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	b	.Lf6e26
.Lf6dc2:
	mov	r2, r7
	mov	r3, #0x98
	mov	r4, #0x94
	add	r2, #0x8c
	add	r3, r7
	add	r4, r7
	str	r2, [sp, #0xc]
	b	.Lf6e14
.Lf6dd2:
	mov	r0, #0x94
	add	r0, r7
	mov	r8, r0
	b	.Lf6e26
.Lf6dda:
	mov	r1, #0x98
	add	r1, r7
	mov	r11, r1
	b	.Lf6e26
.Lf6de2:
	mov	r2, #0x98
	mov	r3, #0x94
	add	r2, r7
	add	r3, r7
	mov	r11, r2
	mov	r8, r3
	b	.Lf6e26
.Lf6df0:
	mov	r4, #0x98
	mov	r0, #0x94
	add	r4, r7
	add	r0, r7
	mov	r11, r4
	mov	r8, r0
	b	.Lf6e26
.Lf6dfe:
	mov	r1, #0x98
	mov	r2, #0x94
	add	r1, r7
	add	r2, r7
.Lf6e06:
	mov	r11, r1
	mov	r8, r2
	b	.Lf6e26
.Lf6e0c:
	mov	r3, #0x98
	mov	r4, #0x94
	add	r3, r7
	add	r4, r7
.Lf6e14:
	mov	r11, r3
	mov	r8, r4
	b	.Lf6e26
.Lf6e1a:
	mov	r0, #0x98
	mov	r1, #0x94
	add	r0, r7
	add	r1, r7
	mov	r11, r0
	mov	r8, r1
.Lf6e26:
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	cmp	r3, #5
	bne	.Lf6eb2
	mov	r3, r7
	add	r3, #0x90
	ldr	r1, [r3]
	lsl	r3, r1, #3
	add	r3, r1
	mov	r4, r7
	lsl	r3, #2
	add	r4, #0xa8
	mov	r5, r3
	ldr	r3, [r4]
	mov	r2, #0xf
	and	r3, r2
	add	r5, #0x24
	mov	r6, #0x80
	mov	r0, #0
	cmp	r3, #7
	bgt	.Lf6e52
	mov	r0, #1
.Lf6e52:
	cmp	r1, #5
	bne	.Lf6e5a
	mov	r5, #0xd0
	mov	r6, #0x20
.Lf6e5a:
	mov	r3, r5
	ldr	r4, [sp, #0x1c]
	sub	r3, #0xc
	lsl	r3, #16
	orr	r3, r4
	mov	r4, r6
	add	r4, #8
	ldr	r2, =0x80006000
	orr	r3, r4
	orr	r3, r2
	mov	r1, #0xc8
	str	r3, [r7, r1]
	lsl	r1, r0, #4
	mov	r0, #0xac
	lsl	r0, #2
	add	r1, r0
	mov	r3, #0xcc
	str	r1, [r7, r3]
	mov	r3, r5
	ldr	r2, [sp, #0x1c]
	add	r3, #0xc
	lsl	r3, #16
	orr	r3, r2
	ldr	r2, =0x90006000
	orr	r3, r4
	orr	r3, r2
	mov	r0, #0xd0
	str	r3, [r7, r0]
	mov	r3, #0xd4
	str	r1, [r7, r3]
	ldr	r4, [sp, #0x1c]
	lsl	r3, r5, #16
	ldr	r2, =0x80002000
	orr	r3, r4
	orr	r3, r6
	orr	r3, r2
	mov	r1, #0xd8
	str	r3, [r7, r1]
	mov	r3, #0xf8
	mov	r2, #0xdc
	lsl	r3, #1
	mov	r0, #3
	str	r3, [r7, r2]
	str	r0, [sp, #0x20]
.Lf6eb2:
	ldr	r1, [sp, #0xc]
	ldr	r3, [r1]
	cmp	r3, #3
	bne	.Lf6f7e
	ldr	r3, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	ldr	r2, =.Lf8712
	mov	r14, r3
	mov	r1, #0xcc
	lsl	r3, r0, #3
	mov	r4, r7
	add	r1, r3
	mov	r5, r3
	mov	r6, #0
	add	r4, #0xa8
	mov	r10, r2
	mov	r12, r1
	add	r5, #0xc8
.Lf6ed6:
	mov	r0, #0xe1
	lsl	r0, #7
	add	r0, r14
	mov	r3, #2
	ldrsh	r2, [r0, r3]
	ldr	r1, [sp, #0x1c]
	lsl	r2, #16
	orr	r2, r1
	mov	r1, #6
	ldrsh	r3, [r0, r1]
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0xff
	and	r3, r1
	orr	r2, r3
	mov	r3, #0x80
	lsl	r3, #24
	orr	r2, r3
	str	r2, [r7, r5]
	mov	r2, r10
	ldrb	r3, [r2, r6]
	mov	r1, #0xdc
	lsl	r3, #4
	lsl	r1, #2
	mov	r2, #0xf0
	lsl	r2, #8
	add	r3, r1
	orr	r3, r2
	mov	r2, r12
	str	r3, [r7, r2]
	ldr	r2, [r0, #0x10]
	ldr	r3, [r0, #4]
	add	r3, r2
	str	r3, [r0, #4]
	mov	r3, #0x80
	lsl	r3, #7
	add	r2, r3
	str	r2, [r0, #0x10]
	ldr	r3, [r4]
	mov	r2, r3
	cmp	r3, #0
	bge	.Lf6f2e
	add	r2, #0xff
.Lf6f2e:
	asr	r2, #8
	lsl	r2, #8
	sub	r2, r3, r2
	lsl	r3, r6, #2
	add	r3, #0xc8
	cmp	r2, r3
	bne	.Lf6f46
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x10]
	mov	r3, #0
	str	r3, [r0, #0x18]
.Lf6f46:
	mov	r2, #0x80
	ldr	r3, [r0, #4]
	lsl	r2, #15
	cmp	r3, r2
	ble	.Lf6f68
	ldr	r1, [r0, #0x18]
	str	r2, [r0, #4]
	cmp	r1, #1
	bgt	.Lf6f64
	ldr	r3, [r0, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r0, #0x10]
.Lf6f64:
	add	r3, r1, #1
	str	r3, [r0, #0x18]
.Lf6f68:
	ldr	r1, [sp, #0x20]
	mov	r0, #8
	add	r1, #1
	mov	r2, #0x1c
	add	r6, #1
	add	r12, r0
	add	r5, #8
	str	r1, [sp, #0x20]
	add	r14, r2
	cmp	r6, #8
	bne	.Lf6ed6
.Lf6f7e:
	ldr	r3, =0x80006000
	ldr	r0, [sp, #0x20]
	mov	r9, r3
	lsl	r3, r0, #3
	ldr	r4, =.Lf8728
	mov	r1, r3
	mov	r0, r3
	mov	r2, #0x9c
	mov	r3, #0x9d
	add	r1, #0xcc
	lsl	r2, #3
	lsl	r3, #3
	ldr	r6, =.Lf871a
	mov	r12, r4
	mov	r5, #0
	mov	r4, r1
	add	r0, #0xc8
	mov	r10, r2
	mov	r14, r3
.Lf6fa4:
	ldrb	r3, [r6]
	ldr	r2, [sp, #0x1c]
	lsl	r3, #16
	orr	r3, r2
	mov	r2, r12
	ldrb	r2, [r2]
	str	r2, [sp, #4]
	mov	r2, #1
	add	r12, r2
	ldr	r2, [sp, #4]
	orr	r3, r2
	mov	r2, r9
	orr	r3, r2
	add	r6, #1
	str	r3, [r7, r0]
	cmp	r5, #3
	bgt	.Lf6fcc
	mov	r3, r10
	str	r3, [r7, r4]
	b	.Lf6fd0
.Lf6fcc:
	mov	r2, r14
	str	r2, [r7, r1]
.Lf6fd0:
	ldr	r3, [sp, #0x20]
	add	r5, #1
	add	r3, #1
	add	r1, #8
	add	r4, #8
	add	r0, #8
	str	r3, [sp, #0x20]
	cmp	r5, #0xe
	bne	.Lf6fa4
	lsl	r3, #3
	ldr	r4, =0x8000207c
	mov	r0, #0x19
	mov	r1, r3
	mov	r2, r3
	mov	r5, #0x80
	add	r0, r7
	add	r1, #0xcc
	add	r2, #0xc8
	mov	r14, r4
	mov	r6, #0
	lsl	r5, #14
	mov	r12, r0
	mov	r4, r1
	mov	r9, r2
.Lf7000:
	mov	r3, r12
	ldrb	r3, [r3]
	mov	r10, r3
	mov	r0, #0x1c
	mov	r3, r10
	add	r12, r0
	cmp	r3, #0
	bne	.Lf7024
	ldr	r3, [sp, #0x1c]
	mov	r0, r14
	orr	r3, r5
	orr	r3, r0
	mov	r0, r9
	str	r3, [r7, r0]
	mov	r3, #0x8c
	lsl	r3, #3
	str	r3, [r7, r4]
	b	.Lf7034
.Lf7024:
	ldr	r3, [sp, #0x1c]
	mov	r0, r14
	orr	r3, r5
	orr	r3, r0
	str	r3, [r7, r2]
	mov	r3, #0x90
	lsl	r3, #3
	str	r3, [r7, r1]
.Lf7034:
	mov	r3, #8
	ldr	r0, [sp, #0x20]
	add	r9, r3
	mov	r3, #0x90
	add	r0, #1
	lsl	r3, #14
	add	r6, #1
	add	r1, #8
	add	r2, #8
	add	r4, #8
	str	r0, [sp, #0x20]
	add	r5, r3
	cmp	r6, #5
	bne	.Lf7000
	ldr	r1, [sp, #0x20]
	ldr	r4, =0x80006003
	lsl	r3, r1, #3
	mov	r2, r3
	mov	r0, #0x80
	lsl	r0, #3
	mov	r10, r4
	mov	r5, #0x80
	add	r2, #0xcc
	add	r3, #0xc8
	mov	r4, #0x84
	mov	r12, r0
	mov	r6, #0
	lsl	r5, #14
	mov	r0, r2
	mov	r9, r3
	mov	r14, r8
	lsl	r4, #2
.Lf7074:
	ldr	r3, [sp, #0x1c]
	mov	r1, r10
	orr	r3, r5
	orr	r3, r1
	mov	r1, r9
	str	r3, [r7, r1]
	mov	r1, r14
	ldr	r3, [r1]
	cmp	r6, r3
	bne	.Lf7092
	mov	r3, r4
	mov	r1, r12
	orr	r3, r1
	str	r3, [r7, r0]
	b	.Lf70a0
.Lf7092:
	mov	r1, #0x88
	lsl	r1, #2
	lsl	r3, r6, #5
	add	r3, r1
	mov	r1, r12
	orr	r3, r1
	str	r3, [r7, r2]
.Lf70a0:
	mov	r3, #8
	ldr	r1, [sp, #0x20]
	add	r9, r3
	mov	r3, #0x80
	add	r1, #1
	lsl	r3, #13
	add	r6, #1
	add	r2, #8
	add	r0, #8
	str	r1, [sp, #0x20]
	add	r5, r3
	add	r4, #0x20
	cmp	r6, #5
	bne	.Lf7074
	lsl	r3, r1, #3
	mov	r4, #0
	mov	r10, r4
	mov	r0, r3
	mov	r4, r3
	mov	r5, #5
	add	r4, #0xcc
	add	r0, #0xc8
	mov	r1, r3
.Lf70ce:
	mov	r3, r10
	mov	r2, #1
	and	r2, r3
	mov	r3, #0x81
	lsl	r2, #3
	lsl	r3, #2
	sub	r3, r2
	ldr	r2, =0x1ff
	and	r3, r2
	ldr	r2, [sp, #0x1c]
	lsl	r3, #16
	orr	r3, r2
	ldr	r2, =0x80002000
	orr	r3, r5
	orr	r3, r2
	str	r3, [r7, r0]
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #3
	sub	r3, r2
	cmp	r10, r3
	ble	.Lf7130
	add	r3, r2, #3
	cmp	r10, r3
	bge	.Lf7130
	mov	r3, #0xba
	lsl	r3, #3
	str	r3, [r7, r4]
	b	.Lf713a

	.pool_aligned

.Lf7130:
	mov	r2, r1
	mov	r3, #0xa2
	add	r2, #0xcc
	lsl	r3, #3
	str	r3, [r7, r2]
.Lf713a:
	ldr	r2, [sp, #0x20]
	mov	r3, #1
	add	r2, #1
	add	r10, r3
	str	r2, [sp, #0x20]
	mov	r2, r10
	add	r4, #8
	add	r0, #8
	add	r1, #8
	add	r5, #0x10
	cmp	r2, #7
	bne	.Lf70ce
	mov	r3, #0xa0
	lsl	r3, #14
	mov	r6, #0
	mov	r11, r3
	mov	r5, r7
.Lf715c:
	ldr	r0, [sp, #0x20]
	mov	r4, #0
	lsl	r3, r0, #3
	mov	r1, #0xcc
	mov	r10, r4
	add	r1, r3
	mov	r4, r3
	mov	r9, r11
	mov	r8, r1
	add	r4, #0xc8
.Lf7170:
	mov	r2, r10
	lsl	r1, r2, #4
	ldr	r2, [r5]
	mov	r3, r2
	cmp	r2, #0
	bge	.Lf717e
	add	r3, #0xf
.Lf717e:
	asr	r3, #4
	lsl	r3, #4
	sub	r3, r2, r3
	add	r3, r1, r3
	mov	r0, r9
	add	r3, #4
	ldr	r2, =0x80006000
	orr	r3, r0
	orr	r3, r2
	str	r3, [r7, r4]
	ldr	r0, [r5]
	cmp	r0, #0
	bge	.Lf719a
	add	r0, #0xf
.Lf719a:
	mov	r1, r10
	asr	r0, #4
	sub	r0, r1, r0
	add	r0, #0x15
	mov	r1, #0x15
	str	r4, [sp, #8]
	bl	__modsi3
	add	r0, #4
	ldrb	r3, [r5, r0]
	mov	r2, #0x80
	lsl	r2, #4
	lsl	r3, #4
	orr	r3, r2
	mov	r2, r8
	str	r3, [r7, r2]
	ldr	r0, [sp, #0x20]
	mov	r1, #1
	ldr	r4, [sp, #8]
	add	r10, r1
	mov	r3, #8
	add	r0, #1
	mov	r2, r10
	add	r8, r3
	add	r4, #8
	str	r0, [sp, #0x20]
	cmp	r2, #7
	bne	.Lf7170
	mov	r3, #0x80
	lsl	r3, #14
	add	r6, #1
	add	r11, r3
	add	r5, #0x1c
	cmp	r6, #5
	bne	.Lf715c
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0]
	mov	r4, #0x28
	cmp	r3, #1
	bne	.Lf7216
	mov	r3, r7
	add	r3, #0xa8
	ldr	r0, [r3]
	cmp	r0, #0x2f
	bgt	.Lf7200
	ldr	r3, =0x2aa
	mul	r0, r3
	bl	sin
	lsl	r0, #6
	b	.Lf7210
.Lf7200:
	cmp	r0, #0x37
	bgt	.Lf7216
	ldr	r1, =0xfffd0000
	lsl	r0, #12
	add	r0, r1
	bl	sin
	lsl	r0, #2
.Lf7210:
	asr	r0, #16
	mov	r4, r0
	add	r4, #0x28
.Lf7216:
	ldr	r3, [sp, #0x20]
	ldr	r0, [sp, #0x1c]
	lsl	r2, r3, #3
	ldr	r3, =0x80d06000
	orr	r4, r0
	orr	r4, r3
	mov	r1, r2
	mov	r3, #0xa0
	add	r1, #0xc8
	add	r2, #0xcc
	lsl	r3, #3
	str	r4, [r7, r1]
	str	r3, [r7, r2]
	ldr	r1, [sp, #0x20]
	add	r1, #1
	lsl	r3, r1, #3
	mov	r6, r3
	add	r6, #0xcc
	mov	r4, r6
	mov	r0, r4
	str	r1, [sp, #0x20]
	mov	r2, #0xc
	mov	r1, r0
	add	r3, #0xc8
	mov	r5, #0
	mov	r8, r2
	mov	r14, r1
	mov	r12, r3
.Lf724e:
	ldr	r3, [sp, #0x1c]
	mov	r2, r8
	orr	r3, r2
	ldr	r2, =0x80ce6000
	orr	r3, r2
	mov	r2, r12
	str	r3, [r7, r2]
	cmp	r5, #0
	bne	.Lf726a
	mov	r3, #0xa8
	lsl	r3, #3
	mov	r2, r14
	str	r3, [r7, r2]
	b	.Lf7294
.Lf726a:
	cmp	r5, #1
	bne	.Lf7276
	mov	r3, #0xaa
	lsl	r3, #3
	str	r3, [r7, r1]
	b	.Lf7294
.Lf7276:
	cmp	r5, #6
	bne	.Lf7282
	mov	r3, #0xae
	lsl	r3, #3
	str	r3, [r7, r0]
	b	.Lf7294
.Lf7282:
	cmp	r5, #7
	bne	.Lf728e
	mov	r3, #0xb0
	lsl	r3, #3
	str	r3, [r7, r4]
	b	.Lf7294
.Lf728e:
	mov	r3, #0xac
	lsl	r3, #3
	str	r3, [r7, r6]
.Lf7294:
	ldr	r2, [sp, #0x20]
	mov	r3, #8
	add	r14, r3
	add	r12, r3
	add	r2, #1
	mov	r3, #0x10
	add	r5, #1
	add	r6, #8
	add	r4, #8
	add	r0, #8
	add	r1, #8
	str	r2, [sp, #0x20]
	add	r8, r3
	cmp	r5, #8
	bne	.Lf724e
	cmp	r2, #0x80
	beq	.Lf72d4
	lsl	r3, r2, #3
	mov	r2, r3
	ldr	r0, =0x40f02000
	mov	r1, #0
	add	r2, #0xcc
	add	r3, #0xc8
.Lf72c2:
	str	r0, [r7, r3]
	str	r1, [r7, r2]
	ldr	r4, [sp, #0x20]
	add	r4, #1
	add	r2, #8
	add	r3, #8
	str	r4, [sp, #0x20]
	cmp	r4, #0x80
	bne	.Lf72c2
.Lf72d4:
	ldr	r0, [sp, #0x20]
	mov	r4, #0x84
	lsl	r2, r0, #1
	lsl	r4, #24
	mov	r0, r7
	mov	r1, #0xe0
	ldr	r3, =REG_DMA3SAD
	add	r0, #0xc8
	lsl	r1, #19
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f6440

