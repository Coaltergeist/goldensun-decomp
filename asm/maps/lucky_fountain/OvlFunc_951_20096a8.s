	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_20096a8
	push	{r5, r6, r7, lr}
	ldr	r0, =.Lm951_2070
	ldr	r6, =.Lm951_205a
	ldr	r2, =.Lm951_20d0
	ldr	r5, =.Lm951_2062
	ldr	r4, =.Lm951_205e
	mov	r7, #0
	mov	r1, #0
.Lm951_16b8:
	ldrb	r3, [r6]
	lsl	r3, #16
	str	r3, [r2]
	ldrb	r3, [r4]
	lsl	r3, #16
	str	r3, [r2, #8]
	ldrh	r3, [r5]
	add	r7, #1
	str	r1, [r2, #4]
	strh	r3, [r2, #0xc]
	strh	r1, [r2, #0xe]
	strh	r1, [r2, #0x10]
	strh	r1, [r2, #0x12]
	strh	r1, [r2, #0x14]
	add	r6, #1
	add	r4, #1
	add	r5, #2
	add	r2, #0x18
	cmp	r7, #4
	bne	.Lm951_16b8
	ldr	r3, =0xffe20000
	str	r3, [r0, #4]
	mov	r3, #0xc8
	mov	r2, #0
	lsl	r3, #15
	str	r2, [r0, #8]
	str	r3, [r0, #0xc]
	str	r2, [r0, #0x40]
	str	r2, [r0, #0x44]
	str	r2, [r0, #0x48]
	str	r2, [r0, #0x4c]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	ldr	r1, =0xc83
	ldr	r0, =OvlFunc_951_2008e5c
	bl	__StartTask
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20096a8

