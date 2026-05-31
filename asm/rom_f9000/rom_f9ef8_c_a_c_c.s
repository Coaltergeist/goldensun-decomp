	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80fa490
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
	bl	Func_80fa264
	add	r5, #0xc
	sub	r4, #1
	cmp	r4, #0
	bne	.Lfa4a0
.Lfa4ae:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_80fa490

.thumb_func_start Func_80fa4bc
	push	{lr}
	lsl	r1, #16
	lsr	r1, #16
	bl	Func_80fa280
	pop	{r0}
	bx	r0
.func_end Func_80fa4bc

.thumb_func_start Func_80fa4cc
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
.func_end Func_80fa4cc

.thumb_func_start Func_80fa4ec
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
.func_end Func_80fa4ec

.thumb_func_start Func_80fa514
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
	bl	Func_80fa68c
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
.func_end Func_80fa514

.thumb_func_start Func_80fa55c
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
	ldr	r0, =iwram_3007ff0
	ldr	r4, [r0]
	ldr	r6, [r4]
	ldr	r0, =0x68736d53
	cmp	r6, r0
	bne	.Lfa61c
	add	r0, r6, #1
	str	r0, [r4]
	ldr	r1, =ewram_2004000
	ldr	r0, =Func_80fb518
	str	r0, [r1, #0x20]
	ldr	r0, =Func_80fa1d4
	str	r0, [r1, #0x44]
	ldr	r0, =Func_80fa1e8
	str	r0, [r1, #0x4c]
	ldr	r0, =Func_80fb670
	str	r0, [r1, #0x70]
	ldr	r0, =Func_80fa16c
	str	r0, [r1, #0x74]
	ldr	r0, =Func_80fa798
	str	r0, [r1, #0x78]
	ldr	r0, =Func_80f9ef8
	str	r0, [r1, #0x7c]
	mov	r2, r1
	add	r2, #0x80
	ldr	r0, =Func_80fab7c
	str	r0, [r2]
	add	r1, #0x84
	ldr	r0, =Func_80fac44
	str	r0, [r1]
	str	r5, [r4, #0x1c]
	ldr	r0, =Func_80fae58
	str	r0, [r4, #0x28]
	ldr	r0, =Func_80fada0
	str	r0, [r4, #0x2c]
	ldr	r0, =Func_80facf8
	str	r0, [r4, #0x30]
	ldr	r0, =0
	mov	r1, #0
	strb	r0, [r4, #0xc]
	str	r1, [sp]
	ldr	r2, =0x5000040
	mov	r0, sp
	mov	r1, r5
	bl	Func_8006864
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
.func_end Func_80fa55c

