	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ReadFlashId  @ 0x08006878
	push	{r4, r5, lr}
	sub	sp, #0x44
	mov	r0, sp
	bl	SetReadFlash1
	mov	r5, sp
	add	r5, #1
	ldr	r2, =0xe005555
	mov	r0, #0xaa
	strb	r0, [r2]
	ldr	r1, =0xe002aaa
	mov	r0, #0x55
	strb	r0, [r1]
	mov	r0, #0x90
	strb	r0, [r2]
	add	r1, sp, #0x40
	ldr	r2, =0x4e20
	mov	r0, r2
	b	.L68b0

	.pool_aligned

.L68ac:
	ldrh	r0, [r1]
	sub	r0, #1
.L68b0:
	strh	r0, [r1]
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	.L68ac
	ldr	r0, =0xe000001
	bl	_call_via_r5
	lsl	r0, #24
	lsr	r4, r0, #16
	mov	r0, #0xe0
	lsl	r0, #20
	bl	_call_via_r5
	lsl	r0, #24
	lsr	r0, #24
	orr	r4, r0
	ldr	r2, =0xe005555
	mov	r0, #0xaa
	strb	r0, [r2]
	ldr	r1, =0xe002aaa
	mov	r0, #0x55
	strb	r0, [r1]
	mov	r0, #0xf0
	strb	r0, [r2]
	add	r1, sp, #0x40
	ldr	r2, =0x4e20
	mov	r0, r2
	b	.L68fc

	.pool_aligned

.L68f8:
	ldrh	r0, [r1]
	sub	r0, #1
.L68fc:
	strh	r0, [r1]
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	.L68f8
	mov	r0, r4
	add	sp, #0x44
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.func_end ReadFlashId

.thumb_func_start IdentifyFlash  @ 0x08006910
	push	{r4, lr}
	ldr	r2, =REG_WAITCNT
	ldrh	r0, [r2]
	ldr	r1, =0xfffc
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r2]
	bl	ReadFlashId
	lsl	r0, #16
	lsr	r3, r0, #16
	ldr	r2, =.L7a0c
	mov	r4, #1
	b	.L693e

	.pool_aligned

.L693c:
	add	r2, #4
.L693e:
	ldr	r1, [r2]
	mov	r0, r1
	add	r0, #0x28
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.L6952
	ldrh	r0, [r1, #0x28]
	cmp	r3, r0
	bne	.L693c
	mov	r4, #0
.L6952:
	ldr	r1, =ewram_2004c04
	ldr	r0, [r2]
	ldr	r0, [r0]
	str	r0, [r1]
	ldr	r1, =ewram_2004c10
	ldr	r0, [r2]
	ldr	r0, [r0, #4]
	str	r0, [r1]
	ldr	r1, =ewram_2004c14
	ldr	r0, [r2]
	ldr	r0, [r0, #8]
	str	r0, [r1]
	ldr	r1, =ewram_2004c00
	ldr	r0, [r2]
	ldr	r0, [r0, #0xc]
	str	r0, [r1]
	ldr	r1, =ewram_2004c18
	ldr	r0, [r2]
	ldr	r0, [r0, #0x10]
	str	r0, [r1]
	ldr	r1, =ewram_2004c08
	ldr	r0, [r2]
	add	r0, #0x14
	str	r0, [r1]
	mov	r0, r4
	pop	{r4}
	pop	{r1}
	bx	r1
.func_end IdentifyFlash

.thumb_func_start FlashTimerIntr  @ 0x080069a4
	ldr	r1, =ewram_2004c22
	ldrh	r0, [r1]
	cmp	r0, #0
	beq	.L69be
	ldrh	r0, [r1]
	sub	r0, #1
	strh	r0, [r1]
	lsl	r0, #16
	cmp	r0, #0
	bne	.L69be
	ldr	r1, =ewram_2004c24
	mov	r0, #1
	strb	r0, [r1]
.L69be:
	bx	lr
.func_end FlashTimerIntr

.thumb_func_start SetFlashTimerIntr  @ 0x080069c8
	mov	r2, r1
	lsl	r0, #24
	lsr	r1, r0, #24
	cmp	r1, #3
	bhi	.L69fc
	ldr	r0, =ewram_2004c20
	strb	r1, [r0]
	ldr	r1, =ewram_2004c28
	ldrb	r0, [r0]
	lsl	r0, #2
	ldr	r3, =REG_TM0CNT
	add	r0, r3
	str	r0, [r1]
	ldr	r0, =FlashTimerIntr
	str	r0, [r2]
	mov	r0, #0
	b	.L69fe

	.pool_aligned

.L69fc:
	mov	r0, #1
.L69fe:
	bx	lr
.func_end SetFlashTimerIntr

.thumb_func_start StartFlashTimer  @ 0x08006a00
	push	{r4, r5, lr}
	lsl	r0, #24
	lsr	r0, #24
	ldr	r1, =ewram_2004c18
	lsl	r2, r0, #1
	add	r2, r0
	lsl	r2, #1
	ldr	r0, [r1]
	add	r2, r0
	ldr	r1, =ewram_2004c2c
	ldr	r3, =REG_IME
	ldrh	r0, [r3]
	strh	r0, [r1]
	mov	r5, #0
	strh	r5, [r3]
	ldr	r4, =REG_IE
	ldr	r0, =ewram_2004c20
	ldrb	r0, [r0]
	mov	r1, #8
	lsl	r1, r0
	ldrh	r0, [r4]
	orr	r0, r1
	strh	r0, [r4]
	mov	r0, #1
	strh	r0, [r3]
	ldr	r0, =ewram_2004c24
	strb	r5, [r0]
	ldr	r1, =ewram_2004c22
	ldrh	r0, [r2]
	strh	r0, [r1]
	add	r2, #2
	ldr	r3, =ewram_2004c28
	ldr	r0, [r3]
	ldrh	r1, [r2]
	strh	r1, [r0]
	add	r0, #2
	str	r0, [r3]
	ldrh	r1, [r2, #2]
	strh	r1, [r0]
	sub	r0, #2
	str	r0, [r3]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end StartFlashTimer

.thumb_func_start StopFlashTimer  @ 0x08006a78
	ldr	r1, =ewram_2004c28
	ldr	r0, [r1]
	mov	r2, #0
	strh	r2, [r0]
	add	r0, #2
	str	r0, [r1]
	strh	r2, [r0]
	sub	r0, #2
	str	r0, [r1]
	ldr	r3, =REG_IME
	strh	r2, [r3]
	ldr	r2, =REG_IE
	ldr	r0, =ewram_2004c20
	ldrb	r0, [r0]
	mov	r1, #8
	lsl	r1, r0
	ldrh	r0, [r2]
	bic	r0, r1
	strh	r0, [r2]
	ldr	r0, =ewram_2004c2c
	ldrh	r0, [r0]
	strh	r0, [r3]
	bx	lr
.func_end StopFlashTimer

