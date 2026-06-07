	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8003538
	push	{r5, lr}
	ldr	r4, =iwram_3001b00
	ldr	r0, [r4]
	mov	r5, #0
	cmp	r0, #0
	bgt	.L355e
	ldr	r2, =iwram_3001ae8
	ldr	r3, =iwram_3001b04
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r1, [r3]
	cmp	r0, #0
	bne	.L3558
	mov	r3, #6
	str	r3, [r4]
	b	.L3564
.L3558:
	mov	r3, #0x13
	str	r3, [r4]
	b	.L3564
.L355e:
	ldr	r3, =iwram_3001b04
	str	r5, [r3]
	ldr	r1, [r3]
.L3564:
	cmp	r1, #0
	beq	.L360a
	mov	r3, #0x40
	and	r3, r1
	mov	r2, #0
	cmp	r3, #0
	beq	.L3574
	mov	r2, #1
.L3574:
	mov	r3, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.L357e
	add	r2, #1
.L357e:
	mov	r3, #0x20
	and	r3, r1
	cmp	r3, #0
	beq	.L3588
	add	r2, #1
.L3588:
	mov	r3, #0x10
	and	r3, r1
	cmp	r3, #0
	beq	.L3592
	add	r2, #1
.L3592:
	ldr	r0, =iwram_3001afc
	str	r1, [r0]
	cmp	r2, #1
	beq	.L35b8
	cmp	r2, #1
	bcc	.L35b0
	cmp	r2, #2
	beq	.L35c2
	cmp	r2, #3
	beq	.L35e0
	ldr	r2, =iwram_3001d04
	mov	r3, #0x30
	str	r3, [r2]
	ldr	r2, =0xff0f
	b	.L3602
.L35b0:
	ldr	r2, =iwram_3001d04
	mov	r3, #0x30
	str	r3, [r2]
	b	.L360e
.L35b8:
	ldr	r2, =iwram_3001d04
	mov	r3, #0xf0
	and	r1, r3
	str	r1, [r2]
	b	.L360e
.L35c2:
	ldr	r1, =iwram_3001d04
	ldr	r3, [r1]
	ldr	r2, [r0]
	and	r3, r2
	cmp	r3, #0
	bne	.L35d2
	mov	r3, #0x30
	str	r3, [r1]
.L35d2:
	ldr	r3, [r1]
	ldr	r2, =0xffff
	eor	r3, r2
	ldr	r2, [r0]
	and	r2, r3
	str	r2, [r0]
	b	.L360e
.L35e0:
	ldr	r4, =iwram_3001d04
	ldr	r3, [r4]
	mov	r2, #0x30
	and	r3, r2
	cmp	r3, #0
	beq	.L35ee
	mov	r5, #0x30
.L35ee:
	ldr	r3, [r4]
	mov	r2, #0xc0
	and	r3, r2
	cmp	r3, #0
	beq	.L35fa
	mov	r5, #0xc0
.L35fa:
	ldr	r2, =0xffff
	eor	r2, r5
	and	r1, r2
	str	r1, [r4]
.L3602:
	ldr	r3, [r0]
	and	r3, r2
	str	r3, [r0]
	b	.L360e
.L360a:
	ldr	r3, =iwram_3001afc
	str	r1, [r3]
.L360e:
	ldr	r1, =iwram_3001ae8
	ldr	r0, =iwram_3001cf4
	ldr	r3, [r1]
	ldr	r2, [r0]
	eor	r3, r2
	ldr	r2, [r1]
	ldr	r4, =gKeyPress
	and	r3, r2
	str	r3, [r4]
	ldr	r3, [r1]
	str	r3, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8003538
