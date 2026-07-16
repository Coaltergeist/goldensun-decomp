	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008754
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r2, r3
	mov	r10, r2
	sub	sp, #0x10
	bl	__CutsceneStart
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L782
	mov	r3, r10
	str	r2, [r3, #0x18]
	str	r2, [r3, #0x1c]
	b	.L78c
.L782:
	mov	r3, #1
	neg	r3, r3
	mov	r2, r10
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
.L78c:
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, #0xa3
	bl	__PlaySound
	ldr	r3, =0x1df
	mov	r8, r3
.L7b4:
	bl	__Random
	mov	r2, r10
	mov	r5, r0
	ldr	r0, [r2, #0x24]
	bl	OvlFunc_common2_304
	lsl	r5, #11
	lsr	r5, #16
	str	r0, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r0, r5
	bl	OvlFunc_common2_304
	mov	r7, r1
	mov	r6, r0
	cmp	r5, #0
	bge	.L7e4
	ldr	r2, =0x41f00000
	ldr	r3, =0
	bl	OvlFunc_common2_254
	mov	r7, r1
	mov	r6, r0
.L7e4:
	mov	r3, r7
	mov	r2, r6
	ldr	r0, =0x40b26e97
	ldr	r1, =0x8d4fdf3b
	bl	OvlFunc_common2_28c
	mov	r3, r1
	mov	r2, r0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0xc]
	bl	OvlFunc_common2_28c
	bl	OvlFunc_common2_380
	mov	r3, r10
	str	r0, [r3, #0x24]
	mov	r0, #1
	bl	__CutsceneWait
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bge	.L7b4
	mov	r5, #6
	mov	r2, #0
	mov	r6, #6
	mov	r8, r2
	lsl	r7, r5, #10
.L820:
	lsl	r1, r5, #5
	orr	r1, r7
	orr	r1, r6
	ldr	r0, =REG_BLDALPHA
	bl	__SetRegAnimDest
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #0x14
	bl	_modsi3_RAM
	cmp	r0, #0
	bne	.L842
	sub	r6, #1
	sub	r5, #1
.L842:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0x45
	ble	.L820
	mov	r3, #0x13
	mov	r2, #0x5b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x53
	mov	r2, #0xf
	mov	r3, #8
	mov	r0, #0x13
	bl	__Func_80105d4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	bl	__Func_800fe9c
	bl	__Func_8012350
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008754

	.section .text.after_8944, "ax", %progbits
