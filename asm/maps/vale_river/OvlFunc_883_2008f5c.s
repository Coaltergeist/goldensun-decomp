	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_2008f5c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm883_7570
	mov	r1, #0x31
	mov	r2, #0x45
	bl	__Func_8010560
	mov	r1, #0xa3
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x466
	bl	__MapActor_TravelToAnim
	mov	r0, #8
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008f5c

