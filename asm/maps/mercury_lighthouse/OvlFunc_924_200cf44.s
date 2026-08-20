	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200cf44
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	mov	r1, #0xd2
	mov	r2, #0x96
	lsl	r2, #18
	mov	r0, #0xb
	lsl	r1, #18
	ldr	r5, [r3]
	bl	__MapActor_SetPos
	mov	r0, #0x5d
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r1, #0xb
	mov	r0, #3
	bl	__Func_80970f8
	ldr	r3, =0x71c
	add	r5, r3
	ldrb	r2, [r5]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r5]
	bl	__Func_809728c
	mov	r0, #1
	bl	__FieldMove
	bl	__Func_8097174
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200cf44

