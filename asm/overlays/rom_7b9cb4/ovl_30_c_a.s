	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b5ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #7
	add	r6, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	sub	sp, #0xc
	and	r6, r3
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, #0xc0
	mov	r1, r6
	lsl	r0, #13
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__vec3_translate
	ldr	r3, [r5]
	mov	r1, #0x80
	lsl	r1, #12
	ldr	r2, =0xfff00000
	add	r3, r1
	and	r3, r2
	mov	r9, r3
	ldr	r3, [r5, #8]
	add	r3, r1
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	mov	r1, #5
	mov	r10, r3
	add	r6, r2
	bl	__Actor_SetAnim
	mov	r0, #0xb8
	bl	__PlaySound
	mov	r3, #0xf
	mov	r8, r3
.L3610:
	mov	r2, #0x80
	lsl	r2, #3
	add	r6, r2
	mov	r0, #0xc0
	mov	r2, r10
	mov	r3, r9
	str	r2, [r5, #8]
	lsl	r0, #13
	mov	r1, r6
	mov	r2, r5
	str	r3, [r5]
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r7, #8]
	mov	r2, #0x80
	ldr	r3, [r5, #8]
	lsl	r2, #7
	str	r3, [r7, #0x10]
	add	r3, r6, r2
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L3610
	mov	r0, #0xe9
	bl	__PlaySound
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b5ac

.thumb_func_start OvlFunc_932_200b668
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldrh	r3, [r7, #6]
	ldr	r2, =0xffffc000
	add	r6, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	sub	sp, #0xc
	and	r6, r3
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, #0xc0
	mov	r1, r6
	lsl	r0, #13
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__vec3_translate
	ldr	r3, [r5]
	mov	r1, #0x80
	lsl	r1, #12
	ldr	r2, =0xfff00000
	add	r3, r1
	and	r3, r2
	mov	r9, r3
	ldr	r3, [r5, #8]
	add	r3, r1
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	mov	r1, #6
	mov	r10, r3
	add	r6, r2
	bl	__Actor_SetAnim
	mov	r0, #0xb8
	bl	__PlaySound
	mov	r3, #0xf
	mov	r8, r3
.L36ca:
	ldr	r2, =0xfffffc00
	mov	r0, #0xc0
	add	r6, r2
	mov	r2, r10
	mov	r3, r9
	str	r2, [r5, #8]
	lsl	r0, #13
	mov	r1, r6
	mov	r2, r5
	str	r3, [r5]
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r7, #8]
	ldr	r2, =0xffffc000
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	add	r3, r6, r2
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L36ca
	mov	r0, #0xe9
	bl	__PlaySound
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b668
