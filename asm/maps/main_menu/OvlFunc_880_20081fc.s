	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_20081fc
	push	{r5, r6, r7, lr}
	ldr	r1, =.L16b2
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r12, r1
	cmp	r3, #0
	bne	.L276
	ldr	r5, =.L16ba
	mov	r3, #0
	ldrsh	r4, [r5, r3]
	cmp	r4, #0
	beq	.L220
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L276
	strh	r3, [r5]
	b	.L276
.L220:
	ldr	r6, =gKeyHeld
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L276
	ldr	r1, =.L16b6
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	ldr	r7, =.L14d4
	lsl	r3, #1
	ldrh	r2, [r7, r3]
	ldr	r3, [r6]
	ldrh	r0, [r1]
	cmp	r3, r2
	bne	.L274
	ldr	r2, .L25c	@ 1
	add	r3, r0, #1
	strh	r3, [r1]
	strh	r2, [r5]
	lsl	r3, #16
	asr	r3, #15
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	bne	.L276
	mov	r3, r12
	strh	r2, [r3]
	mov	r0, #0x6e
	bl	__PlaySound
	b	.L276

	.align	2, 0
.L25c:
	.word	1
	.pool

.L274:
	strh	r4, [r1]
.L276:
	ldr	r1, =.L16b4
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r12, r1
	cmp	r3, #0
	bne	.L2ee
	ldr	r5, =.L16bc
	mov	r3, #0
	ldrsh	r4, [r5, r3]
	cmp	r4, #0
	beq	.L298
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L2ee
	strh	r3, [r5]
	b	.L2ee
.L298:
	ldr	r6, =gKeyHeld
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L2ee
	ldr	r1, =gScript_930__020096b8
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	ldr	r7, =.L14dc
	lsl	r3, #1
	ldrh	r2, [r7, r3]
	ldr	r3, [r6]
	ldrh	r0, [r1]
	cmp	r3, r2
	bne	.L2ec
	ldr	r2, .L2d4	@ 1
	add	r3, r0, #1
	strh	r3, [r1]
	strh	r2, [r5]
	lsl	r3, #16
	asr	r3, #15
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	bne	.L2ee
	mov	r3, r12
	strh	r2, [r3]
	mov	r0, #0x6e
	bl	__PlaySound
	b	.L2ee

	.align	2, 0
.L2d4:
	.word	1
	.pool

.L2ec:
	strh	r4, [r1]
.L2ee:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_880_20081fc

