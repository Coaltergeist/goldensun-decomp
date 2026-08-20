	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2008b98
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	mov	r7, r0
	sub	sp, #0x38
	mov	r0, #0
	cmp	r3, #0
	bne	.Lm968_c3e
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	cmp	r3, #0
	bne	.Lm968_bd6
	mov	r3, #0x80
	ldr	r2, [r7, #0x38]
	lsl	r3, #24
	cmp	r2, r3
	bne	.Lm968_bd0
	ldr	r3, [r7, #0x40]
	cmp	r3, r2
	beq	.Lm968_bd6
.Lm968_bd0:
	mov	r0, #0xf6
	bl	__PlaySound
.Lm968_bd6:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x8f
	add	r5, sp, #0x10
	lsl	r3, #1
	strh	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	ldr	r3, =0xfffffeb9
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x14]
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #3
	add	r0, r3
	lsr	r0, #16
	sub	r0, #4
	mov	r1, #0xa
	lsl	r0, #16
	bl	_divsi3_RAM
	mov	r6, r0
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #3
	add	r0, r3
	lsr	r0, #16
	sub	r0, #4
	mov	r1, #0xa
	lsl	r0, #16
	bl	_divsi3_RAM
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xffff0000
	add	r2, r3
	mov	r3, r8
	ldr	r4, [r7, #8]
	ldr	r1, [r7, #0xc]
	str	r3, [sp]
	ldr	r3, =0x1c0001
	str	r0, [sp, #4]
	str	r3, [sp, #8]
	mov	r0, r4
	mov	r3, r6
	str	r5, [sp, #0xc]
	bl	OvlFunc_968_2008118
	mov	r0, #0
.Lm968_c3e:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_2008b98

