	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200a9a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r6, #0
.L29b2:
	mov	r0, r6
	add	r0, #0x10
	add	r6, #1
	bl	__DeleteFieldActor
	cmp	r6, #0xf
	bls	.L29b2
	cmp	r7, #1
	beq	.L29d6
	cmp	r7, #1
	bcc	.L29d2
	cmp	r7, #2
	beq	.L29da
	cmp	r7, #3
	beq	.L29e4
	b	.L29ec
.L29d2:
	ldr	r0, =0x4039d2
	b	.L29dc
.L29d6:
	ldr	r0, =0x4049d2
	b	.L29dc
.L29da:
	ldr	r0, =0x404a4e
.L29dc:
	mov	r1, #1
	bl	__Func_8091200
	b	.L29ec
.L29e4:
	ldr	r0, =0x403a52
	mov	r1, #1
	bl	__Func_8091200
.L29ec:
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0xd6
	bl	__PlaySound
	ldr	r0, =.L3684
	mov	r6, #0
	mov	r9, r6
	mov	r10, r0
.L2a00:
	mov	r2, r10
	ldr	r1, [r2]
	mov	r3, #0
	ldr	r2, [r2, #4]
	cmp	r7, #1
	beq	.L2a26
	cmp	r7, #1
	bcc	.L2a1a
	cmp	r7, #2
	beq	.L2a30
	cmp	r7, #3
	beq	.L2a3a
	b	.L2a42
.L2a1a:
	mov	r3, #0xe8
	lsl	r3, #16
	add	r1, r3
	mov	r3, #0x90
	lsl	r3, #16
	b	.L2a42
.L2a26:
	mov	r4, #0xe8
	lsl	r4, #16
	mov	r3, #0xe8
	add	r1, r4
	b	.L2a40
.L2a30:
	ldr	r0, =0x2c70000
	mov	r3, #0x90
	add	r1, r0
	lsl	r3, #16
	b	.L2a42
.L2a3a:
	ldr	r3, =0x2c70000
	add	r1, r3
	mov	r3, #0xe8
.L2a40:
	lsl	r3, #17
.L2a42:
	ldr	r4, =.L3b40
	lsl	r5, r6, #2
	mov	r0, r9
	str	r0, [r4, r5]
	mov	r0, #0x8e
	lsl	r0, #1
	mov	r8, r4
	bl	__CreateActor
	ldr	r3, =.L3b10
	str	r0, [r3, r5]
	mov	r3, r0
	mov	r2, r9
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r1, [r0, #0x50]
	mov	r3, r1
	add	r3, #0x26
	strb	r2, [r3]
	mov	r4, #0xd
	ldrb	r2, [r1, #9]
	neg	r4, r4
	mov	r3, r4
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r1, #9]
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	add	r6, #1
	mov	r0, #8
	add	r10, r0
	cmp	r6, #9
	bls	.L2a00
	cmp	r7, #0
	bne	.L2aaa
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
.L2aaa:
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200aba0
	bl	__StartTask
	mov	r0, #0xf6
	mov	r5, #1
	bl	__PlaySound
	mov	r2, r8
	str	r5, [r2]
	mov	r0, #6
	bl	__WaitFrames
	mov	r3, r8
	str	r5, [r3, #4]
	mov	r0, #6
	bl	__WaitFrames
	mov	r4, r8
	str	r5, [r4, #8]
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, r8
	str	r5, [r0, #0xc]
	mov	r0, #6
	bl	__WaitFrames
	mov	r2, r8
	str	r5, [r2, #0x10]
	mov	r0, #6
	bl	__WaitFrames
	mov	r3, r8
	str	r5, [r3, #0x14]
	mov	r0, #6
	bl	__WaitFrames
	mov	r4, r8
	str	r5, [r4, #0x18]
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, r8
	str	r5, [r0, #0x1c]
	mov	r0, #6
	bl	__WaitFrames
	mov	r2, r8
	str	r5, [r2, #0x20]
	mov	r0, #6
	bl	__WaitFrames
	mov	r3, r8
	str	r5, [r3, #0x24]
	mov	r0, #6
	bl	__WaitFrames
	mov	r5, r8
.L2b28:
	ldr	r3, [r5]
	mov	r6, #0
	b	.L2b38
.L2b2e:
	add	r6, #1
	cmp	r6, #9
	bhi	.L2b40
	lsl	r3, r6, #2
	ldr	r3, [r5, r3]
.L2b38:
	cmp	r3, #0
	beq	.L2b2e
	mov	r6, #0xde
	lsl	r6, #2
.L2b40:
	mov	r4, #0xde
	lsl	r4, #2
	cmp	r6, r4
	bne	.L2b50
	mov	r0, #1
	bl	__WaitFrames
	b	.L2b28
.L2b50:
	mov	r0, #0x28
	bl	__WaitFrames
	ldr	r0, =OvlFunc_897_200aba0
	bl	__StopTask
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a9a4

	.section .text.after_aba0, "ax", %progbits

	.section .text.after_ac1c, "ax", %progbits

.thumb_func_start OvlFunc_897_200ac9c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0xa
	str	r3, [sp]
	mov	r5, #0
	mov	r0, #0xe
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xc
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xe
	mov	r8, r3
	mov	r0, #0xd
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r6, #0x1c
	mov	r0, #0xd
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x2b
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x2b
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200ac9c
