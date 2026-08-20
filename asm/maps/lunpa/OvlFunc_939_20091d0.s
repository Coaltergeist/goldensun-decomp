	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_20091d0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x241
	ldr	r5, [r3]
	bl	__ClearFlag
	mov	r0, #0x90
	lsl	r0, #2
	bl	__ClearFlag
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xff97ffff
	ldr	r3, [r0, #8]
	add	r3, r2
	ldr	r2, =0x87fffe
	cmp	r3, r2
	bhi	.Lm939_1218
	mov	r3, #0xa0
	ldr	r0, [r0, #0x10]
	lsl	r3, #16
	cmp	r0, r3
	ble	.Lm939_1218
	mov	r2, #0xf8
	lsl	r2, #16
	cmp	r0, r2
	bge	.Lm939_1218
	ldr	r0, =OvlFunc_939_2009240
	bl	__StopTask
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.Lm939_1218:
	bl	OvlFunc_939_200918c
	mov	r0, #0x91
	lsl	r0, #2
	bl	__ClearFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20091d0

