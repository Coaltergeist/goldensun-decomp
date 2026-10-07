	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8010704  @ 0x08010704
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r14, r3
	ldr	r3, [sp, #0x1c]
	mov	r12, r2
	ldr	r2, [sp, #0x18]
	ldr	r4, =gBuffer
	lsl	r3, #7
	add	r3, r2
	lsl	r1, #7
	mov	r8, r4
	lsl	r3, #2
	add	r1, r0
	add	r3, r8
	lsl	r1, #2
	mov	r2, r14
	mov	r10, r3
	add	r8, r1
	cmp	r2, #0
	ble	.L10770
	mov	r5, #0
.L10732:
	lsr	r3, r5, #7
	mov	r4, r10
	mov	r2, r8
	add	r1, r4, r3
	add	r0, r2, r3
	mov	r3, r12
	cmp	r3, #0
	ble	.L10762
	ldr	r7, =0xfff
	ldr	r6, =0xfffff000
	mov	r4, #0
.L10748:
	ldr	r2, [r1]
	ldmia	r0!, {r3}
	and	r2, r7
	and	r3, r6
	orr	r2, r3
	stmia	r1!, {r2}
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r4, r2
	mov	r4, r3
	lsr	r3, r4, #16
	cmp	r3, r12
	blt	.L10748
.L10762:
	mov	r4, #0x80
	lsl	r4, #9
	add	r3, r5, r4
	mov	r5, r3
	lsr	r3, r5, #16
	cmp	r3, r14
	blt	.L10732
.L10770:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8010704
