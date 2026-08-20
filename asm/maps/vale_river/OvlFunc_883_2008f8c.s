	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_2008f8c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm883_7586
	mov	r1, #0x34
	mov	r2, #0x4c
	bl	__Func_8010560
	mov	r1, #0xbb
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x4d6
	bl	__MapActor_TravelToAnim
	mov	r0, #9
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008f8c

