	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800300c
	push	{r5, r6, lr}
	ldr	r6, =REG_IME
	mov	r5, #0
	strh	r5, [r6]
	ldr	r4, =iwram_3000000
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =__load_start_rom_770
	mov	r1, r4
	ldr	r2, =0x84000500
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_3007ffc
	ldr	r0, =.L7320
	str	r4, [r3]
	ldr	r1, =Data_8000850
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8400000e
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	sub	r3, #0xd0
	strh	r5, [r3]
	ldr	r2, =0xc3ff
	ldr	r3, =REG_KEYCNT
	strh	r2, [r3]
	ldr	r2, =0x1001
	add	r3, #0xce
	strh	r2, [r3]
	mov	r3, #1
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800300c

.thumb_func_start Func_800307c
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r1, r2
	cmp	r0, #0xd
	bhi	.L30dc
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r2, #1
	ldr	r4, =REG_IE
	ldrh	r3, [r4]
	lsl	r2, r0
	bic	r3, r2
	cmp	r1, #0
	beq	.L309e
	orr	r3, r2
.L309e:
	strh	r3, [r4]
	cmp	r0, #2
	bhi	.L30c4
	mov	r4, #8
	lsl	r4, r0
	mvn	r2, r4
	cmp	r0, #2
	bne	.L30b6
	lsl	r3, r5, #8
	orr	r4, r3
	mov	r3, #0xff
	and	r2, r3
.L30b6:
	ldr	r5, =REG_DISPSTAT
	ldrh	r3, [r5]
	and	r3, r2
	cmp	r1, #0
	beq	.L30c2
	orr	r3, r4
.L30c2:
	strh	r3, [r5]
.L30c4:
	cmp	r1, #0
	beq	.L30d0
	ldr	r2, =Data_8000850
	lsl	r3, r0, #2
	str	r1, [r2, r3]
	b	.L30d8
.L30d0:
	ldr	r1, =Data_8000850
	ldr	r3, =Func_8003008
	lsl	r2, r0, #2
	str	r3, [r1, r2]
.L30d8:
	ldr	r3, =REG_IME
	strh	r6, [r3]
.L30dc:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800307c

	.section .rodata

.L7320:
	.incrom 0x7320, 0x7676
