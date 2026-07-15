	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_8edac, "ax", %progbits

.thumb_func_start Func_808ee0c  @ 0x0808ee0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	bl	GetFieldActor
	ldr	r3, =iwram_3001ebc
	mov	r6, #0x8e
	ldr	r3, [r3]
	lsl	r6, #1
	add	r4, r3, r6
	ldrb	r3, [r4, #4]
	mov	r5, r0
	mov	r7, #0
	cmp	r3, #0
	beq	.L8eebc
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	mov	r9, r2
	mov	r10, r3
	ldr	r6, =0xfff80000
	ldr	r2, =0x1ffffe
	mov	r3, #0x80
	lsl	r3, #12
	mov	r14, r6
	mov	r12, r2
	mov	r11, r3
.L8ee54:
	ldrb	r3, [r4, #6]
	mov	r6, r9
	lsl	r0, r3, #20
	sub	r2, r6, r0
	mov	r3, r2
	add	r3, r14
	mov	r8, r3
	ldrb	r3, [r4, #7]
	mov	r6, r10
	lsl	r1, r3, #20
	sub	r3, r6, r1
	mov	r6, r14
	add	r6, r3, r6
	str	r6, [sp]
	ldr	r6, =0x7ffff
	add	r2, r6
	cmp	r2, r12
	bhi	.L8eeae
	add	r3, r6
	cmp	r3, r12
	bhi	.L8eeae
	mov	r2, r11
	add	r3, r0, r2
	str	r3, [r5, #8]
	add	r3, r1, r2
	str	r3, [r5, #0x10]
	ldr	r0, [sp]
	mov	r1, r8
	bl	atan2
	mov	r1, r0
	lsl	r1, #16
	mov	r0, #0xa0
	mov	r2, r5
	lsr	r1, #16
	lsl	r0, #13
	add	r2, #8
	bl	vec3_translate
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	b	.L8eebc
.L8eeae:
	add	r7, #1
	add	r4, #8
	cmp	r7, #9
	bgt	.L8eebc
	ldrb	r3, [r4, #4]
	cmp	r3, #0
	bne	.L8ee54
.L8eebc:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808ee0c

.section .text.after_8eee4, "ax", %progbits

.thumb_func_start Func_808ef70  @ 0x0808ef70
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =iwram_3001ebc
	lsl	r0, #2
	ldr	r6, [r2]
	add	r0, #0x14
	ldr	r7, [r6, r0]
	sub	sp, #0xc
	mov	r9, r1
	mov	r10, r2
	mov	r0, #0
	cmp	r7, #0
	bne	.L8ef92
	b	.L8f0b8
.L8ef92:
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	mov	r0, #0x80
	ldrh	r1, [r7, #6]
	mov	r2, r5
	lsl	r0, #13
	bl	vec3_translate
	ldr	r1, =0xfff00000
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r3, r2
	mov	r8, r3
	ldr	r3, [r5, #8]
	and	r3, r1
	add	r7, r3, r2
	ldr	r2, =0xcb8
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8effe
	mov	r3, r10
	sub	r3, #0x58
	ldr	r5, [r3]
	mov	r6, #0x3f
.L8efd4:
	ldr	r1, [r5]
	cmp	r1, #0
	beq	.L8eff6
	ldr	r2, [r5, #0x6c]
	ldr	r3, =Func_808f28c
	cmp	r2, r3
	bne	.L8efea
	mov	r0, r5
	bl	_DeleteActor
	ldr	r1, [r5]
.L8efea:
	ldr	r3, =.L9e87c
	cmp	r1, r3
	bne	.L8eff6
	mov	r0, r5
	bl	_DeleteActor
.L8eff6:
	sub	r6, #1
	add	r5, #0x70
	cmp	r6, #0
	bge	.L8efd4
.L8effe:
	mov	r0, #3
	bl	WaitFrames
	mov	r2, #0x80
	mov	r3, r7
	lsl	r2, #13
	mov	r0, #0x16
	mov	r1, r8
	bl	_CreateActor
	mov	r7, r0
	mov	r0, #0
	cmp	r7, #0
	beq	.L8f0b8
	ldr	r1, =.L9e6c0
	mov	r0, r7
	bl	_Actor_SetScript
	ldr	r6, [r7, #0x50]
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
	add	r2, #1
	strb	r3, [r2]
	ldrb	r2, [r6, #5]
	sub	r3, #0x21
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc1
	str	r3, [r7, #0x48]
	lsl	r1, #3
	mov	r0, #0x11
	bl	galloc_iwram
	mov	r5, r0
	mov	r0, r9
	bl	_LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	UploadSpriteGFX
	ldr	r3, .L8f094	@ 0x3ff
	ldrh	r2, [r6, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r6, #8]
	mov	r0, #0x11
	bl	gfree
	ldr	r3, =Func_808eee4
	str	r3, [r7, #0x6c]
	mov	r0, r7
	b	.L8f0b8

	.align	2, 0
.L8f094:
	.word	0x3ff
	.pool

.L8f0b8:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808ef70
