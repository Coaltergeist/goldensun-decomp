	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80051e8
	push	{r5, lr}
	sub	sp, #0x30
	mov	r5, sp
	mov	r2, r5
	bl	Func_8004fe4
	ldr	r3, =Func_8000a30
	mov	r0, r5
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80051e8

	.section .rodata
	.global .L7994

.L7994:
	.incrom 0x7994, 0x79b0
