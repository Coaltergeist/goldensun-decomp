	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ActorCmd_FollowTargetWait  @ 0x0800dcdc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	ldr	r2, [r6, #0x68]
	ldr	r3, [r2, #0x30]
	str	r3, [r6, #0x30]
	ldr	r3, [r2, #0x34]
	str	r3, [r6, #0x34]
	ldr	r3, [r6, #8]
	ldr	r1, [r2, #8]
	ldr	r2, [r2, #0x10]
	sub	r1, r3
	ldr	r3, [r6, #0x10]
	sub	r2, r3
	mov	r10, r2
	asr	r3, r1, #16
	asr	r2, #16
	mov	r0, r3
	mul	r0, r3
	mov	r3, r2
	mul	r3, r2
	add	r0, r3
	ldr	r3, =Func_8000948
	mov	r8, r1
	bl	_call_via_r3
	mov	r7, r0
	cmp	r7, #0x10
	ble	.Ldd56
	mov	r5, r7
	sub	r5, #0x10
	mov	r0, r8
	mul	r0, r5
	mov	r1, r7
	bl	__divsi3
	mov	r1, r7
	mov	r8, r0
	mov	r0, r10
	mul	r0, r5
	bl	__divsi3
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r1, r8
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	bl	Actor_TravelTo
	mov	r0, r6
	mov	r1, #2
	bl	Actor_SetAnim
	ldrh	r3, [r6, #4]
	add	r3, #1
	strh	r3, [r6, #4]
	mov	r0, #1
	b	.Ldd60
.Ldd56:
	mov	r0, r6
	mov	r1, #1
	bl	Actor_SetAnim
	mov	r0, #0
.Ldd60:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end ActorCmd_FollowTargetWait
