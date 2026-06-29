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
	bl	_Func_80170f8
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	bl	Func_80a1090
	ldr	r0, =0x2130
	bl	Func_8004970
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
	bl	_Func_80170f8
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

.thumb_func_start Func_80aa768  @ 0x080aa768
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r4, #0
	ldr	r2, [r7, #0x14]
	mov	r10, r4
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r3, r10
	sub	sp, #8
	mov	r1, #0
	strh	r3, [r2, #0xc]
	str	r4, [sp]
	mov	r8, r1
	bl	Func_80aad10
	mov	r0, #1
	bl	WaitFrames
	ldr	r4, [sp]
	mov	r5, #2
.Laa798:
	cmp	r5, #0xf
	bls	.Laa79e
	b	.Laac52
.Laa79e:
	ldr	r2, =.Laa7a8
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Laa7a8:
	.word	.Laa7e8
	.word	.Laac56
	.word	.Laa7fa
	.word	.Laa8b0
	.word	.Laabc0
	.word	.Laabec
	.word	.Laaaa4
	.word	.Laa9be
	.word	.Laa880
	.word	.Laaaec
	.word	.Laa83c
	.word	.Laac06
	.word	.Laaac0
	.word	.Laa9da
	.word	.Laab08
	.word	.Laa86a
.Laa7e8:
	cmp	r4, #0
	blt	.Laa7ee
	b	.Laabbc
.Laa7ee:
	mov	r1, #1
	neg	r1, r1
	mov	r2, #1
	mov	r10, r1
	mov	r8, r2
	b	.Laabbc
.Laa7fa:
	mov	r0, #0
	bl	Func_80aa544
	mov	r1, #0
	mov	r2, #0xc8
	mov	r3, #0
	mov	r0, #1
	bl	Func_80ad5b4
	mov	r0, #0
	bl	Func_80ab5e4
	mov	r4, r0
	mov	r5, #0xf
	cmp	r4, #0xa
	bne	.Laa81c
	b	.Laac56
.Laa81c:
	mov	r5, #0
	cmp	r4, #0
	bge	.Laa824
	b	.Laac56
.Laa824:
	mov	r1, #0xbb
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	lsl	r1, #1
	add	r2, r7, r1
	strh	r3, [r2]
	mov	r5, #0xa
	cmp	r4, #7
	bne	.Laa838
	b	.Laac56
.Laa838:
	mov	r5, #3
	b	.Laac56
.Laa83c:
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	mov	r2, #0x82
	lsl	r2, #2
	lsl	r3, #1
	add	r3, r2
	ldrh	r2, [r7, r3]
	ldr	r1, =0x21a
	str	r2, [r7, #8]
	ldrh	r2, [r7, r3]
	add	r3, r7, r1
	strb	r2, [r3]
	bl	Func_80ae2f4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	beq	.Laa864
	b	.Laabbc
.Laa864:
	mov	r3, #1
	mov	r8, r3
	b	.Laabbc
.Laa86a:
	bl	Func_80ab314
	mov	r1, #2
	mov	r4, r0
	neg	r1, r1
	cmp	r4, r1
	beq	.Laa87a
	b	.Laabbc
.Laa87a:
	mov	r2, #1
	mov	r8, r2
	b	.Laabbc
.Laa880:
	mov	r1, #0x86
	lsl	r1, #2
	add	r3, r7, r1
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r3, #0
	bne	.Laa890
	b	.Laac56
.Laa890:
	mov	r0, #1
	bl	Func_80ab5e4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	bne	.Laa8a4
	mov	r3, #1
	mov	r8, r3
.Laa8a4:
	mov	r5, #4
	cmp	r4, #0
	bge	.Laa8ac
	b	.Laac56
.Laa8ac:
	mov	r5, #9
	b	.Laac56
.Laa8b0:
	mov	r1, #0xc2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	Func_80aafb8
	mov	r0, #8
	neg	r0, r0
	bl	Func_80aa544
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	mov	r2, #0x82
	lsl	r2, #2
	lsl	r3, #1
	add	r3, r2
	ldrh	r2, [r7, r3]
	ldr	r1, =0x21a
	str	r2, [r7, #8]
	ldrh	r2, [r7, r3]
	add	r3, r7, r1
	strb	r2, [r3]
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #3
	add	r1, #0x30
	mov	r2, #0x36
	mov	r3, #0
	mov	r0, #0
	bl	Func_80ad5b4
	mov	r0, #1
	bl	Func_80ab5e4
	ldr	r2, =0x219
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r1, #0
	mov	r4, r0
	cmp	r1, r3
	bge	.Laa91a
	add	r0, r7, r2
	sub	r2, #0xd5
.Laa90a:
	ldrh	r3, [r2, r7]
	add	r3, #8
	strh	r3, [r2, r7]
	ldrb	r3, [r0]
	add	r1, #1
	add	r2, #2
	cmp	r1, r3
	blt	.Laa90a
.Laa91a:
	mov	r3, #2
	neg	r3, r3
	cmp	r4, r3
	bne	.Laa926
	mov	r1, #1
	mov	r8, r1
.Laa926:
	cmp	r4, #0
	bge	.Laa92c
	b	.Laabbc
.Laa92c:
	sub	r3, r4, #3
	cmp	r3, #1
	bls	.Laa93a
	cmp	r4, #8
	beq	.Laa93a
	cmp	r4, #9
	bne	.Laa94e
.Laa93a:
	mov	r3, #0x1d
	ldrsb	r3, [r7, r3]
	mov	r2, #0x82
	lsl	r2, #2
	lsl	r3, #1
	add	r3, r2
	ldr	r1, =0x21b
	ldrh	r2, [r7, r3]
	add	r3, r7, r1
	strb	r2, [r3]
.Laa94e:
	cmp	r4, #0
	bge	.Laa954
	b	.Laabbc
.Laa954:
	cmp	r4, #1
	bne	.Laa95c
	mov	r5, #5
	b	.Laac56
.Laa95c:
	cmp	r4, #2
	bne	.Laa964
	mov	r5, #6
	b	.Laac56
.Laa964:
	cmp	r4, #3
	bne	.Laa976
	mov	r3, #0x88
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #2
	strh	r3, [r2]
	mov	r5, #7
	b	.Laac56
.Laa976:
	cmp	r4, #4
	bne	.Laa988
	mov	r1, #0x88
	lsl	r1, #2
	add	r2, r7, r1
	mov	r3, #2
	strh	r3, [r2]
	mov	r5, #9
	b	.Laac56
.Laa988:
	cmp	r4, #5
	bne	.Laa990
	mov	r5, #0xb
	b	.Laac56
.Laa990:
	cmp	r4, #6
	bne	.Laa998
	mov	r5, #0xc
	b	.Laac56
.Laa998:
	cmp	r4, #8
	bne	.Laa9aa
	mov	r3, #0x88
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #2
	strh	r3, [r2]
	mov	r5, #0xd
	b	.Laac56
.Laa9aa:
	cmp	r4, #9
	beq	.Laa9b0
	b	.Laac56
.Laa9b0:
	mov	r1, #0x88
	lsl	r1, #2
	add	r2, r7, r1
	mov	r3, #2
	strh	r3, [r2]
	mov	r5, #0xe
	b	.Laac56
.Laa9be:
	mov	r0, #1
	bl	Func_80ad6d4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	bne	.Laa9d2
	mov	r3, #1
	mov	r8, r3
.Laa9d2:
	mov	r5, #3
	cmp	r4, #0
	bge	.Laa9da
	b	.Laac56
.Laa9da:
	mov	r0, #0x7e
	bl	_PlaySound
	ldr	r2, =0x256
	ldr	r1, =0x21a
	add	r3, r7, r2
	sub	r2, #2
	add	r6, r7, r1
	ldrb	r1, [r3]
	add	r3, r7, r2
	ldrb	r2, [r3]
	ldr	r3, =0x21b
	add	r5, r7, r3
	ldrb	r3, [r5]
	ldrb	r0, [r6]
	bl	_Func_807a498
	mov	r4, r0
	ldrb	r0, [r6]
	str	r4, [sp]
	bl	_CalcStats
	ldrb	r0, [r5]
	bl	_CalcStats
	ldr	r2, [r7, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r0, [r7, #0x30]
	bl	_Func_80164ac
	mov	r1, #0xc2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	Func_80aaf58
	mov	r2, #0xbb
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r0, [r3]
	mov	r1, #0xa
	bl	__umodsi3
	mov	r1, #0xbc
	mov	r3, #0
	lsl	r1, #1
	mov	r12, r3
	add	r3, r7, r1
	lsl	r0, #16
	ldrb	r6, [r3]
	lsr	r0, #16
	mov	r1, #0
	mov	r5, r0
	add	r5, #0xa0
	ldr	r4, [sp]
	b	.Laaa4e
.Laaa4c:
	add	r1, #1
.Laaa4e:
	mov	r2, #0xc2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r2, [r3]
	ldrsb	r3, [r2, r5]
	cmp	r1, r3
	bge	.Laaa6e
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	add	r3, r1
	lsl	r3, #1
	ldrb	r3, [r2, r3]
	cmp	r6, r3
	bne	.Laaa4c
	mov	r12, r1
.Laaa6e:
	mov	r1, r12
	lsl	r3, r1, #2
	add	r3, r12
	mov	r1, #0xba
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r0, r3
	add	r2, r7, r1
	strh	r3, [r2]
	ldr	r2, [r7, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r5, #0
	b	.Laac56

	.pool_aligned

.Laaaa4:
	mov	r0, #2
	bl	Func_80ad6d4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	bne	.Laaab8
	mov	r3, #1
	mov	r8, r3
.Laaab8:
	mov	r5, #3
	cmp	r4, #0
	bge	.Laaac0
	b	.Laac56
.Laaac0:
	mov	r0, #0xaf
	bl	_PlaySound
	ldr	r2, =0x256
	ldr	r1, =0x21a
	add	r3, r7, r2
	sub	r2, #2
	add	r6, r7, r1
	add	r5, r7, r2
	ldrb	r1, [r3]
	ldrb	r2, [r5]
	ldrb	r0, [r6]
	str	r3, [sp, #4]
	bl	_Func_807a350
	ldr	r3, [sp, #4]
	ldrb	r2, [r5]
	ldrb	r1, [r3]
	ldrb	r0, [r6]
	bl	_Func_807a458
	b	.Laac30
.Laaaec:
	mov	r0, #0
	bl	Func_80ad6d4
	mov	r3, #2
	mov	r4, r0
	neg	r3, r3
	cmp	r4, r3
	bne	.Laab00
	mov	r1, #1
	mov	r8, r1
.Laab00:
	mov	r5, #3
	cmp	r4, #0
	bge	.Laab08
	b	.Laac56
.Laab08:
	mov	r0, #0x7e
	bl	_PlaySound
	ldr	r2, =0x21a
	ldr	r1, =0x256
	add	r6, r7, r2
	add	r3, r7, r1
	add	r2, #0x3a
	ldrb	r1, [r3]
	add	r3, r7, r2
	ldrb	r2, [r3]
	ldr	r3, =0x21b
	add	r5, r7, r3
	ldrb	r3, [r5]
	ldrb	r0, [r6]
	bl	_Func_807a498
	ldr	r1, =0x257
	ldr	r2, =0x255
	add	r3, r7, r1
	ldrb	r1, [r3]
	add	r3, r7, r2
	ldrb	r2, [r3]
	ldrb	r0, [r5]
	ldrb	r3, [r6]
	bl	_Func_807a498
	mov	r4, r0
	ldrb	r0, [r6]
	str	r4, [sp]
	bl	_CalcStats
	ldrb	r0, [r5]
	bl	_CalcStats
	mov	r1, #0xc2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	Func_80aaf58
	mov	r2, #0xbb
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r0, [r3]
	mov	r1, #0xa
	bl	__umodsi3
	mov	r1, #0xbc
	mov	r3, #0
	lsl	r1, #1
	mov	r12, r3
	add	r3, r7, r1
	lsl	r0, #16
	ldrb	r6, [r3]
	lsr	r0, #16
	mov	r1, #0
	mov	r5, r0
	add	r5, #0xa0
	ldr	r4, [sp]
	b	.Laab84
.Laab82:
	add	r1, #1
.Laab84:
	mov	r2, #0xc2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r2, [r3]
	ldrsb	r3, [r2, r5]
	cmp	r1, r3
	bge	.Laaba4
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	add	r3, r1
	lsl	r3, #1
	ldrb	r3, [r2, r3]
	cmp	r6, r3
	bne	.Laab82
	mov	r12, r1
.Laaba4:
	mov	r1, r12
	lsl	r3, r1, #2
	add	r3, r12
	mov	r1, #0xba
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r0, r3
	add	r2, r7, r1
	strh	r3, [r2]
	ldr	r2, [r7, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
.Laabbc:
	mov	r5, #2
	b	.Laac56
.Laabc0:
	mov	r2, #1
	neg	r2, r2
	cmp	r4, r2
	bne	.Laabcc
	mov	r10, r4
	b	.Laabbc
.Laabcc:
	mov	r1, #0x88
	lsl	r1, #2
	add	r3, r7, r1
	ldrh	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Laabe0
	mov	r5, #8
	b	.Laac56
.Laabe0:
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Laac56
	mov	r5, #7
	b	.Laac56
.Laabec:
	mov	r0, #3
	bl	Func_80ad6d4
	mov	r2, #2
	mov	r4, r0
	neg	r2, r2
	cmp	r4, r2
	bne	.Laac00
	mov	r3, #1
	mov	r8, r3
.Laac00:
	mov	r5, #3
	cmp	r4, #0
	blt	.Laac56
.Laac06:
	mov	r0, #0x8b
	bl	_PlaySound
	ldr	r2, =0x256
	ldr	r1, =0x21a
	add	r3, r7, r2
	sub	r2, #2
	add	r6, r7, r1
	add	r5, r7, r2
	ldrb	r1, [r3]
	ldrb	r2, [r5]
	ldrb	r0, [r6]
	str	r3, [sp, #4]
	bl	_SetDjinni
	ldr	r3, [sp, #4]
	ldrb	r2, [r5]
	ldrb	r1, [r3]
	ldrb	r0, [r6]
	bl	_Func_807a3a8
.Laac30:
	mov	r4, r0
	ldrb	r0, [r6]
	str	r4, [sp]
	bl	_CalcStats
	ldr	r2, [r7, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r0, [r7, #0x30]
	bl	_Func_80164ac
	ldr	r2, [r7, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r5, #2
	ldr	r4, [sp]
	b	.Laac56
.Laac52:
	mov	r3, #1
	mov	r8, r3
.Laac56:
	mov	r1, r8
	cmp	r1, #0
	bne	.Laac5e
	b	.Laa798
.Laac5e:
	mov	r0, r10
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80aa768

.thumb_func_start Func_80aac84  @ 0x080aac84
	push	{r5, r6, r7, lr}
	mov	r1, #0
	mov	r5, r0
	mov	r3, #0xf
	mov	r12, r1
	mov	r7, #0x1f
.Laac90:
	lsl	r3, #4
	mov	r6, #0
	mov	r14, r3
.Laac96:
	mov	r2, r14
	add	r3, r2, r6
	mov	r1, #0xa0
	lsl	r1, #19
	lsl	r0, r3, #1
	add	r3, r0, r1
	ldrh	r3, [r3]
	lsr	r4, r3, #10
	and	r4, r7
	lsr	r2, r3, #5
	mov	r1, r7
	and	r2, r7
	and	r1, r3
	add	r4, r5
	add	r2, r5
	add	r1, r5
	cmp	r4, #0x1f
	ble	.Laacbc
	mov	r4, #0x1f
.Laacbc:
	cmp	r2, #0x1f
	ble	.Laacc2
	mov	r2, #0x1f
.Laacc2:
	cmp	r1, #0x1f
	ble	.Laacc8
	mov	r1, #0x1f
.Laacc8:
	cmp	r4, #0
	bge	.Laacce
	mov	r4, #0
.Laacce:
	cmp	r2, #0
	bge	.Laacd4
	mov	r2, #0
.Laacd4:
	cmp	r1, #0
	bge	.Laacda
	mov	r1, #0
.Laacda:
	lsl	r2, #5
	lsl	r3, r4, #10
	orr	r3, r2
	orr	r3, r1
	ldr	r1, =0x4ffffe0
	add	r6, #1
	add	r2, r0, r1
	strh	r3, [r2]
	cmp	r6, #0xf
	ble	.Laac96
	mov	r2, r12
	mov	r3, #5
	cmp	r2, #0
	beq	.Laacfc
	mov	r5, #0xc
	mov	r3, #7
	neg	r5, r5
.Laacfc:
	mov	r1, #1
	add	r12, r1
	mov	r2, r12
	cmp	r2, #2
	ble	.Laac90
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80aac84

.thumb_func_start Func_80aad10  @ 0x080aad10
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xc2
	ldr	r0, [r3]
	lsl	r2, #1
	add	r3, r0, r2
	ldr	r3, [r3]
	sub	sp, #8
	mov	r8, r3
	mov	r3, #0xf
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r3, #0x1e
	mov	r2, #5
	add	r0, #0x30
	bl	Func_80a10d0
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r8
	mov	r2, #0x80
	ldr	r6, =Func_8001af8
	ldr	r1, =0x6004000
	lsl	r2, #6
	add	r0, #0xa8
	bl	_call_via_r6
	ldr	r0, =0x20a8
	ldr	r1, =0x5000080
	add	r0, r8
	mov	r2, #0x80
	bl	_call_via_r6
	mov	r1, #0x80
	ldr	r5, =Func_80008d8
	lsl	r1, #6
	ldr	r2, =0x33333333
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	ldr	r2, =0x55555555
	ldr	r0, =0x5000080
	bl	_call_via_r5
	ldr	r0, =0x6005000
	bl	_Func_8021a18
	ldr	r1, =Data_af26c
	mov	r2, #0x20
	ldr	r0, =0x60052c0
	bl	_call_via_r6
	bl	GetSpritePalette
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50000a0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =0x50001e8
	ldr	r2, =0x50000bc
	ldrh	r3, [r5]
	ldr	r0, =0x50001e0
	strh	r3, [r2]
	add	r1, #0x40
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #8
	bl	Func_80aac84
	ldrh	r3, [r5]
	ldr	r2, =0x50000e8
	strh	r3, [r2]
	ldrh	r3, [r5]
	sub	r2, #0x20
	strh	r3, [r2]
	mov	r0, r8
	bl	Func_80aafb8
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80aad10

.thumb_func_start Func_80aae14  @ 0x080aae14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r8, r1
	mov	r1, #0
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r1, [sp]
	mov	r2, r8
	ldrh	r3, [r2]
	mov	r12, r0
	mov	r10, r1
	mov	r11, r1
	cmp	r3, #0
	beq	.Laaeac
	ldr	r3, =0x3fff
	ldr	r5, [sp, #8]
	mov	r14, r3
	mov	r0, r8
	sub	r5, #2
.Laae46:
	ldrh	r2, [r0]
	mov	r3, r14
	and	r3, r2
	strh	r3, [r5, #2]
	mov	r1, #1
	add	r10, r1
	mov	r1, r12
	ldrh	r2, [r1]
	ldrh	r3, [r0]
	eor	r3, r2
	mov	r2, r14
	and	r3, r2
	add	r5, #2
	mov	r4, #0
	cmp	r3, #0
	beq	.Laae7e
	ldr	r7, .Laae90	@ 0x3fff
	mov	r6, r0
.Laae6a:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.Laae7e
	add	r1, #4
	ldrh	r3, [r6]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r7
	cmp	r3, #0
	bne	.Laae6a
.Laae7e:
	cmp	r4, #0x20
	bne	.Laae9c
	mov	r3, #1
	add	r11, r3
	ldr	r2, .Laae94	@ 0x8000
	ldrh	r3, [r5]
	orr	r3, r2
	strh	r3, [r5]
	b	.Laae9c

	.align	2, 0
.Laae90:
	.word	0x3fff
.Laae94:
	.word	0x8000
	.pool

.Laae9c:
	mov	r3, r8
	add	r0, #4
	add	r3, #0x7c
	cmp	r0, r3
	bgt	.Laaeac
	ldrh	r3, [r0]
	cmp	r3, #0
	bne	.Laae46
.Laaeac:
	mov	r2, r12
	ldrh	r3, [r2]
	mov	r1, #0
	mov	r9, r1
	cmp	r3, #0
	beq	.Laaf38
	mov	r1, r10
	ldr	r2, [sp, #8]
	lsl	r3, r1, #1
	mov	r14, r12
	add	r0, r3, r2
	mov	r7, #0
.Laaec4:
	mov	r1, r12
	ldrh	r3, [r7, r1]
	mov	r1, r8
	ldrh	r2, [r1]
	eor	r3, r2
	ldr	r2, =0x3fff
	and	r3, r2
	mov	r4, #0
	cmp	r3, #0
	beq	.Laaef0
	ldr	r6, .Laaf04	@ 0x3fff
	mov	r5, r14
.Laaedc:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.Laaef0
	add	r1, #4
	ldrh	r3, [r5]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r6
	cmp	r3, #0
	bne	.Laaedc
.Laaef0:
	cmp	r4, #0x20
	bne	.Laaf1a
	ldr	r3, [sp]
	add	r3, #1
	str	r3, [sp]
	mov	r1, r12
	ldrh	r3, [r7, r1]
	ldr	r2, =0x3fff
	b	.Laaf0c

	.align	2, 0
.Laaf04:
	.word	0x3fff
	.pool

.Laaf0c:
	and	r2, r3
	ldr	r3, =0x4000
	orr	r2, r3
	strh	r2, [r0]
	mov	r2, #1
	add	r0, #2
	add	r10, r2
.Laaf1a:
	mov	r1, #1
	add	r9, r1
	mov	r3, #4
	mov	r2, r9
	add	r7, #4
	add	r14, r3
	cmp	r2, #0x1f
	bgt	.Laaf38
	mov	r1, r12
	ldrh	r3, [r7, r1]
	cmp	r3, #0
	bne	.Laaec4
	b	.Laaf38

	.pool_aligned

.Laaf38:
	ldr	r3, [sp, #4]
	mov	r2, r11
	str	r2, [r3]
	ldr	r1, [sp]
	ldr	r3, [sp, #0x2c]	@ 0x2c
	mov	r0, r10
	str	r1, [r3]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80aae14

.thumb_func_start Func_80aaf58  @ 0x080aaf58
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r4, #0
	sub	sp, #4
	cmp	r4, r3
	bge	.Laafa2
	mov	r6, #0x82
	mov	r7, r0
	lsl	r6, #2
	add	r7, #0xa0
	add	r6, r8
	mov	r5, r0
.Laaf7e:
	mov	r2, #1
	ldrh	r1, [r6]
	mov	r0, r5
	neg	r2, r2
	str	r4, [sp]
	bl	Func_80ac8fc
	ldr	r3, =0x219
	ldr	r4, [sp]
	add	r3, r8
	ldrb	r3, [r3]
	add	r4, #1
	strb	r0, [r7]
	add	r6, #2
	add	r7, #1
	add	r5, #0x14
	cmp	r4, r3
	blt	.Laaf7e
.Laafa2:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80aaf58

.thumb_func_start Func_80aafb8  @ 0x080aafb8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x34
	str	r0, [sp, #0x30]
	ldr	r3, =iwram_3001f2c
	ldr	r0, [r3]
	sub	r3, #0xa0
	ldr	r3, [r3]
	ldr	r1, =0xea6
	str	r3, [sp, #0x20]
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, #0
	ldr	r3, =0x219
	mov	r9, r0
	str	r2, [sp, #0x2c]
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lab01e
	ldr	r7, [sp, #0x30]
	mov	r6, #0x82
	lsl	r6, #2
	ldr	r5, [sp, #0x30]
	add	r7, #0xa0
	add	r6, r9
.Laaff8:
	mov	r2, #1
	ldrh	r1, [r6]
	mov	r0, r5
	neg	r2, r2
	bl	Func_80ac8fc
	strb	r0, [r7]
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	str	r3, [sp, #0x2c]
	ldr	r3, =0x219
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x2c]
	add	r6, #2
	add	r7, #1
	add	r5, #0x14
	cmp	r0, r3
	blt	.Laaff8
.Lab01e:
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_8016498
	mov	r2, r9
	ldr	r0, =0xbad
	ldr	r1, [r2, #0x30]
	mov	r3, #0x50
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r3, #0
	str	r3, [sp, #0x28]
	ldr	r3, =0x219
	add	r3, r9
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r0, r3
	blt	.Lab046
	b	.Lab1a2
.Lab046:
	ldr	r3, [sp, #0x30]
	mov	r2, #0
	mov	r1, #0xa0
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
.Lab054:
	mov	r0, #0
	str	r0, [sp, #0x1c]
	str	r0, [sp, #0x24]
.Lab05a:
	mov	r1, #0
	str	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x10]
	ldr	r0, [sp, #0x30]
	ldrsb	r3, [r2, r0]
	cmp	r1, r3
	blt	.Lab06a
	b	.Lab16a
.Lab06a:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x1c]
	ldr	r2, [sp, #8]
	str	r3, [sp, #0x14]
	lsl	r3, r0, #3
	mov	r1, #0xe0
	add	r3, #0x10
	str	r2, [sp, #0x18]
	ldr	r5, [sp, #4]
	mov	r11, r1
	mov	r10, r3
.Lab080:
	ldrh	r4, [r5]
	mov	r3, r11
	and	r3, r4
	ldr	r1, [sp, #0x24]
	lsr	r3, #5
	cmp	r1, r3
	bne	.Lab156
	ldr	r3, .Lab0a0	@ 0x8000
	and	r3, r4
	cmp	r3, #0
	bne	.Lab0b4
	mov	r0, #2
	bl	_SetTextColor
	ldrh	r4, [r5]
	b	.Lab0b4

	.align	2, 0
.Lab0a0:
	.word	0x8000
	.pool

.Lab0b4:
	mov	r7, #0xf0
	lsl	r7, #4
	mov	r2, #0
	mov	r0, r7
	mov	r1, r11
	mov	r6, #0x1f
	mov	r8, r2
	and	r0, r4
	and	r1, r4
	mov	r2, r6
	lsr	r0, #8
	lsr	r1, #5
	and	r2, r4
	bl	_Func_807a1f8
	cmp	r0, #0
	bne	.Lab0f0
	ldrh	r3, [r5]
	mov	r0, r7
	mov	r1, r11
	and	r0, r3
	and	r1, r3
	mov	r2, r6
	lsr	r0, #8
	lsr	r1, #5
	and	r2, r3
	bl	_Func_807a2bc
	cmp	r0, #0
	beq	.Lab0f4
.Lab0f0:
	mov	r3, #1
	mov	r8, r3
.Lab0f4:
	mov	r0, r8
	cmp	r0, #0
	bne	.Lab100
	mov	r0, #4
	bl	_SetTextColor
.Lab100:
	ldrh	r3, [r5]
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	mov	r1, r11
	and	r1, r3
	ldr	r2, =0x5001
	lsr	r1, #5
	add	r1, r2
	mov	r2, #0
	ldr	r3, [sp, #0x1c]
	str	r2, [sp]
	ldr	r2, [sp, #0x18]
	add	r3, #2
	add	r2, #1
	bl	_Func_8019000
	ldrh	r2, [r5]
	mov	r3, r11
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r2
	lsl	r0, #2
	add	r0, r3
	ldr	r3, =0x45f
	ldr	r2, [sp, #0x14]
	add	r0, r3
	mov	r3, r9
	ldr	r1, [r3, #0x30]
	add	r2, #0x10
	mov	r3, r10
	bl	_Func_801e7c0
	ldr	r1, [sp, #0x1c]
	mov	r0, #8
	add	r10, r0
	add	r1, #1
	mov	r0, #0xf
	str	r1, [sp, #0x1c]
	bl	_SetTextColor
.Lab156:
	ldr	r2, [sp, #0x2c]
	add	r2, #1
	str	r2, [sp, #0x2c]
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x30]
	ldrsb	r3, [r0, r1]
	add	r5, #2
	cmp	r2, r3
	bge	.Lab16a
	b	.Lab080
.Lab16a:
	ldr	r2, [sp, #0x24]
	add	r2, #1
	str	r2, [sp, #0x24]
	cmp	r2, #3
	bgt	.Lab176
	b	.Lab05a
.Lab176:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	ldr	r3, [sp, #0x28]
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	add	r3, #1
	str	r3, [sp, #0x28]
	add	r0, #0x38
	add	r1, #7
	add	r2, #0x14
	ldr	r3, =0x219
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x28]
	cmp	r0, r3
	bge	.Lab1a2
	b	.Lab054
.Lab1a2:
	mov	r1, r9
	mov	r3, #0xa
	ldr	r0, [r1, #0x30]
	mov	r2, #0xa
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0x1c
	bl	_Func_801e41c
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea3
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	ldr	r0, [sp, #0x20]
	ldr	r2, =0xea6
	mov	r1, #0
	add	r3, r0, r2
	strb	r1, [r3]
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80aafb8

.thumb_func_start Func_80ab1f4  @ 0x080ab1f4
	push	{r5, r6, lr}
	mov	r4, r0
	ldrh	r0, [r4, #0xc]
	add	r0, r1
	ldrh	r1, [r4, #0xe]
	sub	sp, #4
	ldr	r5, [sp, #0x14]
	mov	r6, r3
	add	r1, r2
	add	r0, #1
	ldr	r3, [sp, #0x10]
	add	r1, #1
	mov	r2, r6
	str	r5, [sp]
	bl	_Func_8022768
	add	sp, #4
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80ab1f4

.thumb_func_start Func_80ab21c  @ 0x080ab21c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r3
	ldr	r3, =iwram_3001e8c
	mov	r4, r0
	mov	r0, r1
	ldr	r1, [sp, #0x24]
	ldr	r3, [r3]
	mov	r10, r1
	mov	r9, r3
	mov	r3, r10
	lsl	r3, #12
	mov	r7, r2
	mov	r10, r3
	cmp	r4, #0
	bge	.Lab24c
	add	r7, r4
	mov	r4, #0
.Lab24c:
	add	r3, r4, r7
	cmp	r3, #0x1d
	ble	.Lab256
	mov	r3, #0x1e
	sub	r7, r3, r4
.Lab256:
	cmp	r0, #0
	bge	.Lab25e
	add	r5, r0
	mov	r0, #0
.Lab25e:
	add	r3, r0, r5
	cmp	r3, #0x1d
	ble	.Lab268
	mov	r3, #0x14
	sub	r5, r3, r0
.Lab268:
	cmp	r7, #0
	ble	.Lab2ce
	cmp	r5, #0
	ble	.Lab2ce
	ldr	r6, =0xea3
	lsl	r2, r0, #6
	lsl	r3, r4, #1
	add	r2, r3
	add	r6, r9
	mov	r1, #2
	str	r2, [sp]
	mov	r8, r6
	mov	r11, r1
.Lab282:
	ldr	r4, [sp]
	mov	r1, r7
	add	r4, r9
	cmp	r1, #0
	beq	.Lab2b2
	ldr	r6, =0xffff0fff
	mov	r3, #0xf
	mov	r14, r3
	mov	r12, r6
.Lab294:
	ldrh	r2, [r4]
	mov	r6, r14
	lsr	r3, r2, #12
	and	r3, r6
	cmp	r3, #0xf
	bne	.Lab2aa
	mov	r3, r12
	and	r2, r3
	mov	r6, r10
	orr	r2, r6
	strh	r2, [r4]
.Lab2aa:
	sub	r1, #1
	add	r4, #2
	cmp	r1, #0
	bne	.Lab294
.Lab2b2:
	lsr	r3, r0, #2
	mov	r1, r8
	mov	r2, r11
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
	sub	r5, #1
	ldr	r3, [sp]
	add	r3, #0x40
	str	r3, [sp]
	add	r0, #1
	cmp	r5, #0
	bne	.Lab282
.Lab2ce:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ab21c

