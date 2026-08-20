	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_2009240
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lm939_128c
	ldr	r2, =0xff700000
	ldr	r3, [r0, #8]
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #14
	cmp	r3, r2
	bhi	.Lm939_128c
	mov	r3, #0xa8
	ldr	r0, [r0, #0x10]
	lsl	r3, #16
	cmp	r0, r3
	blt	.Lm939_128c
	mov	r2, #0xb0
	lsl	r2, #16
	cmp	r0, r2
	bge	.Lm939_128c
	ldr	r0, =OvlFunc_939_2009240
	bl	__StopTask
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.Lm939_128c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2009240

