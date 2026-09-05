	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_200973c
	push	{r5, r6, r7, lr}
	ldr	r5, =.Lm951_2070
	ldr	r3, =.Lm951_20c0
	mov	r2, #0
	str	r2, [r5, #8]
	str	r2, [r5, #0x14]
	str	r2, [r5, #0x20]
	str	r2, [r5, #0x2c]
	str	r0, [r3]
	ldr	r3, =.Lm951_2134
	str	r2, [r3]
	ldr	r3, =0xffff
	strh	r3, [r5, #2]
	ldr	r3, =.Lm951_2130
	ldr	r7, =ewram_2000434
	mov	r6, r3
	str	r2, [r3]
	b	.Lm951_1766
.Lm951_1760:
	ldr	r3, [r6]
	add	r3, #1
	str	r3, [r6]
.Lm951_1766:
	ldr	r3, [r6]
	cmp	r3, #0x32
	bne	.Lm951_1776
	mov	r0, #0x96
	lsl	r0, #1
	bl	__PlaySound
	ldr	r3, [r6]
.Lm951_1776:
	cmp	r3, #0x10
	bne	.Lm951_1816
	ldr	r0, [r7]
	mov	r1, #0x1d
	bl	__MapActor_SetAnim
	mov	r3, #0
	strh	r3, [r5, #2]
	ldr	r3, =0x14ccc
	str	r3, [r5, #0x40]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x44]
	ldr	r3, =0xfffe0000
	str	r3, [r5, #0x48]
	mov	r3, #0xf0
	lsl	r3, #15
	str	r3, [r5, #4]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #8]
	mov	r3, #0x98
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, #0x96
	lsl	r3, #1
	str	r3, [r5, #0x4c]
	ldr	r3, =.Lm951_20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lm951_17e6
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetAnim
	mov	r0, #0xf
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	mov	r0, #0xe
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	mov	r0, #0xd
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	b	.Lm951_1816
.Lm951_17e6:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetAnim
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	mov	r0, #9
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_951_2008e44
.Lm951_1816:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =.Lm951_2134
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lm951_1760
	ldr	r3, =.Lm951_2138
	ldr	r0, [r3]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_951_200973c

