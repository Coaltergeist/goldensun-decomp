	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200bc48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x4c
	str	r0, [sp, #0x14]
	mov	r0, #0xd8
	mov	r11, r2
	mov	r9, r3
	str	r1, [sp, #0x10]
	bl	__PlaySound
	mov	r2, #0
	mov	r3, #6
	mov	r8, r2
	add	r7, sp, #0x18
	mov	r10, r3
.Lm924_3c70:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Lm924_3cf4
	mov	r3, #7
	add	r6, sp, #0x24
	str	r3, [r6, #4]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm924_3c8c
	mov	r3, #5
	str	r3, [r6, #4]
.Lm924_3c8c:
	ldr	r3, =0x9999
	mov	r2, r8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #0
	str	r3, [r7]
	str	r3, [r7, #4]
	str	r3, [r7, #8]
	lsr	r3, r2, #1
	mov	r2, r10
	sub	r3, r2, r3
	ldr	r2, =0x1999
	mov	r1, r9
	mov	r0, r3
	mul	r0, r2
	mov	r2, r7
	bl	__vec3_translate
	bl	__Random
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r5, #1
	mov	r3, r10
	lsr	r5, #16
	sub	r5, r3, r5
	ldr	r2, [sp, #0x14]
	lsl	r5, #16
	add	r5, r2, r5
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	ldr	r1, [r7, #4]
	lsl	r2, #1
	mov	r3, r10
	lsr	r2, #16
	sub	r2, r3, r2
	ldr	r3, [r7]
	str	r1, [sp]
	ldr	r1, [r7, #8]
	str	r1, [sp, #4]
	mov	r1, #0x90
	lsl	r1, #12
	lsl	r2, #16
	str	r1, [sp, #8]
	add	r2, r11
	mov	r0, r5
	ldr	r1, [sp, #0x10]
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Lm924_3cf4:
	mov	r0, #2
	bl	__WaitFrames
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xb
	bls	.Lm924_3c70
	add	sp, #0x4c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200bc48

