	.include "macros.inc"

.thumb_func_start Func_809233c  @ 0x0809233c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r10, r3
	bl	GetFieldActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L923a6
	ldr	r2, =0x4ccc
	mov	r0, r6
	ldr	r1, =0x9999
	bl	MapActor_SetSpeed
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	MapActor_GetActor
	cmp	r0, #0
	beq	.L9237c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	MapActor_SetPos
.L9237c:
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #2
	bl	_Actor_SetAnim
	mov	r2, r8
	mov	r0, r6
	mov	r1, r7
	bl	Func_809228c
	ldr	r1, =.L9fbcc
	mov	r0, r5
	bl	_Actor_SetScript
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
.L923a6:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809233c

