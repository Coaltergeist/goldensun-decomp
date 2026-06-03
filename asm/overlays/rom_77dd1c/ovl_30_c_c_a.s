	.include "macros.inc"

.thumb_func_start OvlFunc_882_200810c
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
.func_end OvlFunc_882_200810c

.thumb_func_start OvlFunc_882_2008134
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
.func_end OvlFunc_882_2008134

.thumb_func_start OvlFunc_882_200815c
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =0x834
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L16e
	bl	__Func_8095214
.L16e:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r0, r5
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200815c

.thumb_func_start OvlFunc_882_2008198
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L5774
	mov	r1, #0x2d
	mov	r2, #0xb
	bl	__Func_8010560
	mov	r2, #0xd2
	ldr	r1, =0x101
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #3
	bl	__Func_809163c
	mov	r0, #0xb
	bl	OvlFunc_882_200815c
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008198

.thumb_func_start OvlFunc_882_20081d0
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #1
	bl	OvlFunc_882_200815c
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_20081d0

.thumb_func_start OvlFunc_882_20081e4
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #3
	bl	OvlFunc_882_200815c
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_20081e4

.thumb_func_start OvlFunc_882_20081f8
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #4
	bl	OvlFunc_882_200815c
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_20081f8

