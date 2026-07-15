	.include "macros.inc"
	.include "gba.inc"

	.section .text.before, "ax", %progbits

.thumb_func_start InitSprites  @ 0x0800bb20
	push	{r5, r6, r7, lr}
	sub	sp, #4
	cmp	r0, #3
	bne	.Lbb40
	mov	r1, #0xe0
	lsl	r1, #4
	mov	r0, #4
	bl	galloc_ewram
	mov	r1, #0xc0
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #3
	bl	galloc_ewram
	b	.Lbb56
.Lbb40:
	mov	r1, #0xe0
	lsl	r1, #4
	mov	r0, #4
	bl	galloc_iwram
	mov	r1, #0xc0
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #3
	bl	galloc_iwram
.Lbb56:
	mov	r6, r0
	bl	LoadSpritePalette
	mov	r5, #0
	mov	r4, sp
	str	r5, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r7
	ldr	r2, =0x85000380
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r5, [r4]
	mov	r0, r4
	mov	r1, r6
	ldr	r2, =0x85000180
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =.L12f20
	mov	r1, #0x80
	mov	r0, #0x5d
	bl	UploadSpriteGFX
	ldr	r5, =0x7c
	mov	r0, #0x35
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_800a418
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end InitSprites


	.section .text.after, "ax", %progbits

.thumb_func_start CreateSprite  @ 0x0800bc70
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	mov	r8, r1
	mov	r10, r0
	bl	_GetSpriteInfo
	mov	r7, r0
	bl	AllocSpriteSlot
	ldr	r3, =iwram_3001e60
	ldr	r5, [r3]
	ldrb	r3, [r7]
	mov	r6, r0
	mov	r0, #0
	cmp	r3, #0
	bne	.Lbc98
	b	.Lbd9c
.Lbc98:
	mov	r3, r5
	add	r3, #0x20
	ldrb	r3, [r3]
	mov	r2, #0
	b	.Lbcb0
.Lbca2:
	add	r2, #1
	add	r5, #0x38
	cmp	r2, #0x3f
	bgt	.Lbcb6
	mov	r3, r5
	add	r3, #0x20
	ldrb	r3, [r3]
.Lbcb0:
	cmp	r3, #0
	bne	.Lbca2
	mov	r8, r5
.Lbcb6:
	mov	r2, r8
	mov	r0, #0
	cmp	r2, #0
	beq	.Lbd9c
	cmp	r6, #0x60
	beq	.Lbd9c
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	bl	UploadSpriteGFX
	mov	r12, r0
	cmp	r0, #0
	bne	.Lbcd6
	mov	r0, #0
	b	.Lbd9c
.Lbcd6:
	mov	r3, #0
	mov	r2, r8
	mov	r1, r8
	strb	r6, [r1, #0x1c]
	strh	r3, [r2, #0x1e]
	add	r2, #0x26
	mov	r3, #1
	strb	r3, [r2]
	ldrb	r3, [r7]
	ldrb	r2, [r7, #1]
	lsl	r3, #8
	add	r0, r3, r2
	mov	r3, #0x81
	lsl	r3, #5
	ldr	r4, =0x80008000
	cmp	r0, r3
	beq	.Lbd5e
	cmp	r0, r3
	bhi	.Lbd28
	mov	r3, #0x81
	mov	r4, #0x80
	lsl	r3, #4
	lsl	r4, #8
	cmp	r0, r3
	beq	.Lbd5e
	cmp	r0, r3
	bhi	.Lbd12
	sub	r3, #8
	mov	r4, #0
	b	.Lbd58
.Lbd12:
	ldr	r1, =0x1008
	mov	r4, #0x80
	lsl	r4, #7
	cmp	r0, r1
	beq	.Lbd5e
	ldr	r2, =0x1010
	mov	r4, #0x80
	lsl	r4, #23
	cmp	r0, r2
	beq	.Lbd5e
	b	.Lbd5c
.Lbd28:
	mov	r3, #0x81
	lsl	r3, #6
	ldr	r4, =0xc0008000
	cmp	r0, r3
	beq	.Lbd5e
	cmp	r0, r3
	bhi	.Lbd4a
	sub	r3, #0x30
	ldr	r4, =0x80004000
	cmp	r0, r3
	beq	.Lbd5e
	ldr	r1, =0x2020
	mov	r4, #0x80
	lsl	r4, #24
	cmp	r0, r1
	beq	.Lbd5e
	b	.Lbd5c
.Lbd4a:
	ldr	r2, =0x4020
	ldr	r4, =0xc0004000
	cmp	r0, r2
	beq	.Lbd5e
	ldr	r3, =0x4040
	mov	r4, #0xc0
	lsl	r4, #24
.Lbd58:
	cmp	r0, r3
	beq	.Lbd5e
.Lbd5c:
	mov	r4, #0
.Lbd5e:
	mov	r2, r8
	mov	r1, #0
	mov	r3, #0x80
	stmia	r2!, {r1}
	lsl	r3, #6
	orr	r4, r3
	mov	r0, #0x80
	stmia	r2!, {r4}
	lsl	r0, #4
	mov	r3, r12
	orr	r3, r0
	stmia	r2!, {r3}
	mov	r3, #0xc0
	stmia	r2!, {r1}
	lsl	r3, #7
	stmia	r2!, {r3}
	mov	r1, #0xbb
	ldr	r3, =gSpriteSlots
	lsl	r1, #1
	add	r3, r1
	ldrh	r3, [r3]
	lsr	r3, #5
	orr	r3, r0
	str	r3, [r2]
	mov	r0, r5
	mov	r1, r10
	bl	Sprite_AddLayer
	mov	r2, #1
	neg	r2, r2
	mov	r0, r8
.Lbd9c:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CreateSprite

	.section .text.after_delete_sprite, "ax", %progbits



	.section .rodata

.L12f20:
	.incrom 0x12f20, 0x12fa0
