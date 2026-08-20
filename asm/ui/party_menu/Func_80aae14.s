	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80aae14  @ 0x080aae14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r8, r1
	mov	r1, #0
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r1, [sp]
	mov	r2, r8
	ldrh	r3, [r2]
	mov	r12, r0
	mov	r10, r1
	mov	r11, r1
	cmp	r3, #0
	beq	.Laaeac
	ldr	r3, =0x3fff
	ldr	r5, [sp, #8]
	mov	r14, r3
	mov	r0, r8
	sub	r5, #2
.Laae46:
	ldrh	r2, [r0]
	mov	r3, r14
	and	r3, r2
	strh	r3, [r5, #2]
	mov	r1, #1
	add	r10, r1
	mov	r1, r12
	ldrh	r2, [r1]
	ldrh	r3, [r0]
	eor	r3, r2
	mov	r2, r14
	and	r3, r2
	add	r5, #2
	mov	r4, #0
	cmp	r3, #0
	beq	.Laae7e
	ldr	r7, .Laae90	@ 0x3fff
	mov	r6, r0
.Laae6a:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.Laae7e
	add	r1, #4
	ldrh	r3, [r6]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r7
	cmp	r3, #0
	bne	.Laae6a
.Laae7e:
	cmp	r4, #0x20
	bne	.Laae9c
	mov	r3, #1
	add	r11, r3
	ldr	r2, .Laae94	@ 0x8000
	ldrh	r3, [r5]
	orr	r3, r2
	strh	r3, [r5]
	b	.Laae9c

	.align	2, 0
.Laae90:
	.word	0x3fff
.Laae94:
	.word	0x8000
	.pool

.Laae9c:
	mov	r3, r8
	add	r0, #4
	add	r3, #0x7c
	cmp	r0, r3
	bgt	.Laaeac
	ldrh	r3, [r0]
	cmp	r3, #0
	bne	.Laae46
.Laaeac:
	mov	r2, r12
	ldrh	r3, [r2]
	mov	r1, #0
	mov	r9, r1
	cmp	r3, #0
	beq	.Laaf38
	mov	r1, r10
	ldr	r2, [sp, #8]
	lsl	r3, r1, #1
	mov	r14, r12
	add	r0, r3, r2
	mov	r7, #0
.Laaec4:
	mov	r1, r12
	ldrh	r3, [r7, r1]
	mov	r1, r8
	ldrh	r2, [r1]
	eor	r3, r2
	ldr	r2, =0x3fff
	and	r3, r2
	mov	r4, #0
	cmp	r3, #0
	beq	.Laaef0
	ldr	r6, .Laaf04	@ 0x3fff
	mov	r5, r14
.Laaedc:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.Laaef0
	add	r1, #4
	ldrh	r3, [r5]
	ldrh	r2, [r1]
	eor	r3, r2
	and	r3, r6
	cmp	r3, #0
	bne	.Laaedc
.Laaef0:
	cmp	r4, #0x20
	bne	.Laaf1a
	ldr	r3, [sp]
	add	r3, #1
	str	r3, [sp]
	mov	r1, r12
	ldrh	r3, [r7, r1]
	ldr	r2, =0x3fff
	b	.Laaf0c

	.align	2, 0
.Laaf04:
	.word	0x3fff
	.pool

.Laaf0c:
	and	r2, r3
	ldr	r3, =0x4000
	orr	r2, r3
	strh	r2, [r0]
	mov	r2, #1
	add	r0, #2
	add	r10, r2
.Laaf1a:
	mov	r1, #1
	add	r9, r1
	mov	r3, #4
	mov	r2, r9
	add	r7, #4
	add	r14, r3
	cmp	r2, #0x1f
	bgt	.Laaf38
	mov	r1, r12
	ldrh	r3, [r7, r1]
	cmp	r3, #0
	bne	.Laaec4
	b	.Laaf38

	.pool_aligned

.Laaf38:
	ldr	r3, [sp, #4]
	mov	r2, r11
	str	r2, [r3]
	ldr	r1, [sp]
	ldr	r3, [sp, #0x2c]	@ 0x2c
	mov	r0, r10
	str	r1, [r3]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80aae14

