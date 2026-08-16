	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808ce74  @ 0x0808ce74
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r0, #0
	mov	r10, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	GetFieldActor
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	sub	r3, #0x4c
	ldr	r3, [r3]
	mov	r7, r0
	mov	r8, r3
	cmp	r7, #0
	beq	.L8cf54
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	mov	r0, #0x80
	lsl	r0, #13
	mov	r2, r5
	ldrh	r1, [r7, #6]
	bl	vec3_translate
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8cef2
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8ced2
	ldr	r1, =0x1fffff
	add	r3, r1
.L8ced2:
	asr	r2, r3, #21
	ldr	r3, [r5, #8]
	mov	r1, #0x1f
	and	r2, r1
	cmp	r3, #0
	bge	.L8cee2
	ldr	r0, =0x1fffff
	add	r3, r0
.L8cee2:
	asr	r3, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r2, =ewram_2020000
	lsl	r3, #2
	add	r1, r3, r2
	b	.L8cf1a
.L8cef2:
	mov	r3, #0x98
	lsl	r3, #1
	add	r3, r8
	ldr	r1, [r3]
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8cf04
	ldr	r0, =0xfffff
	add	r3, r0
.L8cf04:
	asr	r2, r3, #20
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L8cf10
	ldr	r0, =0xfffff
	add	r3, r0
.L8cf10:
	asr	r3, #20
	lsl	r3, #7
	add	r3, r2, r3
	lsl	r3, #2
	add	r1, r3
.L8cf1a:
	ldrb	r6, [r1, #2]
	mov	r3, r6
	sub	r3, #0xf2
	cmp	r3, #5
	bhi	.L8cf46
	mov	r3, r7
	add	r3, #0x22
	ldr	r2, [r5, #8]
	ldrb	r0, [r3]
	ldr	r1, [r5]
	bl	_Func_8011f54
	mov	r2, r0
	ldr	r0, [r7, #0xc]
	cmp	r2, r0
	blt	.L8cf54
	mov	r1, #0x80
	lsl	r1, #15
	add	r3, r0, r1
	cmp	r2, r3
	bgt	.L8cf54
	b	.L8cf52
.L8cf46:
	mov	r0, #3
	mov	r1, r6
	bl	FindMapActorEvent
	cmp	r0, #0
	beq	.L8cf54
.L8cf52:
	mov	r10, r6
.L8cf54:
	mov	r0, r10
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808ce74
