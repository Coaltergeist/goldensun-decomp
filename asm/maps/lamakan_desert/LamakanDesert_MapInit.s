	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LamakanDesert_MapInit
	push	{r5, lr}
	ldr	r0, =gState
	mov	r3, #0x8b
	lsl	r3, #2
	add	r2, r0, r3
	add	r3, #0x2c
	strh	r3, [r2]
	ldr	r2, =0x22e
	mov	r1, #0
	add	r3, r0, r2
	strh	r1, [r3]
	mov	r3, #0x8c
	lsl	r3, #2
	add	r2, r0, r3
	ldr	r3, =0x119
	strh	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r5, r0, r2
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x5c
	sub	sp, #8
	cmp	r2, r3
	bne	.Lm933_166c
	b	.Lm933_1846
.Lm933_166c:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	OvlFunc_933_2009c1c
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_933_2008cd0
	lsl	r1, #4
	bl	__StartTask
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.Lm933_16f8
	mov	r3, #0x40
	mov	r5, #0x7e
	str	r3, [sp]
	mov	r0, #0x16
	mov	r1, #7
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0x17
	mov	r1, #0x15
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x4c
	str	r3, [sp]
	mov	r0, #0x10
	mov	r1, #0x2a
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x50
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #0x2c
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x54
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0x37
	b	.Lm933_17f2
.Lm933_16f8:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.Lm933_17fe
	mov	r3, #0x40
	mov	r5, #0x7e
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #5
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0xb
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0xc
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x4c
	str	r3, [sp]
	mov	r0, #0x38
	mov	r1, #0x12
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x50
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0x16
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x54
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x17
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x58
	str	r3, [sp]
	mov	r0, #0x26
	mov	r1, #0x18
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x5c
	str	r3, [sp]
	mov	r0, #0x1a
	mov	r1, #0x1c
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x60
	str	r3, [sp]
	mov	r0, #0x11
	mov	r1, #0x23
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x64
	str	r3, [sp]
	mov	r0, #0x32
	mov	r1, #0x24
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x68
	str	r3, [sp]
	mov	r0, #0x22
	mov	r1, #0x2b
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x6c
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0x2e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x70
	str	r3, [sp]
	mov	r0, #0x1b
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x74
	str	r3, [sp]
	mov	r0, #0x2b
	mov	r1, #0x38
.Lm933_17f2:
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	b	.Lm933_1842
.Lm933_17fe:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.Lm933_1842
	mov	r0, #0xa9
	bl	__Func_8091ff0
	mov	r3, #0x40
	mov	r5, #0x7c
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0x12
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x15
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
.Lm933_1842:
	bl	OvlFunc_933_20084e4
.Lm933_1846:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end LamakanDesert_MapInit

