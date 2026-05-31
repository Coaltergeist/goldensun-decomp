	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80fa264
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
.func_end Func_80fa264

.thumb_func_start Func_80fa280
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
.func_end Func_80fa280

.thumb_func_start Func_80fa2a0
	push	{r4, r5, r6, lr}
	ldr	r0, =Func_80f9674
	mov	r1, #2
	neg	r1, r1
	and	r0, r1
	ldr	r1, =iwram_3007000
	ldr	r2, =0x4000100
	bl	Func_8006864
	ldr	r0, =ewram_2003050
	bl	Func_80fa6a0
	ldr	r0, =ewram_2004090
	bl	Func_80fa55c
	ldr	r0, =0x97f800
	bl	Func_80fa83c
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
	bl	Func_80fa9e0
	ldrh	r0, [r5, #0xa]
	strb	r0, [r4, #0xb]
	ldr	r0, =ewram_2004350
	str	r0, [r4, #0x18]
	add	r5, #0xc
	sub	r6, #1
	cmp	r6, #0
	bne	.Lfa2d2
.Lfa2ee:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80fa2a0

