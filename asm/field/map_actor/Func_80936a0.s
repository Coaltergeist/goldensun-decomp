	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80936a0  @ 0x080936a0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0x1b
	ldr	r1, =0xccc
	ldr	r5, [r3]
	bl	galloc_ewram
	mov	r1, #0xcf
	lsl	r1, #1
	add	r3, r0, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L936f4
	mov	r1, #0x80
	ldr	r3, =Func_80008ac
	lsl	r1, #9
	mov	r0, r6
	bl	_call_via_r3
	mov	r3, #0xd4
	lsl	r3, #2
	add	r1, r5, r3
	add	r3, #4
	add	r2, r5, r3
	ldr	r3, [r2]
	str	r3, [r1]
	mov	r1, #0xd6
	lsl	r1, #2
	add	r3, r5, r1
	add	r1, #2
	str	r0, [r2]
	strh	r7, [r3]
	mov	r2, #0
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r0, =Func_80935d4
	ldr	r1, =0xc94
	bl	StartTask
.L936f4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80936a0

