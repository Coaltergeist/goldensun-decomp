	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80118d8  @ 0x080118d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r5, [r3]
	sub	sp, #4
	mov	r4, r0
	mov	r6, #0
	mov	r0, sp
	mov	r1, r5
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	add	r1, #0x18
	ldr	r2, =0x85000030
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r1, [r4]
	ldr	r2, =0xffff
	add	r4, #2
	cmp	r1, r2
	beq	.L11954
	mov	r3, #0xff
	mov	r2, #0xfd
	lsl	r3, #8
	lsl	r2, #8
	mov	r10, r3
	mov	r8, r2
	mov	r3, #0xf
	mov	r2, #0x80
	mov	r14, r3
	mov	r12, r2
	mov	r7, #0
.L1191a:
	mov	r3, r1
	mov	r2, r10
	and	r3, r2
	cmp	r3, r8
	bne	.L1194a
	mov	r3, r14
	mov	r2, r1
	and	r2, r3
	mov	r3, r12
	and	r3, r1
	mov	r0, #0
	cmp	r3, #0
	beq	.L11936
	mov	r0, #1
.L11936:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r5, r3
	add	r3, #0x18
	str	r4, [r3]
	str	r4, [r3, #4]
	strh	r7, [r3, #8]
	strh	r0, [r3, #0xa]
	add	r6, #1
.L1194a:
	ldrh	r1, [r4]
	ldr	r2, =0xffff
	add	r4, #2
	cmp	r1, r2
	bne	.L1191a
.L11954:
	cmp	r6, #0
	beq	.L11962
	mov	r1, #0xc8
	ldr	r0, =Func_801179c
	lsl	r1, #4
	bl	StartTask
.L11962:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80118d8

