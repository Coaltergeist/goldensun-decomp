	.include "macros.inc"

.thumb_func_start OvlFunc_883_2008c9c
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0x14
	mov	r1, #0xa
	mov	r0, #0
	bl	__Func_8092848
	ldr	r0, =0x1c8d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	ldr	r0, =0x81f
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008c9c

.thumb_func_start OvlFunc_883_2008cd0
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	ldr	r0, =0x1c9a
	bl	__Func_8092b94
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008cd0

.thumb_func_start OvlFunc_883_2008d2c
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_809280c
	ldr	r0, =0x1c9d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8093054
	ldr	r0, =0x307
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008d2c

.thumb_func_start OvlFunc_883_2008d70
	push	{lr}
	mov	r0, #0x84
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_8079358
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
	bl	__Func_8079374
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
	bl	__Func_80f9080
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
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Le02
	bl	OvlFunc_883_2008fec
	b	.Le0e
.Le02:
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #1
	bl	__Func_8091e9c
.Le0e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008df0

