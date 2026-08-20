	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_2008e94
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
.Lm926_eb0:
	mov	r0, r5
	bl	__WaitFrames
	ldr	r3, [r7, #0x10]
	mov	r4, #0x80
	lsl	r4, #9
	add	r3, r4
	mov	r2, r8
	add	r6, #1
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x40]
	sub	r5, #2
	cmp	r6, #3
	bls	.Lm926_eb0
	ldr	r3, [r7, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	ldr	r3, [r7, #0x10]
	mov	r4, #0xc0
	lsl	r4, #13
	add	r3, r4
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r7, #0x40]
	mov	r0, #0xe3
	bl	__PlaySound
	mov	r6, #0xc0
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x3333
	lsl	r6, #12
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xffff3334
	str	r5, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r8, r4
	bl	OvlFunc_common0_10c
	ldr	r2, [r7, #0x10]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	mov	r4, r8
	add	r2, r6
	ldr	r3, =0xcccc
	str	r5, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, =0xfffa0000
	ldr	r3, =0xfff80000
	add	r0, r2
	ldr	r2, [r7, #0x10]
	mov	r10, r3
	mov	r6, #0x80
	ldr	r1, [r7, #0xc]
	add	r2, r10
	lsl	r6, #9
	mov	r3, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r4, #0xc0
	lsl	r4, #11
	ldr	r1, [r7, #0xc]
	add	r0, r4
	add	r2, r10
	mov	r3, r8
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
.func_end OvlFunc_926_2008e94

