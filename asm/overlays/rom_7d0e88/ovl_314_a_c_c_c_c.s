	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2008ba4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #0x20
	mov	r10, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r1, =.L2ce0
	mov	r5, #0
	ldr	r3, [r1, r5]
	cmp	r2, r3
	bne	.Lbce
	add	r7, sp, #8
	b	.Lbf0
.Lbce:
	add	r7, sp, #8
	mov	r12, r7
	mov	r6, #7
	mov	r4, r1
.Lbd6:
	mov	r3, r12
	add	r5, #1
	str	r6, [r3]
	cmp	r5, #5
	bhi	.Lbf2
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	add	r4, #4
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, [r4]
	cmp	r2, r3
	bne	.Lbd6
.Lbf0:
	str	r5, [r7]
.Lbf2:
	ldr	r2, [r7]
	cmp	r2, #6
	bls	.Lbfc
	mov	r0, #0
	b	.Lca6
.Lbfc:
	ldr	r3, [r0, #8]
	str	r3, [r7, #8]
	mov	r12, r3
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #0xc]
	ldr	r0, [r0, #0x10]
	lsl	r1, r2, #4
	str	r0, [r7, #0x10]
	ldr	r4, =gScript_884__0200acf8
	add	r5, r1, #4
	ldr	r2, [r4, r5]
	mov	r14, r0
	cmp	r2, #0
	bge	.Lc1a
	neg	r2, r2
.Lc1a:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.Lc26
	neg	r3, r3
.Lc26:
	add	r3, r2, r3
	ldr	r0, [r4, r1]
	asr	r3, #4
	mov	r8, r3
	mov	r6, r0
	cmp	r0, #0
	bge	.Lc36
	neg	r6, r0
.Lc36:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.Lc42
	neg	r3, r3
.Lc42:
	lsl	r0, #16
	add	r0, r12
	str	r0, [r7, #8]
	ldr	r1, [r4, r5]
	lsl	r1, #16
	add	r1, r14
	asr	r0, #20
	asr	r1, #20
	add	r6, r3
	mov	r3, #0x9e
	str	r0, [r7, #8]
	str	r1, [r7, #0x10]
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	asr	r5, r3, #20
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	asr	r3, #20
	add	r2, r5, r0
	add	r3, r1
	asr	r6, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r6
	mov	r3, r8
	bl	__Func_8010704
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r5, #0xff
	str	r3, [sp]
	mov	r0, #0
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_947_2008528
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r0, #2
	str	r3, [sp]
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_947_2008528
	mov	r0, #1
.Lca6:
	add	sp, #0x20
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2008ba4

.thumb_func_start OvlFunc_947_2008cc0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	lsl	r1, #7
	ldr	r4, [sp, #0x30]
	mov	r10, r2
	add	r1, r0
	ldr	r2, =gBuffer
	lsl	r1, #2
	add	r3, r4, r3
	add	r5, r1, r2
	cmp	r4, r3
	bge	.Ld4e
	str	r3, [sp, #4]
	mov	r6, r10
	mov	r3, #0x80
	sub	r3, r6
	lsl	r3, #2
	mov	r11, r3
	ldr	r3, [sp, #0x28]
	lsl	r3, #4
	mov	r9, r3
.Lcf6:
	ldr	r0, [sp, #0x2c]
	mov	r1, r10
	add	r2, r0, r1
	cmp	r0, r2
	bge	.Ld44
	ldr	r3, =0xfff
	mov	r7, #0xf
	mov	r8, r3
	mov	r3, r4
	and	r3, r7
	add	r3, r9
	lsl	r3, #5
	ldr	r6, =0x6002800
	str	r3, [sp]
	mov	r14, r6
	mov	r12, r2
.Ld16:
	ldr	r6, [sp]
	ldmia	r5!, {r1}
	mov	r3, r0
	mov	r2, r8
	and	r3, r7
	and	r1, r2
	add	r3, r6, r3
	ldr	r6, =ewram_2020000
	lsl	r1, #3
	add	r2, r1, r6
	ldr	r2, [r2]
	lsl	r3, #2
	mov	r6, r14
	str	r2, [r3, r6]
	ldr	r6, =ewram_2020004
	add	r2, r1, r6
	ldr	r1, =0x6002840
	ldr	r2, [r2]
	add	r3, r1
	add	r0, #1
	str	r2, [r3]
	cmp	r0, r12
	blt	.Ld16
.Ld44:
	ldr	r2, [sp, #4]
	add	r4, #1
	add	r5, r11
	cmp	r4, r2
	blt	.Lcf6
.Ld4e:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2008cc0

