	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8005868  @ 0x08005868
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f1c
	ldr	r3, [r3]
	ldr	r2, =ewram_2004c04
	lsl	r0, #16
	mov	r6, r3
	lsr	r5, r0, #16
	add	r6, #0x40
	ldr	r3, [r2]
	mov	r0, r5
	mov	r1, r6
	bl	_call_via_r3
	lsl	r0, #16
	cmp	r0, #0
	beq	.L588c
	mov	r0, #1
	b	.L589c
.L588c:
	mov	r0, r5
	mov	r1, r6
	bl	VerifyFlashSector
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.L589c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8005868

