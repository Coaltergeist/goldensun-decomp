	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009120
	push	{r5, lr}
	mov	r0, #2
	bl	OvlFunc_948_20090b8
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L1152
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xce
	ldr	r3, [r3]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L1152
	bl	__Func_8093c00
	mov	r3, #0
	strh	r3, [r5]
.L1152:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009120

.thumb_func_start OvlFunc_948_200915c
	push	{r5, lr}
	mov	r0, #3
	bl	OvlFunc_948_20090b8
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L118e
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xce
	ldr	r3, [r3]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L118e
	bl	__Func_8093c00
	mov	r3, #0
	strh	r3, [r5]
.L118e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200915c

