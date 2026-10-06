	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801bd98  @ 0x0801bd98
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r1
	sub	sp, #0xc
	mov	r5, r2
	mov	r1, r3
	cmp	r7, #2
	beq	.L1bdd4
	cmp	r7, #2
	bhi	.L1bdb2
	cmp	r7, #1
	beq	.L1bdba
	b	.L1be0a
.L1bdb2:
	cmp	r7, #4
	beq	.L1bdee
	cmp	r7, #6
	bne	.L1be0a
.L1bdba:
	cmp	r1, #0
	beq	.L1bdc2
	ldrh	r3, [r5, #0xc]
	str	r3, [sp, #8]
.L1bdc2:
	add	r3, sp, #4
	str	r1, [sp]
	add	r2, sp, #8
	mov	r0, r6
	mov	r1, #0
	bl	LoadOldUIIcon
	ldr	r3, =0x1f
	b	.L1be06
.L1bdd4:
	cmp	r1, #0
	beq	.L1bddc
	ldrh	r3, [r5, #0xc]
	str	r3, [sp, #8]
.L1bddc:
	add	r3, sp, #4
	str	r1, [sp]
	add	r2, sp, #8
	mov	r0, r6
	mov	r1, #1
	bl	LoadItemIconID
	ldr	r3, =0x182
	b	.L1be06
.L1bdee:
	cmp	r1, #0
	beq	.L1bdf6
	ldrh	r3, [r5, #0xc]
	str	r3, [sp, #8]
.L1bdf6:
	add	r3, sp, #4
	str	r1, [sp]
	add	r2, sp, #8
	mov	r0, r6
	mov	r1, #1
	bl	LoadMoveIcon
	ldr	r3, =0x333
.L1be06:
	add	r3, r6, r3
	strh	r3, [r5, #0x20]
.L1be0a:
	ldr	r3, [sp, #8]
	strh	r6, [r5, #8]
	strh	r3, [r5, #0xc]
	ldr	r6, [sp, #4]
	mov	r3, #0x80
	lsl	r3, #1
	strh	r6, [r5, #0xe]
	strh	r7, [r5, #0xa]
	strh	r3, [r5, #0x22]
	strh	r3, [r5, #0x26]
	mov	r0, r5
	add	r0, #0x28
	mov	r5, #0xd
	ldrb	r3, [r0, #5]
	neg	r5, r5
	mov	r2, r5
	and	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	ldrb	r1, [r0, #7]
	mov	r4, #0x3f
	and	r2, r3
	add	r3, #0x10
	and	r2, r3
	mov	r3, r4
	and	r2, r4
	and	r3, r1
	mov	r1, #0x40
	orr	r3, r1
	strb	r2, [r0, #5]
	ldrb	r2, [r0, #9]
	strb	r3, [r0, #7]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r0, #9]
	ldr	r3, =0x3ff
	ldrh	r2, [r0, #8]
	and	r6, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r6
	strh	r3, [r0, #8]
	ldrb	r3, [r0, #9]
	and	r5, r3
	strb	r5, [r0, #9]
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801bd98

