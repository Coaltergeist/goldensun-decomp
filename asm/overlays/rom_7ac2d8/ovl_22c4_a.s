	.include "macros.inc"

.thumb_func_start OvlFunc_924_200a2c4
	push	{r5, lr}
	mov	r0, #9
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_8004458
	lsl	r0, #2
	ldr	r1, [r5, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	add	r1, r0
	ldr	r2, [r5, #0x10]
	ldr	r0, [r5, #8]
	bl	OvlFunc_924_200bb24
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a2c4

.thumb_func_start OvlFunc_924_200a2ec
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_924_200a2c4
	bl	__StartTask
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_924_200a2ec

