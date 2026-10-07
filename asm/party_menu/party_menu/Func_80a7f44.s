	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a7f44  @ 0x080a7f44
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	ldr	r2, =0x219
	mov	r8, r3
	add	r2, r8
	ldrb	r3, [r2]
	sub	sp, #0x38
	cmp	r3, #1
	bls	.La7f6a
	cmp	r1, #1
	bne	.La7f6e
	ldrb	r3, [r2]
	sub	r3, #1
	cmp	r0, r3
	bne	.La7f72
.La7f6a:
	mov	r0, #0
	b	.La801e
.La7f6e:
	cmp	r0, #0
	beq	.La7f6a
.La7f72:
	mov	r7, sp
	mov	r2, #0
	add	r3, sp, #0x34
	mov	r12, r7
.La7f7a:
	str	r2, [r3]
	sub	r3, #4
	cmp	r3, r12
	bge	.La7f7a
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r6, #0
	cmp	r6, r3
	bge	.La7fa8
	ldr	r5, =0x219
	mov	r2, #0x82
	lsl	r2, #2
	add	r5, r8
	mov	r4, r7
	add	r2, r8
.La7f9a:
	ldrh	r3, [r2]
	stmia	r4!, {r3}
	ldrb	r3, [r5]
	add	r6, #1
	add	r2, #2
	cmp	r6, r3
	blt	.La7f9a
.La7fa8:
	cmp	r1, #1
	bne	.La7fb2
	lsl	r3, r0, #2
	add	r1, r3, #4
	b	.La7fb6
.La7fb2:
	lsl	r3, r0, #2
	sub	r1, r3, #4
.La7fb6:
	ldr	r6, [r7, r3]
	ldr	r2, [r7, r1]
	str	r2, [r7, r3]
	str	r6, [r7, r1]
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r6, #0
	cmp	r6, r3
	bge	.La7fe8
	ldr	r2, =0x219
	mov	r5, #0x82
	add	r2, r8
	lsl	r5, #2
	mov	r10, r2
	add	r5, r8
.La7fd6:
	ldrh	r0, [r5]
	bl	_Func_8079664
	mov	r2, r10
	ldrb	r3, [r2]
	add	r6, #1
	add	r5, #2
	cmp	r6, r3
	blt	.La7fd6
.La7fe8:
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r6, #0
	cmp	r6, r3
	bge	.La800c
	ldr	r3, =0x219
	add	r3, r8
	mov	r10, r3
	mov	r5, r7
.La7ffc:
	ldmia	r5!, {r0}
	bl	_AddPartyMember
	mov	r2, r10
	ldrb	r3, [r2]
	add	r6, #1
	cmp	r6, r3
	blt	.La7ffc
.La800c:
	mov	r0, #0x82
	lsl	r0, #2
	add	r0, r8
	bl	_Func_80796c4
	ldr	r3, =0x219
	add	r3, r8
	strb	r0, [r3]
	mov	r0, #1
.La801e:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a7f44

