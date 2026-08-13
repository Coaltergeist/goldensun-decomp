	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8010ff0  @ 0x08010ff0
	push	{r5, r6, lr}
	ldr	r1, =iwram_3001e6c
	mov	r2, #0xc8
	ldmia	r1!, {r3}
	lsl	r2, #4
	add	r6, r3, r2
	mov	r3, #0x80
	lsl	r3, #19
	ldrh	r2, [r3]
	ldr	r1, [r1]
	ldr	r3, =0xfff8
	mov	r12, r1
	and	r3, r2
	ldr	r1, =REG_DMA0SAD
	lsl	r3, #16
	ldrh	r2, [r1, #0xa]
	asr	r5, r3, #16
	ldr	r3, =0xc5ff
	and	r3, r2
	strh	r3, [r1, #0xa]
	ldr	r3, =0x7fff
	ldrh	r2, [r1, #0xa]
	and	r3, r2
	strh	r3, [r1, #0xa]
	ldr	r4, =REG_BG2PA
	ldrh	r3, [r1, #0xa]
	cmp	r6, #0
	beq	.L11064
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #10
	add	r0, r6, r0
	ldmia	r0!, {r3}
	str	r3, [r4]
	ldmia	r0!, {r3}
	add	r4, #4
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	stmia	r4!, {r3}
	ldmia	r0!, {r3}
	ldr	r2, =0xa6600008
	str	r3, [r4]
	mov	r3, r1
	sub	r1, #0x90
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L11064:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r12
	mov	r2, #0x82
	ldrh	r3, [r3]
	lsl	r2, #1
	add	r2, r12
	strh	r3, [r2]
	mov	r3, #0x81
	lsl	r3, #1
	add	r3, r12
	ldrh	r0, [r3]
	mov	r3, #0x83
	lsl	r3, #1
	add	r3, r12
	strh	r0, [r3]
	ldrh	r1, [r2]
	mov	r3, #0
	cmp	r1, #0xc7
	bhi	.L110a4
	lsl	r2, r0, #16
	lsr	r2, #16
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	lsl	r3, #1
	cmp	r1, r2
	bhi	.L110a4
	mov	r3, #0
	cmp	r1, #0
	bne	.L110a4
	mov	r3, #2
.L110a4:
	orr	r5, r3
	lsl	r3, r5, #16
	mov	r2, #0x80
	lsr	r3, #16
	lsl	r2, #19
	strh	r3, [r2]
	mov	r2, #0x84
	lsl	r2, #1
	add	r2, r12
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8010ff0
