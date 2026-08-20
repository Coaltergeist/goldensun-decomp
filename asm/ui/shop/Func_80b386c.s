	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b386c  @ 0x080b386c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r7, r0
	mov	r0, r10
	mov	r9, r2
	sub	sp, #4
	bl	_GetUnit
	mov	r2, r9
	lsl	r3, r2, #1
	mov	r6, r3
	add	r6, #0xd8
	ldrh	r3, [r0, r6]
	ldr	r5, =0x1ff
	and	r5, r3
	ldrh	r3, [r0, r6]
	lsr	r3, #11
	add	r3, #1
	mov	r8, r0
	mov	r11, r3
	cmp	r7, #0
	beq	.Lb391a
	mov	r0, r7
	bl	_Func_8016498
	ldr	r0, =0x182
	mov	r3, #0
	add	r0, r5, r0
	mov	r1, r7
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, r10
	mov	r1, r9
	bl	_CanRemoveItem
	mov	r3, #4
	neg	r3, r3
	cmp	r0, r3
	bne	.Lb38cc
	ldr	r0, =0xc94
	b	.Lb38d6
.Lb38cc:
	mov	r2, #3
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb38e2
	ldr	r0, =0xc95
.Lb38d6:
	mov	r1, r7
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	b	.Lb391a
.Lb38e2:
	mov	r3, r8
	ldrh	r0, [r3, r6]
	bl	Func_80b19cc
	ldr	r5, =0xc8d
	mov	r6, r11
	mul	r6, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, #8
	mov	r3, #8
	bl	_Func_801e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #5
	mov	r2, r7
	mov	r3, #0x28
	sub	r5, #5
	bl	_Func_801ea08
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x50
	mov	r3, #8
	bl	_Func_801e7c0
.Lb391a:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b386c

	.section .rodata
	.global .Lb4ab2
	.global .Lb4ab6
	.global .Lb41ac
	.global .Lb3940
	.global .Lb39c0
	.global .Lb3a40
	.global .Lb3ac0
	.global .Lb3b40
	.global .Lb3bc0
	.global .Lb3d40
	.global .Lb3e80
	.global .Lb3f80
	.global .Lb4100
	.global .Lb413c
	.global .Lb4146

.Lb3940:
	.incrom 0xb3940, 0xb39c0
.Lb39c0:
	.incrom 0xb39c0, 0xb3a40
.Lb3a40:
	.incrom 0xb3a40, 0xb3ac0
.Lb3ac0:
	.incrom 0xb3ac0, 0xb3b40
.Lb3b40:
	.incrom 0xb3b40, 0xb3bc0
.Lb3bc0:
	.incrom 0xb3bc0, 0xb3d40
.Lb3d40:
	.incrom 0xb3d40, 0xb3e80
.Lb3e80:
	.incrom 0xb3e80, 0xb3f80
.Lb3f80:
	.incrom 0xb3f80, 0xb4100
.Lb4100:
	.incrom 0xb4100, 0xb413c
.Lb413c:
	.incrom 0xb413c, 0xb4146
.Lb4146:
	.incrom 0xb4146, 0xb41ac
.Lb41ac:
	.incrom 0xb41ac, 0xb4ab2
.Lb4ab2:
	.incrom 0xb4ab2, 0xb4ab6
.Lb4ab6:
	.incrom 0xb4ab6, 0xb4ac2
