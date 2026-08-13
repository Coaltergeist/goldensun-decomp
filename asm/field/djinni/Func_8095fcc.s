	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095fcc  @ 0x08095fcc
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	MapActor_GetActor
	mov	r3, r7
	add	r3, #0x64
	ldrh	r1, [r3]
	sub	r1, #1
	strh	r1, [r3]
	mov	r6, r0
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	str	r3, [r5, #8]
	ldr	r3, =0x6666
	asr	r1, #16
	mov	r0, r1
	mul	r0, r3
	mov	r3, r7
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	lsl	r1, #11
	add	r1, r3
	mov	r2, r5
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r7, #8]
	ldr	r3, [r5, #8]
	ldr	r2, [r7, #0xc]
	str	r3, [r7, #0x10]
	ldr	r3, =0xffff0000
	add	r2, r3
	str	r2, [r7, #0xc]
	mov	r1, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r1, #13
	add	r3, r1
	cmp	r2, r3
	bge	.L96034
	mov	r0, r7
	bl	_DeleteActor
.L96034:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095fcc
