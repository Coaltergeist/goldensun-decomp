	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Field_Growth  @ 0x080985fc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	sub	sp, #0xc
	ldr	r7, [r3]
	bl	Func_8098698
	mov	r0, #0x86
	bl	_PlaySound
	mov	r3, #4
	mov	r6, sp
	mov	r8, r3
.L98618:
	ldr	r3, [r7, #4]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #8]
	bl	Random
	lsl	r5, r0, #1
	add	r5, r0
	mov	r3, #0x80
	lsl	r3, #11
	lsl	r5, #1
	add	r5, r3
	bl	Random
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	vec3_translate
	ldr	r2, [r7, #8]
	ldr	r1, [r6]
	ldr	r3, [r6, #8]
	mov	r0, #0xd9
	str	r2, [r6, #4]
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L98660
	ldr	r1, =gScript_0809f11c
	bl	_Actor_SetScript
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
.L98660:
	bl	Random
	lsl	r0, #1
	lsr	r0, #16
	add	r0, #2
	bl	WaitFrames
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r3, r8
	cmp	r3, #0
	bge	.L98618
	mov	r0, #0x1e
	bl	WaitFrames
	bl	Func_809748c
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Growth
