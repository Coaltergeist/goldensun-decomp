	.include "macros.inc"

.thumb_func_start OvlFunc_901_2008754
	push	{r5, lr}
	ldr	r0, =0x1cbd
	bl	__MessageID
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0xb
	bl	OvlFunc_901_20084b4
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008754

