	.include "macros.inc"

.thumb_func_start Func_801ba68  @ 0x0801ba68
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r10, r1
	cmp	r1, #0
	beq	.L1bb3e
	mov	r0, #0xe7
	lsl	r0, #2
	add	r3, r7, r0
	ldrh	r3, [r3]
	mov	r1, #0xdd
	add	r3, #4
	lsl	r2, r3, #1
	lsl	r1, #2
	add	r3, r2, r1
	ldrh	r3, [r7, r3]
	mov	r4, #0xd5
	lsl	r4, #2
	mov	r8, r3
	mov	r0, #0
	add	r3, r2, r4
	ldrh	r6, [r7, r3]
	bl	Func_801a910
	mov	r5, r0
	cmp	r5, #0
	bne	.L1baa4
	b	.L1bc16
.L1baa4:
	mov	r2, r5
	mov	r0, r6
	mov	r1, r8
	mov	r3, #0
	bl	Func_801bd98
	ldr	r0, =0x396
	add	r3, r7, r0
	ldrh	r2, [r3]
	mov	r3, r2
	add	r3, #0x50
	mov	r4, #0xe6
	strh	r3, [r5, #0x10]
	lsl	r4, #2
	add	r3, r7, r4
	ldrh	r3, [r3]
	add	r2, #0x40
	strh	r2, [r5, #0x18]
	strh	r3, [r5, #0x12]
	strh	r3, [r5, #0x1a]
	ldr	r2, =0xfffe
	mov	r3, #0x20
	strh	r3, [r5, #0x24]
	strh	r3, [r5, #0x22]
	add	r3, #0xe0
	strh	r3, [r5, #0x26]
	strh	r2, [r5, #0x14]
	sub	r4, #0x50
	add	r3, r7, r4
	mov	r0, r5
	ldr	r5, [r3]
	ldr	r3, =0xffe0
	strh	r3, [r5, #0x24]
	ldrh	r3, [r5, #0x10]
	sub	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	mov	r1, #0
	strh	r1, [r5, #0x26]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	beq	.L1bb08
.L1baf8:
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	sub	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	bne	.L1baf8
.L1bb08:
	mov	r3, #0
	str	r0, [r5, #4]
	str	r3, [r0, #4]
	str	r5, [r0]
	mov	r0, #0xd2
	lsl	r0, #2
	add	r3, r7, r0
	ldr	r5, [r3]
.L1bb18:
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0x22
	ldrsh	r6, [r5, r1]
	cmp	r6, #0
	bne	.L1bb18
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r2, [r5, #4]
	str	r2, [r3]
	ldrh	r0, [r5, #0xc]
	bl	Func_8003f3c
	strh	r6, [r5, #0xa]
	ldr	r5, [r5, #4]
	str	r6, [r5]
	b	.L1bc16
.L1bb3e:
	mov	r4, #0xe7
	lsl	r4, #2
	add	r3, r7, r4
	ldrh	r3, [r3]
	mov	r0, #0xdd
	lsl	r2, r3, #1
	lsl	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r7, r3]
	mov	r1, #0xd5
	lsl	r1, #2
	mov	r8, r3
	mov	r0, #0
	add	r3, r2, r1
	ldrh	r6, [r7, r3]
	bl	Func_801a910
	mov	r5, r0
	cmp	r5, #0
	beq	.L1bc16
	mov	r2, r5
	mov	r0, r6
	mov	r1, r8
	mov	r3, #0
	bl	Func_801bd98
	ldr	r2, =0x396
	add	r3, r7, r2
	ldrh	r2, [r3]
	ldr	r4, =0xfff0
	mov	r0, #0xe6
	add	r3, r2, r4
	strh	r3, [r5, #0x10]
	lsl	r0, #2
	add	r3, r7, r0
	ldrh	r3, [r3]
	mov	r1, #0x80
	strh	r3, [r5, #0x12]
	strh	r3, [r5, #0x1a]
	mov	r3, #2
	strh	r3, [r5, #0x14]
	lsl	r1, #9
	mov	r3, #0x20
	strh	r3, [r5, #0x22]
	strh	r3, [r5, #0x24]
	add	r2, r1
	add	r3, #0xe0
	mov	r4, #0xd2
	strh	r2, [r5, #0x18]
	strh	r3, [r5, #0x26]
	lsl	r4, #2
	add	r2, r7, r4
	mov	r3, r5
	ldr	r5, [r2]
	mov	r0, r10
	str	r3, [r5]
	str	r5, [r3, #4]
	str	r0, [r3]
	str	r3, [r2]
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	add	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	mov	r2, #2
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	beq	.L1bbd6
.L1bbc6:
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	add	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	bne	.L1bbc6
.L1bbd6:
	mov	r3, #0
	strh	r3, [r5, #0x26]
	ldr	r3, =0xffe0
	mov	r1, #0xd2
	strh	r3, [r5, #0x24]
	lsl	r1, #2
	add	r3, r7, r1
	mov	r6, #0x80
	ldr	r5, [r3]
	lsl	r6, #1
.L1bbea:
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0x22
	ldrsh	r3, [r5, r2]
	cmp	r3, r6
	bne	.L1bbea
	ldr	r2, [r5, #4]
	cmp	r2, #0
	beq	.L1bc08
.L1bbfe:
	mov	r5, r2
	ldr	r3, [r5, #4]
	mov	r2, r3
	cmp	r3, #0
	bne	.L1bbfe
.L1bc08:
	ldrh	r0, [r5, #0xc]
	bl	Func_8003f3c
	ldr	r3, [r5]
	mov	r2, #0
	strh	r2, [r5, #0xa]
	str	r2, [r3, #4]
.L1bc16:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ba68

.thumb_func_start UploadIcon  @ 0x0801bc34
	push	{r5, lr}
	mov	r3, #1
	sub	sp, #0xc
	neg	r3, r3
	sub	r0, #1
	mov	r5, r1
	str	r3, [sp, #8]
	cmp	r0, #8
	bhi	.L1bcc6
	ldr	r2, =.L1bc50
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1bc50:
	.word	.L1bc74
	.word	.L1bc84
	.word	.L1bcc6
	.word	.L1bcb6
	.word	.L1bcc6
	.word	.L1bc74
	.word	.L1bcc6
	.word	.L1bcc6
	.word	.L1bc9a

.L1bc74:
	mov	r1, #0
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	str	r1, [sp]
	bl	LoadOldUIIcon
	b	.L1bcc6
.L1bc84:
	bl	AllocSpriteSlot
	mov	r2, r0
	str	r2, [sp, #8]
	cmp	r2, #0x60
	beq	.L1bca6
	mov	r0, r5
	mov	r1, #0x1a
	bl	LoadInventoryIcon
	b	.L1bcc6
.L1bc9a:
	bl	AllocSpriteSlot
	mov	r2, r0
	str	r2, [sp, #8]
	cmp	r2, #0x60
	bne	.L1bcac
.L1bca6:
	mov	r0, #1
	neg	r0, r0
	b	.L1bcc8
.L1bcac:
	mov	r0, r5
	mov	r1, #0
	bl	LoadUIBanner
	b	.L1bcc6
.L1bcb6:
	mov	r1, #0
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, #1
	bl	LoadMoveIcon
.L1bcc6:
	ldr	r0, [sp, #8]
.L1bcc8:
	add	sp, #0xc
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end UploadIcon

.thumb_func_start Func_801bcd4  @ 0x0801bcd4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r3
	mov	r3, #1
	sub	sp, #0xc
	mov	r4, r2
	neg	r3, r3
	mov	r7, r0
	mov	r5, r1
	str	r2, [sp, #8]
	mov	r6, r4
	cmp	r4, r3
	bne	.L1bcfe
	bl	AllocSpriteSlot
	mov	r4, r0
	str	r0, [sp, #8]
	mov	r0, r6
	cmp	r4, #0x60
	beq	.L1bd86
.L1bcfe:
	sub	r0, r7, #1
	cmp	r0, #8
	bhi	.L1bd84
	ldr	r2, =.L1bd0c
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1bd0c:
	.word	.L1bd30
	.word	.L1bd42
	.word	.L1bd84
	.word	.L1bd5a
	.word	.L1bd84
	.word	.L1bd30
	.word	.L1bd4e
	.word	.L1bd6c
	.word	.L1bd78

.L1bd30:
	mov	r1, #1
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, r8
	bl	LoadOldUIIcon
	b	.L1bd82
.L1bd42:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0x3a
	bl	LoadInventoryIcon
	b	.L1bd82
.L1bd4e:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0x2a
	bl	LoadInventoryIcon
	b	.L1bd82
.L1bd5a:
	mov	r1, #1
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, r8
	bl	LoadMoveIcon
	b	.L1bd82
.L1bd6c:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0
	bl	LoadStatusIcon
	b	.L1bd82
.L1bd78:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0
	bl	LoadUIBanner
.L1bd82:
	ldr	r4, [sp, #8]
.L1bd84:
	mov	r0, r4
.L1bd86:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801bcd4

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

.thumb_func_start Func_801be80  @ 0x0801be80
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r1, #0xe7
	mov	r5, r0
	lsl	r1, #2
	add	r3, r5, r1
	ldrh	r2, [r3]
	ldr	r3, =0x39e
	add	r3, r5
	mov	r10, r3
	ldrh	r3, [r3]
	mov	r0, #0
	add	r2, r3
	mov	r8, r0
	mov	r0, r5
	mov	r9, r2
	bl	Func_801ba34
	mov	r0, r10
	ldrh	r1, [r0]
	mov	r0, r5
	bl	Func_801b9a8
	ldr	r1, =0x3a2
	mov	r3, #0x21
	add	r2, r5, r1
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =0x2e2
	ldr	r0, =0x2fa
	mov	r7, #0
	add	r3, r5, r2
	strh	r7, [r5, #0xa]
	strh	r7, [r5, #0x3e]
	strh	r7, [r3]
	add	r3, r5, r0
	strh	r7, [r3]
	bl	Func_801c21c
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r6, [r3]
	cmp	r6, #0
	beq	.L1befc
	mov	r2, r10
	ldrh	r3, [r2]
	cmp	r3, #0
	beq	.L1befc
.L1beec:
	ldr	r6, [r6, #4]
	mov	r3, #1
	add	r8, r3
	cmp	r6, #0
	beq	.L1befc
	ldrh	r3, [r2]
	cmp	r3, r8
	bne	.L1beec
.L1befc:
	ldrh	r3, [r6, #0x10]
	strh	r3, [r6, #0x1c]
	ldrh	r3, [r6, #0x12]
	mov	r0, #0xd2
	strh	r3, [r6, #0x1e]
	lsl	r0, #2
	add	r3, r5, r0
	ldr	r7, [r3]
	cmp	r7, #0
	beq	.L1bf2c
.L1bf10:
	cmp	r7, r6
	beq	.L1bf26
	ldrh	r3, [r6, #0x10]
	strh	r3, [r7, #0x18]
	mov	r0, #0x10
	ldrsh	r2, [r7, r0]
	mov	r1, #0x10
	ldrsh	r3, [r6, r1]
	sub	r3, r2
	asr	r3, #1
	strh	r3, [r7, #0x14]
.L1bf26:
	ldr	r7, [r7, #4]
	cmp	r7, #0
	bne	.L1bf10
.L1bf2c:
	mov	r0, #2
	bl	WaitFrames
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r7, [r3]
	cmp	r7, #0
	beq	.L1bf56
	mov	r2, #0
	mov	r8, r2
.L1bf42:
	cmp	r7, r6
	beq	.L1bf50
	ldrh	r0, [r7, #0xc]
	bl	Func_8003f3c
	mov	r3, r8
	strh	r3, [r7, #0xa]
.L1bf50:
	ldr	r7, [r7, #4]
	cmp	r7, #0
	bne	.L1bf42
.L1bf56:
	mov	r0, #0xd2
	lsl	r0, #2
	add	r3, r5, r0
	str	r6, [r3]
	mov	r3, #0
	str	r3, [r6]
	str	r3, [r6, #4]
	mov	r1, #0xd3
	mov	r3, #4
	strh	r3, [r6, #0x18]
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r7, [r3]
	mov	r2, #0
	mov	r8, r2
	cmp	r7, #0
	beq	.L1bf88
.L1bf78:
	ldrh	r3, [r6, #0x18]
	add	r3, #0x10
	strh	r3, [r6, #0x18]
	ldr	r7, [r7, #4]
	mov	r3, #1
	add	r8, r3
	cmp	r7, #0
	bne	.L1bf78
.L1bf88:
	mov	r0, r8
	lsl	r1, r0, #1
	mov	r3, #0xe9
	mov	r0, #0xe7
	lsl	r3, #2
	lsl	r0, #2
	add	r2, r1, r3
	add	r3, r5, r0
	ldrh	r3, [r3]
	strh	r3, [r5, r2]
	ldr	r3, =0x39e
	mov	r2, #0xeb
	lsl	r2, #2
	add	r0, r1, r2
	add	r1, r5, r3
	ldrh	r3, [r1]
	add	r2, r5, #2
	strh	r3, [r2, r0]
	mov	r0, #0x10
	ldrsh	r2, [r6, r0]
	mov	r0, #0x18
	ldrsh	r3, [r6, r0]
	ldr	r0, =0x39a
	sub	r3, r2
	mov	r2, #0
	mov	r8, r2
	asr	r3, #1
	strh	r3, [r6, #0x14]
	mov	r2, r8
	add	r3, r5, r0
	strh	r2, [r3]
	ldr	r3, .L1bff8	@ 0x80
	ldrh	r2, [r1]
	orr	r3, r2
	strh	r3, [r1]
	mov	r0, #2
	bl	WaitFrames
	mov	r0, #1
	bl	Func_801a910
	ldrh	r3, [r6, #0xa]
	mov	r7, r0
	strh	r3, [r7, #0xa]
	ldrh	r3, [r6, #0x20]
	strh	r3, [r7, #0x20]
	ldrh	r3, [r6, #8]
	strh	r3, [r7, #8]
	ldrh	r3, [r6, #0xc]
	strh	r3, [r7, #0xc]
	ldrh	r3, [r6, #0xe]
	strh	r3, [r7, #0xe]
	ldrh	r2, [r6, #0x10]
	strh	r2, [r7, #0x10]
	b	.L1c010

	.align	2, 0
.L1bff8:
	.word	0x80
	.pool

.L1c010:
	ldrh	r3, [r6, #0x12]
	strh	r2, [r7, #0x18]
	strh	r3, [r7, #0x12]
	strh	r3, [r7, #0x1a]
	ldrh	r3, [r6, #0x1c]
	strh	r3, [r7, #0x1c]
	ldrh	r3, [r6, #0x1e]
	strh	r3, [r7, #0x1e]
	mov	r3, r8
	strh	r3, [r7, #0x14]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r0, r8
	strh	r0, [r7, #0x16]
	strh	r3, [r7, #0x22]
	strh	r3, [r7, #0x26]
	mov	r0, r7
	add	r0, #0x28
	ldrb	r3, [r0, #5]
	mov	r2, #0xd
	neg	r2, r2
	and	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	ldrb	r1, [r0, #7]
	and	r2, r3
	mov	r4, #0x3f
	add	r3, #0x10
	and	r2, r3
	mov	r3, r4
	and	r3, r1
	and	r2, r4
	mov	r1, #0x40
	strb	r2, [r0, #5]
	orr	r3, r1
	ldrb	r2, [r0, #9]
	strb	r3, [r0, #7]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r0, #9]
	ldrh	r3, [r7, #0xe]
	ldr	r2, =0x3ff
	ldrh	r1, [r0, #8]
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	mov	r2, #0xd2
	mov	r1, r8
	lsl	r2, #2
	strh	r3, [r0, #8]
	strh	r1, [r6, #0xa]
	add	r3, r5, r2
	mov	r0, r8
	mov	r1, #0xd3
	str	r0, [r3]
	lsl	r1, #2
	add	r0, r5, r1
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1c0a4
	mov	r6, r3
	ldr	r2, [r6, #4]
	cmp	r2, #0
	beq	.L1c09c
.L1c092:
	mov	r6, r2
	ldr	r3, [r6, #4]
	mov	r2, r3
	cmp	r3, #0
	bne	.L1c092
.L1c09c:
	mov	r3, #0
	str	r7, [r6, #4]
	str	r6, [r7]
	b	.L1c0a8
.L1c0a4:
	str	r7, [r0]
	str	r3, [r7]
.L1c0a8:
	str	r3, [r7, #4]
	mov	r0, r9
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801be80

