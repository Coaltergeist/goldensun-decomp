	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008ee0
	mov	r1, r0
	add	r1, #0x64
	ldrh	r3, [r1]
	ldr	r2, =3
	lsl	r3, #16
	asr	r3, #18
	ldr	r4, =.L4468
	and	r3, r2
	lsl	r3, #2
	ldr	r3, [r4, r3]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	mov	r2, #0xf
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
	b	.Lf0c

	.pool_aligned

.Lf0c:
	bx	lr
.func_end OvlFunc_957_2008ee0

.thumb_func_start OvlFunc_957_2008f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xfc
	lsl	r3, #17
	mov	r8, r3
	mov	r3, #0xc0
	lsl	r3, #13
	sub	sp, #0xc
	mov	r9, r1
	mov	r11, r2
	mov	r10, r3
	bl	__MapActor_GetActor
	mov	r3, r8
	mov	r5, sp
	mov	r6, r0
	str	r3, [r5]
	mov	r0, r9
	mov	r3, r10
	mov	r1, r11
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #8]
	mov	r7, #0x90
	ldr	r3, [r5, #8]
	lsl	r7, #16
	str	r3, [r6, #0xc]
	str	r7, [r6, #0x10]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008f10
