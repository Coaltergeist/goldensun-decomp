	.include "macros.inc"

.thumb_func_start OvlFunc_883_2008d70
	push	{lr}
	mov	r0, #0x84
	lsl	r0, #2
	sub	sp, #8
	bl	__SetFlag
	mov	r3, #0xa
	mov	r2, #0x54
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x54
	mov	r2, #7
	mov	r3, #4
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008d70

.thumb_func_start OvlFunc_883_2008d98
	push	{lr}
	mov	r0, #0x84
	lsl	r0, #2
	sub	sp, #8
	bl	__ClearFlag
	mov	r3, #0xa
	mov	r2, #0x54
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x59
	mov	r2, #7
	mov	r3, #4
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008d98

.thumb_func_start OvlFunc_883_2008dc0
	push	{lr}
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r0, =.L7544
	mov	r1, #0x2d
	mov	r2, #0xb
	bl	__Func_8010560
	mov	r2, #0xd2
	mov	r0, #0
	ldr	r1, =0x101
	lsl	r2, #1
	bl	__Func_809218c
	mov	r0, #0xb
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008dc0

.thumb_func_start OvlFunc_883_2008df0
	push	{lr}
	ldr	r0, =0x801
	bl	__GetFlag
	cmp	r0, #0
	bne	.Le02
	bl	OvlFunc_883_2008fec
	b	.Le0e
.Le02:
	mov	r0, #0x7b
	bl	__PlaySound
	mov	r0, #1
	bl	__Func_8091e9c
.Le0e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008df0

