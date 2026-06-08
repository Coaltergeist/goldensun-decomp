	.include "macros.inc"

.thumb_func_start PreloadSpriteGFX  @ 0x0800b6b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	sub	sp, #4
	mov	r7, r1
	mov	r4, r2
	mov	r8, r3
	cmp	r6, #7
	bls	.Lb6d2
.Lb6ce:
	mov	r0, #0
	b	.Lb77e
.Lb6d2:
	ldr	r3, =iwram_3001e68
	ldr	r5, [r3]
	mov	r0, r4
	lsl	r3, r6, #3
	add	r5, r3
	str	r4, [sp]
	bl	_GetSpriteInfo
	ldr	r4, [sp]
	ldr	r2, =.L12fa0
	lsl	r3, r6, #12
	add	r5, #0x1c
	orr	r3, r4
	str	r3, [r5]
	mov	r1, #2
	ldrsh	r3, [r2, r1]
	lsl	r3, #16
	lsr	r3, #16
	mov	r10, r0
	str	r7, [r5, #4]
	ldrh	r0, [r2]
	add	r1, r2, #6
	mov	r5, #0
.Lb700:
	add	r2, #4
	cmp	r3, #0
	beq	.Lb6ce
	cmp	r3, r4
	beq	.Lb71e
	add	r5, #1
	cmp	r5, #0xff
	bhi	.Lb71e
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	lsl	r3, #16
	lsr	r3, #16
	ldrh	r0, [r2]
	add	r1, #4
	b	.Lb700
.Lb71e:
	bl	GetFile
	mov	r1, r7
	bl	DecompressLZ
	ldr	r3, [r7]
	mov	r4, r7
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb746
	mov	r2, r3
.Lb734:
	add	r3, r2, r7
	add	r5, #1
	stmia	r4!, {r3}
	cmp	r5, #0xff
	bhi	.Lb746
	ldr	r3, [r4]
	mov	r2, r3
	cmp	r3, #0
	bne	.Lb734
.Lb746:
	mov	r1, r8
	cmp	r1, #0
	beq	.Lb774
	mov	r2, r8
	sub	r2, #1
	add	r5, r4, #4
	add	r0, r7, r0
	cmp	r2, #4
	bls	.Lb75a
	mov	r2, #0
.Lb75a:
	ldr	r3, =Data_92b8
	lsl	r2, #8
	add	r2, r3
	cmp	r5, r0
	bcs	.Lb774
.Lb764:
	ldrb	r4, [r5]
	cmp	r4, #0xdf
	bhi	.Lb76e
	ldrb	r4, [r2, r4]
	strb	r4, [r5]
.Lb76e:
	add	r5, #1
	cmp	r5, r0
	bcc	.Lb764
.Lb774:
	mov	r2, r10
	ldrb	r3, [r2]
	ldrb	r2, [r2, #1]
	mov	r0, r2
	mul	r0, r3
.Lb77e:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end PreloadSpriteGFX

	.section .rodata

.L12fa0:
	.incrom 0x12fa0, 0x1307c
