	.include "macros.inc"

.thumb_func_start OvlFunc_930_2008054
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r2, r0
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_80044d0
	strh	r0, [r5, #6]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_2008054

.thumb_func_start OvlFunc_930_200807c
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.L94
	ldr	r0, =.L1844
	b	.L96
.L94:
	ldr	r0, =.L17b4
.L96:
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_200807c

