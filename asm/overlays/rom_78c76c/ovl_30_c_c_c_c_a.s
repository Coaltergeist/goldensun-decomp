	.include "macros.inc"

.thumb_func_start OvlFunc_891_2009b44
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r6, [sp, #0x18]
	mov	r9, r0
	mov	r5, r3
	mov	r8, r1
	mov	r10, r2
	bl	__Func_80916b0
	mov	r0, #0xb9
	bl	__Func_80f9080
	mov	r0, r9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, r9
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	lsl	r5, #4
	lsl	r6, #4
	strb	r3, [r0]
	mov	r1, #8
	mov	r0, #0
	add	r5, #8
	add	r6, #8
	bl	__Func_80924d4
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	__Func_8092128
	mov	r3, r8
	lsl	r3, #4
	mov	r8, r3
	mov	r3, r10
	lsl	r3, #4
	mov	r10, r3
	mov	r3, #8
	add	r8, r3
	add	r10, r3
	mov	r1, r8
	mov	r2, r10
	mov	r0, r9
	bl	__Func_8092128
	mov	r0, r9
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	bl	__Func_8091750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009b44

