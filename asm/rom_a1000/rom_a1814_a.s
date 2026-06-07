	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1814
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r0
	mov	r3, #0
	sub	sp, #8
	mov	r8, r3
	str	r3, [r5, #0x10]
	mov	r6, r5
	mov	r3, #5
	str	r3, [sp]
	add	r6, #0x10
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r3, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	Func_80a10d0
	ldr	r6, [r6]
	mov	r1, #8
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0xb
	bl	Func_80a1778
	mov	r3, #0xd
	strb	r3, [r0, #5]
	mov	r3, #0xff
	strb	r3, [r5, #0x1c]
	mov	r3, r8
	strb	r3, [r5, #0x1d]
	mov	r3, #0xfe
	str	r0, [r5, #0x14]
	strb	r3, [r0, #0xf]
	ldr	r2, [r5, #0x18]
	sub	r3, #0xff
	mov	r0, r6
	strb	r3, [r2, #0xf]
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80a1814

.thumb_func_start Func_80a1870
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, =iwram_3001f2c
	mov	r9, r0
	ldr	r3, [r3]
	mov	r0, sp
	add	r0, #0x10
	mov	r10, r3
	str	r0, [sp]
	bl	_Func_80796c4
	lsl	r0, #16
	lsr	r0, #16
	mov	r8, r0
	mov	r1, r8
	mov	r2, r10
	mov	r5, #0
	strb	r1, [r2, #0x1e]
	cmp	r5, r8
	bge	.La191c
	mov	r7, #0x9a
	mov	r6, #0x8a
	lsl	r7, #1
	lsl	r6, #1
	add	r7, r10
	add	r6, r10
	mov	r11, r5
.La18b8:
	ldr	r1, [sp]
	mov	r3, r11
	ldrh	r0, [r3, r1]
	bl	_Func_808b398
	bl	_Func_800bc70
	cmp	r0, #0
	beq	.La190e
	str	r0, [r6]
	mov	r2, r9
	ldrh	r3, [r2, #0xc]
	ldr	r2, [sp, #4]
	add	r2, #0x10
	mul	r2, r5
	ldr	r1, [sp, #0xc]
	add	r3, r1, r3
	lsl	r3, #3
	add	r3, r2
	strh	r3, [r7]
	mov	r2, r9
	ldr	r1, [sp, #8]
	ldrh	r3, [r2, #0xe]
	add	r3, r1, r3
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x40]
	mov	r1, #0xd
	ldrb	r3, [r0, #9]
	neg	r1, r1
	mov	r2, r1
	and	r3, r2
	mov	r2, r0
	strb	r3, [r0, #9]
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #1
	bl	_Func_800ba30
.La190e:
	mov	r2, #2
	add	r5, #1
	add	r7, #2
	add	r6, #4
	add	r11, r2
	cmp	r5, r8
	blt	.La18b8
.La191c:
	cmp	r5, #7
	bgt	.La1938
	lsl	r3, r5, #2
	mov	r0, #0x8a
	add	r3, r10
	lsl	r0, #1
	add	r2, r3, r0
	mov	r3, #8
	mov	r1, #0
	sub	r5, r3, r5
.La1930:
	sub	r5, #1
	stmia	r2!, {r1}
	cmp	r5, #0
	bne	.La1930
.La1938:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a19a0
	bl	StartTask
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a1870

.thumb_func_start Func_80a195c
	push	{r5, r6, lr}
	sub	sp, #0x1c
	ldr	r3, =iwram_3001f2c
	mov	r0, sp
	ldr	r5, [r3]
	bl	_Func_80796c4
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.La198a
	mov	r3, #0x8a
	lsl	r3, #1
	add	r6, r5, r3
	mov	r5, r0
.La197a:
	ldmia	r6!, {r0}
	cmp	r0, #0
	beq	.La1984
	bl	_Func_800bdd4
.La1984:
	sub	r5, #1
	cmp	r5, #0
	bne	.La197a
.La198a:
	ldr	r0, =Func_80a19a0
	bl	Func_8004278
	add	sp, #0x1c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a195c

.thumb_func_start Func_80a19a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0x1c
	ldr	r5, [r3]
	bl	_Func_80795fc
	lsl	r0, #16
	lsr	r0, #16
	mov	r10, r0
	mov	r4, #0
	cmp	r4, r10
	bge	.La1a2e
	add	r2, sp, #4
	mov	r8, r2
	mov	r3, #0x9a
	mov	r2, #0x8a
	lsl	r3, #1
	lsl	r2, #1
	add	r7, r5, r3
	add	r6, sp, #0xc
	add	r5, r2
.La19d0:
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	ldr	r0, [r5]
	mov	r2, #0xf1
	lsl	r3, #16
	lsl	r2, #17
	sub	r1, r2, r3
	cmp	r0, #0
	beq	.La1a24
	ldrb	r3, [r0, #9]
	mov	r12, r3
	mov	r3, #0xd
	neg	r3, r3
	mov	r2, r3
	mov	r3, r12
	and	r3, r2
	strb	r3, [r0, #9]
	ldr	r3, [r5, #0x40]
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x40]
	mov	r2, r8
	str	r3, [r2, #4]
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	str	r1, [r6, #4]
	str	r3, [r6]
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	add	r3, r1
	str	r3, [r6, #8]
	mov	r3, #0
	str	r3, [r6, #0xc]
	mov	r3, #0x80
	mov	r1, r6
	mov	r2, r8
	lsl	r3, #7
	str	r4, [sp]
	bl	_Func_800b168
	ldr	r4, [sp]
.La1a24:
	add	r4, #1
	add	r7, #2
	add	r5, #4
	cmp	r4, r10
	blt	.La19d0
.La1a2e:
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a19a0

.thumb_func_start Func_80a1a40
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	ldr	r3, =iwram_3001e40
	mov	r14, r3
	ldr	r3, [r3]
	mov	r6, #7
	lsr	r3, #1
	mov	r12, r6
	and	r3, r6
	ldr	r2, =.Laf294
	ldr	r6, [r5, #0x10]
	ldrb	r2, [r2, r3]
	ldrh	r3, [r6, #0xc]
	add	r2, r0
	lsl	r3, #3
	ldr	r4, [r5, #0x14]
	add	r2, r3
	ldr	r5, .La1a9c	@ 0xffff
	add	r2, #8
	ldr	r3, .La1aa0	@ 0x1ff
	strh	r2, [r4, #6]
	and	r2, r5
	ldrh	r0, [r4, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r0
	orr	r3, r2
	mov	r0, r14
	strh	r3, [r4, #0x16]
	ldr	r3, [r0]
	ldr	r2, =.Laf29d
	mov	r0, r12
	lsr	r3, #1
	and	r3, r0
	ldrb	r3, [r2, r3]
	ldrh	r2, [r6, #0xe]
	add	r3, r1
	lsl	r2, #3
	add	r3, r2
	add	r3, #8
	strh	r3, [r4, #8]
	and	r3, r5
	strb	r3, [r4, #0x14]
	b	.La1ab8

	.align	2, 0
.La1a9c:
	.word	0xffff
.La1aa0:
	.word	0x1ff
	.pool

.La1ab8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a1a40

.thumb_func_start Func_80a1ac0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	ldr	r2, =0x222
	mov	r10, r3
	add	r2, r10
	ldrh	r3, [r2]
	mov	r8, r1
	mov	r1, #2
	sub	sp, #4
	mov	r9, r1
	cmp	r3, #0
	beq	.La1af4
	mov	r3, #0
	strh	r3, [r2]
	b	.La1bb6

	.pool_aligned

.La1af4:
	mov	r2, r10
	ldr	r7, [r2, #0x14]
	ldrh	r3, [r7, #0x16]
	lsl	r3, #23
	lsr	r3, #23
	add	r3, #0x40
	ldrb	r2, [r7, #0x14]
	strh	r3, [r7, #6]
	add	r2, #0x40
	strh	r2, [r7, #8]
	ldrh	r2, [r7, #6]
	mov	r3, #0x40
	add	r8, r3
	mov	r3, r2
	sub	r3, #8
	add	r0, #0x40
	cmp	r3, #0
	ble	.La1b1e
	ldr	r1, =0xfff8
	add	r3, r2, r1
	strh	r3, [r7, #6]
.La1b1e:
	ldrh	r6, [r7, #8]
	mov	r3, r6
	sub	r3, #8
	cmp	r3, #0
	ble	.La1b30
	ldr	r2, =0xfff8
	add	r3, r6, r2
	strh	r3, [r7, #8]
	ldrh	r6, [r7, #8]
.La1b30:
	ldrh	r5, [r7, #6]
	lsl	r0, #4
	lsl	r5, #4
	sub	r0, r5
	mov	r1, #2
	add	r0, #1
	bl	Func_af0_from_thumb
	mov	r3, r8
	mov	r11, r0
	lsl	r6, #4
	lsl	r0, r3, #4
	sub	r0, r6
	add	r0, #1
	mov	r1, #2
	bl	Func_af0_from_thumb
	ldr	r4, .La1b88	@ 0xffff
	mov	r8, r0
.La1b56:
	mov	r2, r10
	ldr	r0, [r2, #0x10]
	ldrh	r3, [r0, #0xc]
	add	r5, r11
	lsl	r3, #3
	asr	r1, r5, #4
	add	r1, r3
	sub	r1, #0x38
	ldr	r3, .La1b8c	@ 0x1ff
	strh	r1, [r7, #6]
	and	r1, r4
	and	r1, r3
	ldr	r2, .La1b90	@ 0xfffffe00
	ldrh	r3, [r7, #0x16]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #0x16]
	ldrh	r3, [r0, #0xe]
	add	r6, r8
	lsl	r3, #3
	asr	r2, r6, #4
	add	r2, r3
	mov	r3, #1
	b	.La1b98

	.align	2, 0
.La1b88:
	.word	0xffff
.La1b8c:
	.word	0x1ff
.La1b90:
	.word	0xfffffe00
	.pool

.La1b98:
	neg	r3, r3
	sub	r2, #0x38
	add	r9, r3
	strh	r2, [r7, #8]
	mov	r1, r9
	and	r2, r4
	strb	r2, [r7, #0x14]
	cmp	r1, #0
	beq	.La1bb6
	mov	r0, #1
	str	r4, [sp]
	bl	Func_80030f8
	ldr	r4, [sp]
	b	.La1b56
.La1bb6:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a1ac0

