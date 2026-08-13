	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0774  @ 0x080c0774
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f00
	ldr	r6, [r3]
	ldr	r3, [r6, #8]
	mov	r7, r0
	mov	r5, r2
	cmp	r3, #0
	bne	.Lc078c
	ldr	r0, =Func_80c0130
	ldr	r1, =0x4ff
	bl	StartTask
.Lc078c:
	str	r7, [r6, #8]
	cmp	r7, #1
	bne	.Lc07c0
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lc07be
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x1f83
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BG1CNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lc07be:
	strh	r4, [r0]
.Lc07c0:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50000a0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0x50001e8
	ldr	r3, =0x50000bc
	ldrh	r2, [r2]
	strh	r2, [r3]
	cmp	r5, #0x80
	bne	.Lc07ec
	ldr	r3, =iwram_3001e74
	ldr	r2, =0x544
	ldr	r0, [r3]
	add	r1, #0x20
	add	r0, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.Lc088e
.Lc07ec:
	cmp	r5, #0
	beq	.Lc088e
	ldr	r3, =iwram_3001e74
	ldr	r2, =0x544
	ldr	r3, [r3]
	ldr	r7, .Lc081c	@ 0x1f
	add	r2, r3
	ldr	r4, =0x50000c0
	mov	r12, r2
	mov	r6, #0
	mov	r0, #0
.Lc0802:
	mov	r2, r12
	ldrh	r3, [r0, r2]
	mov	r1, #0x1f
	and	r1, r3
	lsl	r3, #16
	lsr	r2, r3, #21
	lsr	r3, #26
	and	r2, r7
	and	r3, r7
	cmp	r1, r5
	ble	.Lc0864
	sub	r1, r5
	b	.Lc0866

	.align	2, 0
.Lc081c:
	.word	0x1f
	.pool

.Lc0864:
	mov	r1, #0
.Lc0866:
	cmp	r2, r5
	ble	.Lc086e
	sub	r2, r5
	b	.Lc0870
.Lc086e:
	mov	r2, #0
.Lc0870:
	cmp	r3, r5
	ble	.Lc0878
	sub	r3, r5
	b	.Lc087a
.Lc0878:
	mov	r3, #0
.Lc087a:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	add	r6, #1
	strh	r3, [r4]
	add	r0, #2
	add	r4, #2
	cmp	r6, #0x80
	bne	.Lc0802
.Lc088e:
	ldr	r0, =0x6003800
	bl	Func_80c0098
	ldr	r0, =0x600f800
	bl	Func_80c00d8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0774
