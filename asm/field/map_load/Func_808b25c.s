	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808b25c  @ 0x0808b25c
	push	{r5, r6, lr}
	ldr	r2, =gState
	mov	r3, #0xe0
	mov	r12, r2
	lsl	r3, #1
	ldr	r4, =gMapBattleBGs
	add	r3, r12
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldmia	r4!, {r2}
	cmp	r2, #0
	beq	.L8b294
	cmp	r2, r0
	beq	.L8b294
	mov	r6, #0x80
	ldr	r5, =0xffff
	lsl	r6, #24
.L8b27e:
	mov	r3, r2
	and	r3, r6
	cmp	r3, #0
	beq	.L8b28a
	mov	r1, r5
	and	r1, r2
.L8b28a:
	ldmia	r4!, {r2}
	cmp	r2, #0
	beq	.L8b294
	cmp	r2, r0
	bne	.L8b27e
.L8b294:
	mov	r3, #0xeb
	lsl	r3, #1
	add	r3, r12
	strh	r1, [r3]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_808b25c

