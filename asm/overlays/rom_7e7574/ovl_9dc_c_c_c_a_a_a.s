	.include "macros.inc"

.thumb_func_start OvlFunc_959_200cd50
	push	{r5, lr}
	ldr	r5, =0x256c
	mov	r0, r5
	bl	__Func_8092b94
	ldr	r0, =0x800d
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xea
	bl	__Func_8078698
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L4d78
	add	r0, r5, #2
	mov	r1, #1
	bl	__Func_801776c
.L4d78:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cd50

