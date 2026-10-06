	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_2008db4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #24
	mov	r7, r0
	mov	r6, #0
	mov	r5, #8
	mov	r8, r2
.Lm926_dd0:
	mov	r0, r5
	bl	__WaitFrames
	ldr	r3, [r7, #0x10]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r7, #0x10]
	add	r6, #1
	mov	r3, r8
	str	r3, [r7, #0x40]
	sub	r5, #2
	cmp	r6, #3
	bls	.Lm926_dd0
	ldr	r3, [r7, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	mov	r0, #0xe3
	bl	__PlaySound
	ldr	r3, =0xfff80000
	ldr	r2, [r7, #0x10]
	mov	r8, r3
	ldr	r6, =0xffffcccd
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	ldr	r3, =0xffff3334
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	ldr	r3, =0xcccc
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, =0xfffa0000
	mov	r3, #0xa0
	add	r0, r2
	lsl	r3, #12
	ldr	r2, [r7, #0x10]
	mov	r8, r3
	ldr	r6, =0xffff0000
	ldr	r3, =0x3333
	ldr	r1, [r7, #0xc]
	add	r2, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r10, r3
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	mov	r2, #0xc0
	lsl	r2, #11
	add	r0, r2
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	mov	r3, r10
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008db4

