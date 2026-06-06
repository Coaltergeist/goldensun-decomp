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

