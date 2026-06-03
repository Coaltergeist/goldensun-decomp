	.include "macros.inc"

.thumb_func_start Func_8093530
	push	{lr}
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	Func_80048f4
	mov	r3, #0xf0
	lsl	r3, #1
	add	r0, r3
	ldr	r0, [r0]
	bl	_Func_800ca6c
	mov	r0, #2
	bl	Func_809163c
	pop	{r0}
	bx	r0
.func_end Func_8093530

