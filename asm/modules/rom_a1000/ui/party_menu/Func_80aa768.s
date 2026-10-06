	.include "macros.inc"
	.include "gba.inc"

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

