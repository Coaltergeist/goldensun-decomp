	.include "macros.inc"

.thumb_func_start OvlFunc_891_20095d4
	push	{lr}
	mov	r1, #0xd0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #15
	mov	r3, #0
	bl	__Func_8012078
	mov	r0, #0xa
	mov	r1, #0xe
	mov	r2, #7
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.L15f8
	bl	OvlFunc_891_200a244
.L15f8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20095d4

.thumb_func_start OvlFunc_891_20095fc
	push	{lr}
	mov	r1, #0xb0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #15
	mov	r3, #0
	bl	__Func_8012078
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #7
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.L1620
	bl	OvlFunc_891_200a2f4
.L1620:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20095fc

.thumb_func_start OvlFunc_891_2009624
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.L1666
	mov	r3, r5
	sub	r3, #0x11
	cmp	r3, #1
	bhi	.L1666
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0xff
	bl	__Func_8012078
	mov	r1, #0x90
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0xff
	bl	__Func_8012078
.L1666:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009624

