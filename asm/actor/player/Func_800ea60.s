	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800ea60  @ 0x0800ea60
	push	{r5, r6, r7, lr}
	ldr	r7, =0x3fff
	ldr	r3, =iwram_3001ebc
	lsr	r6, r0, #14
	and	r7, r0
	ldr	r0, =0x107
	ldr	r5, [r3]
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lea82
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0xfa
	strh	r3, [r2]
	b	.Lead8
.Lea82:
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.Leac2
	ldr	r1, =gKeyPress
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Leaaa
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	ldr	r3, =0xfc88
	strh	r3, [r2]
	b	.Lead8
.Leaaa:
	ldr	r3, [r1]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lead8
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	ldr	r3, =0xfc87
	strh	r3, [r2]
	b	.Lead8
.Leac2:
	cmp	r6, #0
	beq	.Leacc
	cmp	r6, #1
	beq	.Lead0
	b	.Lead8
.Leacc:
	mov	r2, #0xbf
	b	.Lead2
.Lead0:
	mov	r2, #0xc0
.Lead2:
	lsl	r2, #1
	add	r3, r5, r2
	strh	r7, [r3]
.Lead8:
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800ea60
