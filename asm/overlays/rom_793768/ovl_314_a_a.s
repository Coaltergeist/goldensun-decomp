	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008314
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e8c
	mov	r5, r0
	ldr	r2, [r3]
	mov	r6, r5
	mov	r8, r2
	add	r6, #0x64
	mov	r2, #0x12
	ldr	r7, [r3, #0x30]
	mov	r10, r2
	mov	r3, #0
	ldrh	r2, [r6]
	mov	r9, r3
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L342
	mov	r0, #0xf
	b	.L344
.L342:
	mov	r0, #0xe
.L344:
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0
	bl	OvlFunc_898_2009674
	cmp	r0, #0
	bne	.L394
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r1, r0
	cmp	r3, #0
	bne	.L378
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L38a
.L378:
	mov	r3, #0x1a
	ldrh	r2, [r6]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L38a
	mov	r2, #1
	mov	r9, r2
.L38a:
	mov	r0, r5
	mov	r2, r10
	mov	r3, r9
	bl	OvlFunc_898_2009674
.L394:
	mov	r0, #0
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_898_2008314

.thumb_func_start OvlFunc_898_20083ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e8c
	mov	r7, r0
	mov	r2, #0
	ldr	r6, [r3]
	ldr	r5, [r3, #0x30]
	mov	r3, #0x12
	mov	r10, r2
	mov	r8, r3
	mov	r2, #0x80
	ldr	r3, [r7, #0x38]
	lsl	r2, #24
	mov	r0, #0
	cmp	r3, r2
	beq	.L402
	bl	__MapActor_GetActor
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r1, r0
	cmp	r3, #0
	bne	.L3ee
	ldr	r2, =0xea4
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L3f6
.L3ee:
	mov	r3, #0x1a
	mov	r2, #1
	mov	r8, r3
	mov	r10, r2
.L3f6:
	mov	r0, r7
	mov	r2, r8
	mov	r3, r10
	bl	OvlFunc_898_2009674
	mov	r0, #0
.L402:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_898_20083ac

