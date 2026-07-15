	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0eec  @ 0x080c0eec
	push	{r5, lr}
	ldr	r1, =gKeyHeld
	ldr	r3, [r1]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lc0f6e
	ldr	r5, =gKeyRepeat
.Lc0efc:
	ldr	r3, =iwram_3001e74
	ldr	r1, [r3]
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lc0f14
	ldr	r3, =0x828
	add	r2, r1, r3
	ldr	r3, [r2]
	sub	r3, #1
	str	r3, [r2]
.Lc0f14:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lc0f28
	ldr	r3, =0x828
	add	r2, r1, r3
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
.Lc0f28:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lc0f3c
	ldr	r3, =0x828
	add	r2, r1, r3
	ldr	r3, [r2]
	sub	r3, #0x64
	str	r3, [r2]
.Lc0f3c:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lc0f50
	ldr	r3, =0x828
	add	r2, r1, r3
	ldr	r3, [r2]
	add	r3, #0x64
	str	r3, [r2]
.Lc0f50:
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lc0f66
	ldr	r2, =0x828
	add	r3, r1, r2
	ldr	r0, [r3]
	ldr	r1, =gKeyHeld
	b	.Lc0f6e
.Lc0f66:
	mov	r0, #1
	bl	WaitFrames
	b	.Lc0efc
.Lc0f6e:
	ldr	r3, [r1]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lc0f7a
	ldr	r0, =0x18f
.Lc0f7a:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80c0eec

	.section .text.after_0f98, "ax", %progbits

	.section .text.after_1054, "ax", %progbits

	.section .rodata
	.global .Lc5a30
	.global .Lc5b30
	.global .Lc5c10

.Lc5a30:
	.incrom 0xc5a30, 0xc5b30
.Lc5b30:
	.incrom 0xc5b30, 0xc5c10
.Lc5c10:
	.incrom 0xc5c10, 0xc5c38
