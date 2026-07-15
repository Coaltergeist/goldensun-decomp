	.include "macros.inc"

	.section .text.after_ea60, "ax", %progbits

.thumb_func_start Func_800eaf8  @ 0x0800eaf8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r5, #0
	mov	r0, #0
	cmp	r1, #0
	beq	.Leb80
	ldr	r4, =gState
	mov	r2, #0x85
	lsl	r2, #2
	ldr	r0, =gKeyPress
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb1e
	mov	r3, #0xb9
	b	.Leb42
.Leb1e:
	mov	r2, #0x84
	lsl	r2, #2
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb32
	mov	r3, #0xba
	b	.Leb42
.Leb32:
	ldr	r2, =0x216
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb4e
	mov	r3, #0xbb
.Leb42:
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #1
	strh	r3, [r2]
	mov	r5, #1
	b	.Leb7e
.Leb4e:
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb64
	mov	r2, #0x88
	lsl	r2, #2
	b	.Leb74
.Leb64:
	ldr	r2, =0x21a
	add	r3, r4, r2
	ldrh	r2, [r3]
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Leb7e
	ldr	r2, =0x222
.Leb74:
	add	r3, r4, r2
	ldrh	r0, [r3]
	bl	Func_800ea60
	mov	r5, r0
.Leb7e:
	mov	r0, r5
.Leb80:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_800eaf8
