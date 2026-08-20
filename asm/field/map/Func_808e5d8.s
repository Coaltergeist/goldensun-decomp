	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808e5d8  @ 0x0808e5d8
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =0x3ff
	mov	r5, r0
	and	r3, r5
	mov	r8, r3
	mov	r0, r8
	mov	r3, #0xf
	lsr	r5, #10
	sub	sp, #4
	and	r5, r3
	bl	_GetMoveInfo
	ldr	r6, =gState
	mov	r3, #0xfa
	lsl	r3, #1
	ldrb	r0, [r0, #0xc]
	add	r6, r3
	mov	r9, r0
	ldr	r0, [r6]
	bl	GetFieldActor
	mov	r10, sp
	mov	r1, r9
	mov	r2, r10
	ldr	r0, =0x30000005
	bl	FindFieldMoveEvent
	mov	r2, r10
	mov	r11, r0
	mov	r1, r9
	ldr	r0, =0x20000005
	bl	FindFieldMoveEvent
	mov	r1, #0
	mov	r10, r0
	mov	r0, r8
	bl	Func_8096fb0
	ldr	r0, [r6]
	ldr	r1, [sp]
	bl	Func_80970f8
	mov	r1, r5
	ldr	r2, [sp]
	mov	r0, r11
	bl	Func_8096b28
	bl	Func_8096af0
	bl	Func_8097174
	mov	r1, r5
	ldr	r2, [sp]
	mov	r0, r10
	bl	Func_8096b28
	bl	Func_8097194
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_808e5d8

