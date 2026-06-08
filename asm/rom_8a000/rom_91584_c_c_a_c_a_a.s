	.include "macros.inc"

.thumb_func_start Func_8091eb0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r6, r1
	ldr	r7, [r3]
	mov	r5, r0
	bl	Func_808b05c
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r7, r1
	strh	r0, [r3]
	cmp	r5, #0x62
	bne	.L91ed8
	cmp	r6, #0
	bne	.L91ed8
	ldr	r3, =gState
	ldr	r2, =0x21
	add	r1, #0x5a
	add	r3, r1
	strh	r2, [r3]
.L91ed8:
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L91ef8
	ldr	r3, =gState
	add	r2, #0x56
	add	r3, r2
	ldr	r0, [r3]
	bl	GetFieldActor
	add	r0, #8
	bl	Func_808adf0
.L91ef8:
	mov	r0, r5
	mov	r1, r6
	bl	Func_808b320
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8091eb0

.thumb_func_start Func_8091f14
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r5, #0x80
	ldr	r3, [r3]
	lsl	r5, #4
	mov	r8, r3
	and	r5, r0
	mov	r3, #0xff
	mov	r7, r1
	and	r0, r3
	cmp	r5, #0
	bne	.L91f34
	bl	Func_809537c
.L91f34:
	mov	r1, #0x96
	lsl	r1, #1
	ldr	r6, =gState
	add	r3, r7, r1
	mov	r1, #0x8d
	lsl	r1, #2
	orr	r3, r5
	add	r2, r6, r1
	strh	r3, [r2]
	mov	r0, r7
	bl	Func_808b074
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
	strh	r0, [r3]
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L91f74
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r6, r1
	ldr	r0, [r3]
	bl	GetFieldActor
	add	r0, #8
	bl	Func_808adf0
.L91f74:
	mov	r1, #0
	mov	r0, #0
	bl	Func_808b320
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8091f14

