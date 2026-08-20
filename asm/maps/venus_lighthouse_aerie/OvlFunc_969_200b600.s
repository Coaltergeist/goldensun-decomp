	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200b600
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r6, r5
	add	r6, #0x64
	ldrh	r1, [r6]
	mov	r8, r1
	mov	r10, r0
	mov	r0, r8
	bl	__cos
	ldr	r3, [r5, #0x30]
	add	r3, #3
	mov	r2, r3
	mul	r2, r0
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r5, #8]
	bl	__sin
	mov	r2, r10
	ldr	r3, [r2, #0x10]
	lsl	r0, #1
	ldr	r2, [r5, #8]
	add	r3, r0
	str	r3, [r5, #0x10]
	str	r2, [r5, #0x38]
	str	r3, [r5, #0x40]
	ldr	r1, =0xfffff800
	ldrh	r3, [r6]
	add	r3, r1
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b600

