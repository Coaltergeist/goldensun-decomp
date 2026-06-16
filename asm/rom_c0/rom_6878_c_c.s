	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8006f84  @ 0x08006f84
	push	{r4, r5, r6, r7, lr}
	sub	sp, #0x40
	mov	r7, r1
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0xf
	bls	.L6f9c
	ldr	r0, =0x80ff
	b	.L7018

	.pool_aligned

.L6f9c:
	mov	r0, r4
	bl	EraseFlashSector_MX
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	bne	.L7016
	mov	r0, sp
	bl	SetReadFlash1
	ldr	r3, =REG_WAITCNT
	ldrh	r1, [r3]
	ldr	r0, =0xfffc
	and	r1, r0
	ldr	r0, =ewram_2004c08
	ldr	r2, [r0]
	ldrh	r0, [r2, #0x10]
	orr	r0, r1
	strh	r0, [r3]
	ldr	r1, =ewram_2004c0c
	ldr	r0, [r2, #4]
	strh	r0, [r1]
	ldrb	r0, [r2, #8]
	lsl	r4, r0
	mov	r0, #0xe0
	lsl	r0, #20
	add	r4, r0
	mov	r6, r1
	b	.L6ff2

	.pool_aligned

.L6fe8:
	ldrh	r0, [r6]
	sub	r0, #1
	strh	r0, [r6]
	add	r7, #1
	add	r4, #1
.L6ff2:
	ldrh	r0, [r6]
	cmp	r0, #0
	beq	.L7008
	mov	r0, r7
	mov	r1, r4
	bl	ProgramByte
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L6fe8
.L7008:
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
.L7016:
	mov	r0, r5
.L7018:
	add	sp, #0x40
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8006f84

.thumb_func_start Func_8007028  @ 0x08007028
	push	{r4, r5, r6, lr}
	sub	sp, #0x40
	mov	r0, sp
	bl	SetReadFlash1
	ldr	r5, =REG_WAITCNT
	ldrh	r0, [r5]
	ldr	r6, =0xfffc
	and	r0, r6
	ldr	r1, =.L7c10
	ldrh	r1, [r1, #0x24]
	orr	r0, r1
	strh	r0, [r5]
	ldr	r1, =0xe005555
	mov	r4, #0xaa
	strb	r4, [r1]
	ldr	r3, =0xe002aaa
	mov	r2, #0x55
	strb	r2, [r3]
	mov	r0, #0x80
	strb	r0, [r1]
	strb	r4, [r1]
	strb	r2, [r3]
	mov	r0, #0x10
	strb	r0, [r1]
	ldr	r0, =ewram_2004c00
	mov	r1, #0xe0
	lsl	r1, #20
	ldr	r3, [r0]
	mov	r0, #3
	mov	r2, #0xff
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r0, #16
	ldrh	r1, [r5]
	and	r1, r6
	mov	r2, #3
	orr	r1, r2
	strh	r1, [r5]
	add	sp, #0x40
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8007028

.thumb_func_start Func_8007098  @ 0x08007098
	push	{r4, r5, lr}
	lsl	r0, #16
	ldr	r3, =.L7c10
	lsr	r0, #16
	mov	r4, r0
	ldrb	r1, [r3, #0x1c]
	lsl	r4, r1
	mov	r0, #0xe0
	lsl	r0, #20
	add	r4, r0
	ldr	r1, =REG_IME
	ldrh	r0, [r1]
	mov	r5, r0
	mov	r0, #0
	strh	r0, [r1]
	ldr	r2, =0xe005555
	mov	r0, #0xaa
	strb	r0, [r2]
	ldr	r1, =0xe002aaa
	mov	r0, #0x55
	strb	r0, [r1]
	mov	r0, #0xa0
	strb	r0, [r2]
	ldr	r0, [r3, #0x18]
	cmp	r0, #0
	beq	.L70d8
	mov	r1, #0xff
.L70ce:
	strb	r1, [r4]
	add	r4, #1
	sub	r0, #1
	cmp	r0, #0
	bne	.L70ce
.L70d8:
	sub	r4, #1
	ldr	r0, =REG_IME
	strh	r5, [r0]
	ldr	r0, =ewram_2004c00
	ldr	r3, [r0]
	mov	r0, #1
	mov	r1, r4
	mov	r2, #0xff
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r1, r0, #16
	cmp	r1, #0
	beq	.L70fe
	mov	r0, #0xff
	lsl	r0, #8
	and	r1, r0
	mov	r0, #2
	orr	r1, r0
.L70fe:
	mov	r0, r1
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.func_end Func_8007098

.thumb_func_start Func_800711c  @ 0x0800711c
	push	{r4, r5, r6, lr}
	sub	sp, #0x40
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0xf
	bls	.L7130
	ldr	r0, =0x80ff
	b	.L7198

	.pool_aligned

.L7130:
	mov	r0, sp
	bl	SetReadFlash1
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	ldr	r1, =.L7c10
	ldrh	r1, [r1, #0x24]
	orr	r0, r1
	strh	r0, [r2]
	lsl	r0, r4, #21
	lsr	r5, r0, #16
	mov	r6, #0
.L714c:
	mov	r4, #2
	b	.L7166

	.pool_aligned

.L715c:
	sub	r0, r4, #1
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.L7174
.L7166:
	mov	r0, r5
	bl	Func_8007098
	lsl	r0, #16
	lsr	r3, r0, #16
	cmp	r3, #0
	bne	.L715c
.L7174:
	add	r0, r5, #1
	lsl	r0, #16
	lsr	r5, r0, #16
	cmp	r3, #0
	bne	.L7188
	add	r0, r6, #1
	lsl	r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0x1f
	bls	.L714c
.L7188:
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
	mov	r0, r3
.L7198:
	add	sp, #0x40
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_800711c

.thumb_func_start Func_80071a8  @ 0x080071a8
	push	{r4, r5, r6, lr}
	mov	r5, r1
	lsl	r0, #16
	ldr	r3, =.L7c10
	lsr	r0, #16
	mov	r4, r0
	ldrb	r1, [r3, #0x1c]
	lsl	r4, r1
	mov	r0, #0xe0
	lsl	r0, #20
	add	r4, r0
	ldr	r1, =REG_IME
	ldrh	r0, [r1]
	mov	r6, r0
	mov	r0, #0
	strh	r0, [r1]
	ldr	r2, =0xe005555
	mov	r0, #0xaa
	strb	r0, [r2]
	ldr	r1, =0xe002aaa
	mov	r0, #0x55
	strb	r0, [r1]
	mov	r0, #0xa0
	strb	r0, [r2]
	ldr	r1, [r3, #0x18]
	cmp	r1, #0
	beq	.L71ec
.L71de:
	ldrb	r0, [r5]
	strb	r0, [r4]
	add	r5, #1
	add	r4, #1
	sub	r1, #1
	cmp	r1, #0
	bne	.L71de
.L71ec:
	sub	r4, #1
	sub	r5, #1
	ldr	r0, =REG_IME
	strh	r6, [r0]
	ldr	r0, =ewram_2004c00
	ldrb	r2, [r5]
	ldr	r3, [r0]
	mov	r0, #1
	mov	r1, r4
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r0, #16
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80071a8

.thumb_func_start Func_8007220  @ 0x08007220
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x40
	mov	r7, r1
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0xf
	bls	.L723c
	ldr	r0, =0x80ff
	b	.L72ce

	.pool_aligned

.L723c:
	mov	r0, sp
	bl	SetReadFlash1
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	ldr	r1, =.L7c10
	ldrh	r1, [r1, #0x24]
	orr	r0, r1
	strh	r0, [r2]
	lsl	r0, r4, #21
	lsr	r5, r0, #16
	ldr	r1, =ewram_2004c0c
	ldr	r0, =.L7be4
	ldr	r0, [r0, #0x18]
	strh	r0, [r1]
	mov	r0, r1
	mov	r8, r0
	b	.L728e

	.pool_aligned

.L7278:
	ldr	r0, =.L7c10
	ldr	r1, [r0, #0x18]
	mov	r2, r8
	ldrh	r2, [r2]
	sub	r0, r2, r1
	mov	r3, r8
	strh	r0, [r3]
	add	r7, r1
	add	r0, r5, #1
	lsl	r0, #16
	lsr	r5, r0, #16
.L728e:
	mov	r1, r8
	ldrh	r0, [r1]
	cmp	r0, #0
	beq	.L72be
	mov	r4, #2
	b	.L72aa

	.pool_aligned

.L72a0:
	sub	r0, r4, #1
	lsl	r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.L72ba
.L72aa:
	mov	r0, r5
	mov	r1, r7
	bl	Func_80071a8
	lsl	r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0
	bne	.L72a0
.L72ba:
	cmp	r6, #0
	beq	.L7278
.L72be:
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
	mov	r0, r6
.L72ce:
	add	sp, #0x40
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8007220

	.section .rodata
	.global .L7abc
	.global .L7a0c

.L7a0c:
	.incrom 0x7a0c, 0x7abc
.L7abc:
	.incrom 0x7abc, 0x7be4
.L7be4:
	.incrom 0x7be4, 0x7c10
.L7c10:
	.incrom 0x7c10, 0x7c64
