	.include "macros.inc"

.thumb_func_start OvlFunc_958_2009080
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__Func_80916b0
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L10ba
	ldr	r0, =0x9a3
	bl	__Func_8079374
	ldr	r0, =0x9a5
	bl	__Func_8079374
	ldr	r0, =0x9a4
	bl	__Func_8079374
	ldr	r0, =0x9a6
	bl	__Func_8079374
	ldr	r0, =0x9a5
	bl	__Func_8079358
	ldr	r0, =0x9a4
	bl	__Func_8079358
.L10ba:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2009080

.thumb_func_start OvlFunc_958_20090f0
	push	{lr}
	bl	__Func_8093c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_20090f0

.thumb_func_start OvlFunc_958_20090fc
	push	{lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_8092054
	bl	__Func_80916b0
	mov	r0, #8
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bgt	.L1138
	mov	r0, #8
	bl	OvlFunc_958_20091f8
	mov	r3, #0x1b
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x9a2
	bl	__Func_8079358
.L1138:
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_20090fc

.thumb_func_start OvlFunc_958_2009148
	push	{lr}
	bl	OvlFunc_958_20083a8
	bl	OvlFunc_958_2009158
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2009148

.thumb_func_start OvlFunc_958_2009158
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	ble	.L11b4
	mov	r3, #0x6b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x11
	mov	r2, #1
	mov	r0, #0x6c
	bl	__Func_8010704
	mov	r0, #8
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xae
	mov	r2, #0x90
	lsl	r2, #17
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_80923e4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x9a
	bl	__Func_80f9080
	ldr	r0, =0x9a5
	bl	__Func_8079358
.L11b4:
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2009158

