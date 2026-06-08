	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_2008050
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092304
	mov	r3, #0xb6
	lsl	r3, #1
	add	r5, r3
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2008050

