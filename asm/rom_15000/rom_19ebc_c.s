	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadIcon  @ 0x0801a5a4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r6, r1
	ldr	r5, =0x278
	mov	r0, #0x31
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	mov	r8, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8015afc
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =gPtrs
	ldr	r4, =0x604
	add	r3, #0xc4
	add	r2, r7, r4
	ldr	r0, [r2]
	ldr	r3, [r3]
	mov	r1, r7
	bl	_call_via_r3
	mov	r0, #0x31
	bl	gfree
	cmp	r6, #0
	beq	.L1a5fe
	ldr	r5, =0x9c
	mov	r0, #0x31
	mov	r1, r5
	bl	galloc_iwram
	lsr	r5, #2
	mov	r2, r8
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8015d74
	b	.L1a612
.L1a5fe:
	ldr	r5, =0x7c
	mov	r0, #0x31
	mov	r1, r5
	bl	galloc_iwram
	lsr	r5, #2
	mov	r2, r8
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8015e10
.L1a612:
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r4, #0xc0
	ldr	r0, =gPtrs
	lsl	r4, #3
	mov	r2, #0x80
	add	r3, r7, r4
	lsl	r2, #3
	add	r4, #2
	add	r1, r7, r2
	add	r0, #0xc4
	ldrh	r2, [r3]
	add	r3, r7, r4
	ldrh	r3, [r3]
	ldr	r4, [r0]
	mov	r0, r7
	bl	_call_via_r4
	mov	r0, #0x31
	bl	gfree
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadIcon

	.section .rodata
	.global .L29a10
	.global .L29acc
	.global .L29b68
	.global .L29e00
	.global .L29ee4
	.global .L2a2e0
	.global .L2de88
	.global .L2e108
	.global .L308a0

.L29a10:
	.incrom 0x29a10, 0x29acc
.L29acc:
	.incrom 0x29acc, 0x29b68
.L29b68:
	.incrom 0x29b68, 0x29e00
.L29e00:
	.incrom 0x29e00, 0x29ee4
.L29ee4:
	.incrom 0x29ee4, 0x2a2e0
.L2a2e0:
	.incrom 0x2a2e0, 0x2de88
.L2de88:
	.incrom 0x2de88, 0x2e108
.L2e108:
	.incrom 0x2e108, 0x308a0
.L308a0:
	.incrom 0x308a0, 0x310a4
