	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80993b0  @ 0x080993b0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, =iwram_3001f30
	mov	r7, r5
	add	r7, #0x64
	ldr	r6, [r3]
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r3, #1
	neg	r3, r3
	sub	sp, #0xc
	cmp	r0, r3
	beq	.L99410
	lsl	r0, #10
	bl	sin
	mov	r1, r0
	mov	r0, #0xc0
	ldr	r3, =Func_8000888
	lsl	r0, #11
	.call_via r3
	ldr	r3, [r6, #4]
	add	r3, r0
	str	r3, [r5, #8]
	mov	r2, #0x80
	ldr	r3, [r6, #8]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0x10]
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x40
	mov	r3, r2
	cmp	r2, #0
	bge	.L99408
	mov	r3, r1
	add	r3, #0x7f
.L99408:
	asr	r3, #6
	lsl	r3, #6
	sub	r3, r2, r3
	strh	r3, [r7]
.L99410:
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	__umodsi3
	cmp	r0, #0
	bne	.L9949c
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	mov	r2, #0x80
	ldr	r3, [r5, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	Random
	lsl	r5, r0, #1
	add	r5, r0
	bl	Random
	lsl	r5, #1
	mov	r1, r0
	mov	r2, r6
	mov	r0, r5
	bl	vec3_translate
	ldr	r0, =0x11d
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L9949c
	ldr	r3, =Func_80992f0
	str	r3, [r5, #0x6c]
	ldr	r3, =0x9999
	mov	r2, r5
	add	r2, #0x55
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xe5
	lsl	r3, #1
	str	r3, [r5, #0x48]
	bl	Random
	mov	r3, r5
	lsr	r0, #9
	add	r3, #0x64
	strh	r0, [r3]
	ldr	r3, [r5, #8]
	mov	r0, r5
	str	r3, [r5, #0x38]
	mov	r1, #9
	bl	_Actor_SetColorswap
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #0x48
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Actor_SetScript
.L9949c:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80993b0
