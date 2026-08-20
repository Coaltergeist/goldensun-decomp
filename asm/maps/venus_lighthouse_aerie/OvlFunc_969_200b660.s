	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200b660
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r5, r7
	add	r5, #0x64
	ldrh	r6, [r5]
	mov	r8, r0
	mov	r0, r6
	bl	__cos
	mov	r1, #0x62
	add	r1, r7
	ldrb	r2, [r1]
	ldr	r3, [r7, #0x30]
	add	r3, r2
	add	r3, #6
	mov	r2, r3
	mul	r2, r0
	mov	r10, r1
	mov	r1, r8
	ldr	r3, [r1, #8]
	add	r3, r2
	str	r3, [r7, #8]
	mov	r0, r6
	bl	__sin
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #4
	mov	r2, r3
	mul	r2, r0
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	add	r3, r2
	ldr	r2, [r7, #8]
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x38]
	str	r3, [r7, #0x40]
	ldr	r2, =0xfffff800
	ldrh	r3, [r5]
	add	r3, r2
	strh	r3, [r5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b660

