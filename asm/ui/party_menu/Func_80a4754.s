	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a4754  @ 0x080a4754
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xbc
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_GetItemInfo
	ldrb	r3, [r0, #0xc]
	cmp	r3, #2
	bne	.La479e
	bl	Random
	mov	r3, #0x80
	lsl	r3, #6
	cmp	r0, r3
	bcs	.La479e
	ldr	r2, =0x21a
	add	r3, r5, r2
	sub	r2, #0xa6
	ldrb	r0, [r3]
	add	r3, r5, r2
	ldrh	r1, [r3]
	bl	_BreakItem
	mov	r0, #0x8a
	bl	_PlaySound
	mov	r2, #1
	ldr	r0, =0xb86
	neg	r2, r2
	mov	r1, #0
	bl	Func_80a1d08
.La479e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80a4754

	.section .rodata.rom_a1814_c_c_c
	.global .Laf2e4
	.global .Laf2a6
	.global .Laf2b1
	.global .Laf2bc
	.global .Laf2d0
	.global .Laf294
	.global .Laf29d

.Laf294:
	.incrom 0xaf294, 0xaf29d
.Laf29d:
	.incrom 0xaf29d, 0xaf2a6
.Laf2a6:
	.incrom 0xaf2a6, 0xaf2b1
.Laf2b1:
	.incrom 0xaf2b1, 0xaf2bc
.Laf2bc:
	.incrom 0xaf2bc, 0xaf2d0
.Laf2d0:
	.incrom 0xaf2d0, 0xaf2e4
.Laf2e4:
	.incrom 0xaf2e4, 0xaf2fc
