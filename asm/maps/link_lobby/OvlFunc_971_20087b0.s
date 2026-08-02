	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_20087b0
	push	{r5, r6, lr}
	mov	r6, #0
	ldr	r0, =0x302
	bl	__GetFlag
	ldr	r3, =ewram_20023a0
	strb	r6, [r3]
	cmp	r0, #0
	bne	.L7e6
	mov	r0, #5
	bl	__WaitFrames
	bl	OvlFunc_971_2008580
	mov	r6, r0
	cmp	r6, #0
	blt	.L812
	mov	r0, #5
	bl	__WaitFrames
	bl	OvlFunc_971_2008398
	mov	r6, r0
	mov	r5, r6
	cmp	r6, #0
	bge	.L802
	b	.L80e
.L7e6:
	bl	OvlFunc_971_2008398
	mov	r6, r0
	mov	r5, r6
	cmp	r6, #0
	blt	.L812
	mov	r0, #0xa
	bl	__WaitFrames
	bl	OvlFunc_971_2008580
	mov	r6, r0
	cmp	r6, #0
	blt	.L812
.L802:
	mov	r0, #0xfc
	lsl	r0, #2
	mov	r1, r5
	bl	__SetFlagByte
	mov	r6, r5
.L80e:
	cmp	r5, #0
	bge	.L836
.L812:
	ldr	r1, =ewram_2002220
	ldr	r0, =REG_IME
	ldrh	r4, [r0]
	strh	r0, [r0]
	mov	r2, #0
	mov	r3, #0x80
	strb	r3, [r1, #1]
	ldr	r3, =ewram_2002080
	str	r2, [r3]
	ldr	r3, =ewram_2002008
	strh	r2, [r3]
	ldr	r3, =ewram_20023ac
	str	r2, [r3]
	ldr	r3, =ewram_2002238
	strb	r2, [r1, #3]
	strb	r2, [r1, #2]
	strh	r2, [r3]
	strh	r4, [r0]
.L836:
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_20087b0
