	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008098
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	lsl	r1, #7
	ldr	r4, [sp, #0x30]
	mov	r10, r2
	add	r1, r0
	ldr	r2, =gBuffer
	lsl	r1, #2
	add	r3, r4, r3
	add	r5, r1, r2
	cmp	r4, r3
	bge	.L126
	str	r3, [sp, #4]
	mov	r6, r10
	mov	r3, #0x80
	sub	r3, r6
	lsl	r3, #2
	mov	r11, r3
	ldr	r3, [sp, #0x28]
	lsl	r3, #4
	mov	r9, r3
.Lce:
	ldr	r0, [sp, #0x2c]
	mov	r1, r10
	add	r2, r0, r1
	cmp	r0, r2
	bge	.L11c
	ldr	r3, =0xfff
	mov	r7, #0xf
	mov	r8, r3
	mov	r3, r4
	and	r3, r7
	add	r3, r9
	lsl	r3, #5
	ldr	r6, =0x6002800
	str	r3, [sp]
	mov	r14, r6
	mov	r12, r2
.Lee:
	ldr	r6, [sp]
	ldmia	r5!, {r1}
	mov	r3, r0
	mov	r2, r8
	and	r3, r7
	and	r1, r2
	add	r3, r6, r3
	ldr	r6, =ewram_2020000
	lsl	r1, #3
	add	r2, r1, r6
	ldr	r2, [r2]
	lsl	r3, #2
	mov	r6, r14
	str	r2, [r3, r6]
	ldr	r6, =ewram_2020004
	add	r2, r1, r6
	ldr	r1, =0x6002840
	ldr	r2, [r2]
	add	r3, r1
	add	r0, #1
	str	r2, [r3]
	cmp	r0, r12
	blt	.Lee
.L11c:
	ldr	r2, [sp, #4]
	add	r4, #1
	add	r5, r11
	cmp	r4, r2
	blt	.Lce
.L126:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008098

.thumb_func_start OvlFunc_916_2008150
	push	{lr}
	ldr	r3, =.L12c4
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #1
	bne	.L174
	mov	r2, #9
	mov	r3, #4
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	str	r3, [sp]
	bl	__Func_8010704
	b	.L188
.L174:
	mov	r3, #6
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.L188:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008150

.thumb_func_start OvlFunc_916_2008194
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L12c0
	ldr	r6, [r3]
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	sp, #8
	cmp	r3, #0
	beq	.L1d6
	mov	r3, #0x4f
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x41
	mov	r1, #0x35
	mov	r2, #2
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, #0xf
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x41
	mov	r1, #0x28
	mov	r2, #2
	mov	r3, #4
	bl	__Func_80105d4
	b	.L1ea
.L1d6:
	mov	r3, #0x4f
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x41
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #5
	bl	__Func_80105d4
.L1ea:
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	cmp	r5, #0
	beq	.L22c
	mov	r5, #0
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	str	r3, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x40
	str	r3, [sp]
	mov	r0, #0x20
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.L25e
.L22c:
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0x20
	str	r3, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x40
	str	r3, [sp]
	mov	r0, #0x20
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0x20
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0x20
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.L25e:
	mov	r2, #1
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	neg	r2, r2
	cmp	r3, r2
	beq	.L2fa
	mov	r7, #0
	mov	r8, r2
.L26e:
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r5, [r6, #8]
	cmp	r3, #1
	bne	.L2d8
	mov	r1, #4
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r2, r5
	mov	r3, #3
	add	r2, #0x23
	strb	r3, [r2]
	mov	r3, r5
	add	r3, #0x55
	strb	r7, [r3]
	mov	r3, #0xd0
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #6
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	beq	.L2bc
	mov	r2, #2
	ldrsh	r3, [r6, r2]
	mov	r1, #4
	ldrsh	r2, [r6, r1]
	add	r3, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x44
	mov	r1, #0x28
	mov	r2, #1
	mov	r3, #4
	bl	__Func_80105d4
	b	.L2f0
.L2bc:
	mov	r2, #2
	ldrsh	r3, [r6, r2]
	mov	r1, #4
	ldrsh	r2, [r6, r1]
	add	r3, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x28
	mov	r2, #4
	mov	r3, #1
	bl	__Func_80105d4
	b	.L2f0
.L2d8:
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
	add	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	str	r7, [r5, #0xc]
.L2f0:
	add	r6, #0xc
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, r8
	bne	.L26e
.L2fa:
	mov	r3, #0xa
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r3, #1
	mov	r0, #0x46
	mov	r2, #1
	bl	__Func_80105d4
	ldr	r3, =.L12c8
	ldr	r3, [r3]
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.L338
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r3, #0x20
	mov	r2, #0x20
	bl	__Func_8010704
	ldr	r3, =.L12c0
	mov	r1, #0xfe
	ldr	r0, [r3]
	bl	OvlFunc_916_2008b3c
	b	.L354
.L338:
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x40
	mov	r3, #0x20
	mov	r2, #0x20
	bl	__Func_8010704
	ldr	r3, =.L12c0
	mov	r1, #0xff
	ldr	r0, [r3]
	bl	OvlFunc_916_2008b3c
.L354:
	bl	OvlFunc_916_2008150
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008194

.thumb_func_start OvlFunc_916_200836c
	push	{r5, r6, lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	ldr	r5, =iwram_3001ad4
	ldr	r6, =REG_BG1HOFS
	cmp	r3, #0xe3
	beq	.L37e
	cmp	r3, #0x34
	bhi	.L392
.L37e:
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L20dc
	ldr	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcs	.L392
	ldr	r5, =.L20d0
.L392:
	ldmia	r5!, {r3}
	str	r3, [r6]
	ldr	r6, =REG_BG2HOFS
	ldmia	r5!, {r3}
	stmia	r6!, {r3}
	ldr	r3, [r5]
	str	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_200836c

