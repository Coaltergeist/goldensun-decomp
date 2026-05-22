	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_fa264
	mov	r2, r0
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfa276
	ldr	r0, [r2, #4]
	ldr	r1, =0x7fffffff
	and	r0, r1
	str	r0, [r2, #4]
.Lfa276:
	bx	lr
.func_end Func_fa264

.thumb_func_start Func_fa280
	mov	r2, r0
	lsl	r1, #16
	lsr	r1, #16
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfa298
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	mov	r0, #0x80
	lsl	r0, #1
	strh	r0, [r2, #0x28]
.Lfa298:
	bx	lr
.func_end Func_fa280

.thumb_func_start Func_fa2a0
	push	{r4, r5, r6, lr}
	ldr	r0, =Func_f9674
	mov	r1, #2
	neg	r1, r1
	and	r0, r1
	ldr	r1, =iwram_7000
	ldr	r2, =0x4000100
	bl	Func_6864
	ldr	r0, =ewram_3050
	bl	Func_fa6a0
	ldr	r0, =ewram_4090
	bl	Func_fa55c
	ldr	r0, =0x97f800
	bl	Func_fa83c
	ldr	r0, =8
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lfa2ee
	ldr	r5, =Data_fc624
	mov	r6, r0
.Lfa2d2:
	ldr	r4, [r5]
	ldr	r1, [r5, #4]
	ldrb	r2, [r5, #8]
	mov	r0, r4
	bl	Func_fa9e0
	ldrh	r0, [r5, #0xa]
	strb	r0, [r4, #0xb]
	ldr	r0, =ewram_4350
	str	r0, [r4, #0x18]
	add	r5, #0xc
	sub	r6, #1
	cmp	r6, #0
	bne	.Lfa2d2
.Lfa2ee:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fa2a0

.thumb_func_start Func_fa318
	push	{lr}
	bl	Func_f95f0
	pop	{r0}
	bx	r0
.func_end Func_fa318

.thumb_func_start Func_fa324
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r0]
	mov	r0, r2
	bl	Func_faa58
	pop	{r0}
	bx	r0
.func_end Func_fa324

.thumb_func_start Func_fa350
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r1, [r1]
	ldr	r3, [r1]
	ldr	r2, [r0]
	cmp	r3, r2
	beq	.Lfa384
	mov	r0, r1
	mov	r1, r2
	bl	Func_faa58
	b	.Lfa398

	.pool_aligned

.Lfa384:
	ldr	r2, [r1, #4]
	ldrh	r0, [r1, #4]
	cmp	r0, #0
	beq	.Lfa390
	cmp	r2, #0
	bge	.Lfa398
.Lfa390:
	mov	r0, r1
	mov	r1, r3
	bl	Func_faa58
.Lfa398:
	pop	{r0}
	bx	r0
.func_end Func_fa350

.thumb_func_start Func_fa39c
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r1, [r1]
	ldr	r3, [r1]
	ldr	r2, [r0]
	cmp	r3, r2
	beq	.Lfa3d0
	mov	r0, r1
	mov	r1, r2
	bl	Func_faa58
	b	.Lfa3ec

	.pool_aligned

.Lfa3d0:
	ldr	r2, [r1, #4]
	ldrh	r0, [r1, #4]
	cmp	r0, #0
	bne	.Lfa3e2
	mov	r0, r1
	mov	r1, r3
	bl	Func_faa58
	b	.Lfa3ec
.Lfa3e2:
	cmp	r2, #0
	bge	.Lfa3ec
	mov	r0, r1
	bl	Func_fa264
.Lfa3ec:
	pop	{r0}
	bx	r0
.func_end Func_fa39c

.thumb_func_start Func_fa3f0
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r2]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.Lfa416
	mov	r0, r2
	bl	Func_fab3c
.Lfa416:
	pop	{r0}
	bx	r0
.func_end Func_fa3f0

.thumb_func_start Func_fa424
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r2]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.Lfa44a
	mov	r0, r2
	bl	Func_fa264
.Lfa44a:
	pop	{r0}
	bx	r0
.func_end Func_fa424

.thumb_func_start Func_fa458
	push	{r4, r5, lr}
	ldr	r0, =8
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lfa476
	ldr	r5, =Data_fc624
	mov	r4, r0
.Lfa468:
	ldr	r0, [r5]
	bl	Func_fab3c
	add	r5, #0xc
	sub	r4, #1
	cmp	r4, #0
	bne	.Lfa468
.Lfa476:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_fa458

.thumb_func_start Func_fa484
	push	{lr}
	bl	Func_fa264
	pop	{r0}
	bx	r0
.func_end Func_fa484

.thumb_func_start Func_fa490
	push	{r4, r5, lr}
	ldr	r0, =8
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lfa4ae
	ldr	r5, =Data_fc624
	mov	r4, r0
.Lfa4a0:
	ldr	r0, [r5]
	bl	Func_fa264
	add	r5, #0xc
	sub	r4, #1
	cmp	r4, #0
	bne	.Lfa4a0
.Lfa4ae:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_fa490

.thumb_func_start Func_fa4bc
	push	{lr}
	lsl	r1, #16
	lsr	r1, #16
	bl	Func_fa280
	pop	{r0}
	bx	r0
.func_end Func_fa4bc

.thumb_func_start Func_fa4cc
	mov	r2, r0
	lsl	r1, #16
	lsr	r1, #16
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfa4e2
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	ldr	r0, =0x101
	strh	r0, [r2, #0x28]
.Lfa4e2:
	bx	lr
.func_end Func_fa4cc

.thumb_func_start Func_fa4ec
	mov	r2, r0
	lsl	r1, #16
	lsr	r1, #16
	ldr	r3, [r2, #0x34]
	ldr	r0, =0x68736d53
	cmp	r3, r0
	bne	.Lfa50a
	strh	r1, [r2, #0x26]
	strh	r1, [r2, #0x24]
	mov	r0, #2
	strh	r0, [r2, #0x28]
	ldr	r0, [r2, #4]
	ldr	r1, =0x7fffffff
	and	r0, r1
	str	r0, [r2, #4]
.Lfa50a:
	bx	lr
.func_end Func_fa4ec

.thumb_func_start Func_fa514
	push	{r4, r5, r6, r7, lr}
	ldrb	r5, [r0, #8]
	ldr	r4, [r0, #0x2c]
	cmp	r5, #0
	ble	.Lfa556
	mov	r7, #0x80
.Lfa520:
	ldrb	r1, [r4]
	mov	r0, r7
	and	r0, r1
	cmp	r0, #0
	beq	.Lfa54e
	mov	r6, #0x40
	mov	r0, r6
	and	r0, r1
	cmp	r0, #0
	beq	.Lfa54e
	mov	r0, r4
	bl	Func_fa68c
	strb	r7, [r4]
	mov	r0, #2
	strb	r0, [r4, #0xf]
	strb	r6, [r4, #0x13]
	mov	r0, #0x16
	strb	r0, [r4, #0x19]
	mov	r1, r4
	add	r1, #0x24
	mov	r0, #1
	strb	r0, [r1]
.Lfa54e:
	sub	r5, #1
	add	r4, #0x50
	cmp	r5, #0
	bgt	.Lfa520
.Lfa556:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_fa514

.thumb_func_start Func_fa55c
	push	{r4, r5, r6, lr}
	sub	sp, #4
	mov	r5, r0
	ldr	r1, =REG_SOUNDCNT_X
	mov	r0, #0x8f
	strh	r0, [r1]
	ldr	r3, =REG_SOUNDCNT_L
	mov	r2, #0
	strh	r2, [r3]
	ldr	r0, =REG_SOUND1CNT_H + 1
	mov	r1, #8
	strb	r1, [r0]
	add	r0, #6
	strb	r1, [r0]
	add	r0, #0x10
	strb	r1, [r0]
	sub	r0, #0x14
	mov	r1, #0x80
	strb	r1, [r0]
	add	r0, #8
	strb	r1, [r0]
	add	r0, #0x10
	strb	r1, [r0]
	sub	r0, #0xd
	strb	r2, [r0]
	mov	r0, #0x77
	strb	r0, [r3]
	ldr	r0, =iwram_7ff0
	ldr	r4, [r0]
	ldr	r6, [r4]
	ldr	r0, =0x68736d53
	cmp	r6, r0
	bne	.Lfa61c
	add	r0, r6, #1
	str	r0, [r4]
	ldr	r1, =ewram_4000
	ldr	r0, =Func_fb518
	str	r0, [r1, #0x20]
	ldr	r0, =Func_fa1d4
	str	r0, [r1, #0x44]
	ldr	r0, =Func_fa1e8
	str	r0, [r1, #0x4c]
	ldr	r0, =Func_fb670
	str	r0, [r1, #0x70]
	ldr	r0, =Func_fa16c
	str	r0, [r1, #0x74]
	ldr	r0, =Func_fa798
	str	r0, [r1, #0x78]
	ldr	r0, =Func_f9ef8
	str	r0, [r1, #0x7c]
	mov	r2, r1
	add	r2, #0x80
	ldr	r0, =Func_fab7c
	str	r0, [r2]
	add	r1, #0x84
	ldr	r0, =Func_fac44
	str	r0, [r1]
	str	r5, [r4, #0x1c]
	ldr	r0, =Func_fae58
	str	r0, [r4, #0x28]
	ldr	r0, =Func_fada0
	str	r0, [r4, #0x2c]
	ldr	r0, =Func_facf8
	str	r0, [r4, #0x30]
	ldr	r0, =0
	mov	r1, #0
	strb	r0, [r4, #0xc]
	str	r1, [sp]
	ldr	r2, =0x5000040
	mov	r0, sp
	mov	r1, r5
	bl	Func_6864
	mov	r0, #1
	strb	r0, [r5, #1]
	mov	r0, #0x11
	strb	r0, [r5, #0x1c]
	mov	r1, r5
	add	r1, #0x41
	mov	r0, #2
	strb	r0, [r1]
	add	r1, #0x1b
	mov	r0, #0x22
	strb	r0, [r1]
	add	r1, #0x25
	mov	r0, #3
	strb	r0, [r1]
	add	r1, #0x1b
	mov	r0, #0x44
	strb	r0, [r1]
	add	r1, #0x24
	mov	r0, #4
	strb	r0, [r1, #1]
	mov	r0, #0x88
	strb	r0, [r1, #0x1c]
	str	r6, [r4]
.Lfa61c:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_fa55c

