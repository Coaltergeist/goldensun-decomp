	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809a3c4  @ 0x0809a3c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r8, r2
	mov	r0, #0x8a
	mov	r7, r3
	bl	_PlaySound
	mov	r1, r5
	mov	r0, #0xd7
	mov	r2, r6
	mov	r3, r8
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L9a43e
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, r5
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	add	r2, #0x5a
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #1
	bl	_Actor_SetAnim
	mov	r2, #0x80
	ldr	r3, [r5, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.L9a43c
	ldr	r6, =0x2000
.L9a414:
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	ldrh	r3, [r5, #6]
	add	r3, r6
	strh	r3, [r5, #6]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xffff
	cmp	r3, r2
	ble	.L9a414
	b	.L9a43c
	.pool_aligned

.L9a43c:
	strh	r7, [r5, #6]
.L9a43e:
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_809a3c4
