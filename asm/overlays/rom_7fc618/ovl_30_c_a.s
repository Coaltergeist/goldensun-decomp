	.include "macros.inc"

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L1d8
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L1ec
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	push	{lr}
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_955b0
	mov	r0, #0x30
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_64
	push	{lr}
	mov	r0, #9
	mov	r1, #1
	mov	r2, #0
	bl	__Func_955b0
	mov	r0, #0x44
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_64

.thumb_func_start OvlFunc_7c
	push	{lr}
	mov	r0, #0xa
	mov	r1, #2
	mov	r2, #0
	bl	__Func_955b0
	mov	r0, #0x58
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_94
	push	{lr}
	mov	r0, #0xb
	mov	r1, #3
	mov	r2, #0
	bl	__Func_955b0
	mov	r0, #0x6c
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_94

.thumb_func_start OvlFunc_ac
	ldr	r0, =.L264
	bx	lr
.func_end OvlFunc_ac

