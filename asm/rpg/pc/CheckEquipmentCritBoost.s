	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CheckEquipmentCritBoost  @ 0x08079cbc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r2, #0x80
	lsl	r2, #2
	sub	sp, #4
	mov	r7, r0
	mov	r6, #0
	mov	r5, #0xd8
	mov	r8, r2
	mov	r1, #0xe
.L79cd2:
	ldrh	r3, [r5, r7]
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L79cfe
	ldrh	r0, [r5, r7]
	str	r1, [sp]
	bl	GetItemInfo
	ldr	r1, [sp]
	add	r0, #0x18
	mov	r2, #3
.L79cea:
	ldrb	r3, [r0]
	cmp	r3, #0x17
	bne	.L79cf6
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	add	r6, r3
.L79cf6:
	sub	r2, #1
	add	r0, #4
	cmp	r2, #0
	bge	.L79cea
.L79cfe:
	sub	r1, #1
	add	r5, #2
	cmp	r1, #0
	bge	.L79cd2
	cmp	r6, #0
	bge	.L79d0c
	mov	r6, #0
.L79d0c:
	mov	r0, r6
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CheckEquipmentCritBoost

