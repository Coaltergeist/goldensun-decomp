	.include "macros.inc"

.thumb_func_start Func_80ad274
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r5, #0x89
	ldr	r7, [r3]
	sub	sp, #4
	mov	r6, #0
	lsl	r5, #2
	mov	r2, #3
.Lad28a:
	ldr	r0, [r5, r7]
	cmp	r0, #0
	beq	.Lad29a
	str	r2, [sp]
	bl	_Func_800bdd4
	str	r6, [r5, r7]
	ldr	r2, [sp]
.Lad29a:
	sub	r2, #1
	add	r5, #4
	cmp	r2, #0
	bge	.Lad28a
	ldr	r1, =.Laf304
	mov	r3, #0x8d
	lsl	r3, #2
	mov	r10, r1
	mov	r1, #0x89
	add	r6, r7, r3
	lsl	r1, #2
	mov	r3, #0
	add	r7, r1
	mov	r8, r3
	mov	r2, #3
.Lad2b8:
	mov	r1, r8
	mov	r3, r10
	ldr	r0, [r1, r3]
	str	r2, [sp]
	bl	_Func_800bc70
	mov	r5, r0
	ldr	r2, [sp]
	cmp	r5, #0
	beq	.Lad2d4
	mov	r1, #2
	bl	_Func_800ba30
	ldr	r2, [sp]
.Lad2d4:
	ldr	r3, .Lad2f8	@ 0x10
	stmia	r7!, {r5}
	strh	r3, [r6]
	ldr	r3, .Lad2fc	@ 0x20
	mov	r1, #4
	sub	r2, #1
	strh	r3, [r6, #8]
	add	r8, r1
	add	r6, #2
	cmp	r2, #0
	bge	.Lad2b8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80ad35c
	bl	Func_80041d8
	add	sp, #4
	b	.Lad30c

	.align	2, 0
.Lad2f8:
	.word	0x10
.Lad2fc:
	.word	0x20
	.pool

.Lad30c:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ad274

