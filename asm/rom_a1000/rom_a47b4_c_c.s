	.include "macros.inc"

.thumb_func_start Func_80a4e68  @ 0x080a4e68
	push	{lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x86
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	mov	r3, #5
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0
	mov	r3, #0x11
	bl	Func_80a23f4
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80a4e68

.thumb_func_start Func_80a4e90  @ 0x080a4e90
	push	{lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x86
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0
	mov	r3, #0x11
	bl	Func_80a23f4
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80a4e90

.thumb_func_start Func_80a4eb8  @ 0x080a4eb8
	push	{lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x86
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	mov	r3, #7
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0
	mov	r3, #0x11
	bl	Func_80a23f4
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80a4eb8

.thumb_func_start Func_80a4ee0  @ 0x080a4ee0
	push	{lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x86
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0
	mov	r3, #0x11
	bl	Func_80a23f4
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80a4ee0

	.section .rodata
	.global .Laf21c
	.global .Laf220
	.global .Laf224
	.global .Laf228

.Laf21c:
	.incrom 0xaf21c, 0xaf220
.Laf220:
	.incrom 0xaf220, 0xaf224
.Laf224:
	.incrom 0xaf224, 0xaf228
.Laf228:
	.incrom 0xaf228, 0xaf22c
