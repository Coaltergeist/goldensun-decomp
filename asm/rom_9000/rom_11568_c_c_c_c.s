	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8011b00
	push	{r5, r6, lr}
	mov	r1, #0xb4
	mov	r0, #0x1c
	bl	Func_80048f4
	mov	r5, r0
	mov	r1, r5
	mov	r0, #0
	mov	r4, #0
.L11b12:
	str	r4, [r1]
	strh	r4, [r1, #4]
	strh	r4, [r1, #6]
	strh	r4, [r1, #8]
	strh	r4, [r1, #0xa]
	mov	r3, #0
.L11b1e:
	lsr	r2, r3, #16
	lsl	r3, r2, #1
	mov	r6, #0x80
	add	r2, #1
	add	r3, #0xc
	lsl	r2, #16
	lsl	r6, #13
	strh	r4, [r1, r3]
	mov	r3, r2
	cmp	r2, r6
	bne	.L11b1e
	mov	r2, #0x80
	lsl	r2, #9
	mov	r6, #0x80
	add	r3, r0, r2
	lsl	r6, #11
	add	r1, #0x2c
	mov	r0, r3
	cmp	r3, r6
	bne	.L11b12
	mov	r2, r5
	add	r2, #0xb0
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8011b00

.thumb_func_start Func_8011b54
	push	{r5, r6, r7, lr}
	lsl	r2, #16
	lsl	r3, #16
	asr	r7, r2, #16
	asr	r2, r3, #16
	ldr	r3, =iwram_3001ec0
	ldr	r4, [r3]
	mov	r5, r4
	lsl	r1, #16
	add	r5, #0xb0
	asr	r6, r1, #16
	ldrh	r1, [r5]
	lsl	r0, #16
	asr	r0, #16
	cmp	r1, #3
	bls	.L11b7a
	mov	r0, #1
	neg	r0, r0
	b	.L11bb8
.L11b7a:
	mov	r3, #0x2c
	mul	r1, r3
	lsl	r0, #16
	lsl	r3, r6, #16
	lsr	r3, #16
	lsr	r0, #12
	add	r0, r3
	mov	r3, #0xa0
	add	r1, r4, r1
	lsl	r3, #19
	lsl	r0, #1
	lsl	r2, #16
	mov	r4, #0x80
	add	r0, r3
	lsr	r2, #16
	mov	r3, #0
	lsl	r4, #24
	strh	r3, [r1, #4]
	strh	r3, [r1, #6]
	strh	r2, [r1, #0xa]
	str	r0, [r1]
	strh	r7, [r1, #8]
	ldr	r3, =REG_DMA3SAD
	add	r1, #0xc
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	mov	r0, #0
.L11bb8:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8011b54

.thumb_func_start Func_8011bc8
	push	{lr}
	ldr	r0, =Func_8011bf4
	bl	Func_8004278
	mov	r0, #0x1c
	bl	Func_8002dd8
	pop	{r0}
	bx	r0
.func_end Func_8011bc8

.thumb_func_start Func_8011be0
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8011bf4
	bl	Func_80041d8
	pop	{r0}
	bx	r0
.func_end Func_8011be0

.thumb_func_start Func_8011bf4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ec0
	ldr	r3, [r3]
	mov	r10, r3
	add	r3, #0xb0
	ldrh	r3, [r3]
	mov	r2, #3
	mov	r1, #0
	mov	r14, r1
	and	r2, r3
	sub	sp, #0x20
	cmp	r14, r2
	bcs	.L11cc2
	mov	r9, r2
.L11c18:
	mov	r3, #0x2c
	mov	r2, r14
	mul	r2, r3
	mov	r1, r10
	mov	r3, r2
	add	r5, r1, r3
	ldrh	r2, [r5, #6]
	mov	r3, r2
	cmp	r3, #0
	bne	.L11cae
	mov	r2, #4
	ldrsh	r7, [r5, r2]
	mov	r3, #0xa
	ldrsh	r2, [r5, r3]
	sub	r3, r2, r7
	lsl	r3, #24
	ldr	r1, [r5]
	lsl	r6, r2, #16
	mov	r4, r5
	lsr	r0, r3, #24
	lsr	r3, r6, #16
	mov	r8, r1
	add	r4, #0xc
	cmp	r0, r3
	bcs	.L11c60
	mov	r1, sp
	mov	r12, r3
.L11c4e:
	ldrh	r3, [r4]
	lsl	r2, r0, #1
	strh	r3, [r1, r2]
	add	r3, r0, #1
	lsl	r3, #24
	lsr	r0, r3, #24
	add	r4, #2
	cmp	r0, r12
	bcc	.L11c4e
.L11c60:
	lsl	r1, r7, #16
	mov	r7, r1
	lsr	r2, r6, #16
	lsr	r3, r7, #16
	mov	r0, #0
	sub	r2, r3
	cmp	r0, r2
	bge	.L11c86
	mov	r1, sp
	mov	r12, r2
.L11c74:
	ldrh	r3, [r4]
	lsl	r2, r0, #1
	strh	r3, [r1, r2]
	add	r3, r0, #1
	lsl	r3, #24
	lsr	r0, r3, #24
	add	r4, #2
	cmp	r0, r12
	blt	.L11c74
.L11c86:
	mov	r2, #0x80
	lsr	r4, r6, #16
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	mov	r0, sp
	mov	r1, r8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	lsl	r2, #9
	add	r1, r7, r2
	lsr	r3, r1, #16
	cmp	r3, r4
	bcc	.L11ca6
	mov	r1, #0
.L11ca6:
	lsr	r3, r1, #16
	strh	r3, [r5, #4]
	ldrh	r3, [r5, #8]
	b	.L11cb2
.L11cae:
	ldr	r1, =0xffff
	add	r3, r2, r1
.L11cb2:
	strh	r3, [r5, #6]
	mov	r3, r14
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r14, r3
	cmp	r14, r9
	bcc	.L11c18
.L11cc2:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8011bf4
