	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ClearSprites  @ 0x0800403c
	push	{lr}
	ldr	r0, =0x1ff
	ldr	r3, =gSpriteAllocTable
	mov	r1, #0
	mov	r2, #0xff
.L4046:
	add	r1, #1
	strb	r2, [r3]
	add	r3, #1
	cmp	r1, r0
	bls	.L4046
	ldr	r2, =gSpriteSlots
	ldr	r4, .L405c	@ 0xffff
	mov	r1, #0
	mov	r0, #0
	b	.L406c

	.align	2, 0
.L405c:
	.word	0xffff
	.pool

.L406c:
	ldrh	r3, [r2, #2]
	add	r1, #1
	orr	r3, r4
	strh	r3, [r2, #2]
	strh	r0, [r2]
	add	r2, #4
	cmp	r1, #0x5f
	bls	.L406c
	pop	{r0}
	bx	r0
.func_end ClearSprites

.thumb_func_start AllocSpriteSlot  @ 0x08004080
	push	{lr}
	ldr	r1, =gSpriteSlots
	ldr	r4, =0xffff
	ldrh	r3, [r1, #2]
	mov	r0, #0x60
	mov	r2, #0
	cmp	r3, r4
	bne	.L4094
	mov	r0, #0
	b	.L40a6
.L4094:
	add	r2, #1
	add	r1, #4
	cmp	r2, #0x5f
	bgt	.L40a6
	ldrh	r3, [r1, #2]
	ldr	r4, =0xffff
	cmp	r3, r4
	bne	.L4094
	mov	r0, r2
.L40a6:
	pop	{r1}
	bx	r1
.func_end AllocSpriteSlot

.thumb_func_start AllocUploadSpriteGFX  @ 0x080040b4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	AllocSpriteSlot
	mov	r1, r6
	mov	r2, #0
	mov	r5, r0
	bl	UploadSpriteGFX
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end AllocUploadSpriteGFX

