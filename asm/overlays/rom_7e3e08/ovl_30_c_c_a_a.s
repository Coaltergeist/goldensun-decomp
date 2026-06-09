	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008a00
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.La18
	ldr	r0, =.L41b0
	b	.La2e
.La18:
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.La22
	ldr	r0, =.L4270
	b	.La2e
.La22:
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.La2c
	ldr	r0, =.L4318
	b	.La2e
.La2c:
	ldr	r0, =.L4198
.La2e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_957_2008a00

.thumb_func_start OvlFunc_957_2008a54
	push	{lr}
	ldr	r3, =ewram_2001004
	ldrb	r2, [r3]
	ldr	r1, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r1, [r3]
	lsl	r2, #24
	asr	r2, #24
	cmp	r2, #0
	bne	.La70
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, #2
	b	.Laa6
.La70:
	cmp	r2, #1
	bne	.La7c
	mov	r2, #0xe0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La7c:
	cmp	r2, #2
	bne	.La88
	mov	r2, #0xc0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La88:
	cmp	r2, #3
	bne	.La94
	mov	r2, #0xa0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La94:
	cmp	r2, #4
	bne	.Laa0
	mov	r2, #0x80
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.Laa0:
	mov	r2, #0xc0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #3
.Laa6:
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008a54

.thumb_func_start OvlFunc_957_2008abc
	push	{lr}
	ldr	r2, =ewram_2001004
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	strb	r0, [r2]
	ldr	r2, =0xcb8
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lad6
	bl	OvlFunc_957_2008a54
.Lad6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008abc

