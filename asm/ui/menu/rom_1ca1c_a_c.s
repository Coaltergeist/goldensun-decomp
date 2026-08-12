	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ce90  @ 0x0801ce90
	push	{lr}
	ldr	r2, =0x574
	add	r0, r2
	ldrh	r3, [r0]
	cmp	r3, #1
	beq	.L1ceb4
	cmp	r3, #1
	bgt	.L1cea6
	cmp	r3, #0
	beq	.L1ceac
	b	.L1cecc
.L1cea6:
	cmp	r3, #2
	beq	.L1ceba
	b	.L1cecc
.L1ceac:
	ldr	r3, =gState
	mov	r2, #0x83
	lsl	r2, #2
	b	.L1cebe
.L1ceb4:
	ldr	r3, =gState
	ldr	r2, =0x205
	b	.L1cebe
.L1ceba:
	ldr	r3, =gState
	ldr	r2, =0x206
.L1cebe:
	add	r1, r3, r2
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1cecc
	add	r3, #0xff
	strb	r3, [r1]
.L1cecc:
	pop	{r0}
	bx	r0
.func_end Func_801ce90

.thumb_func_start Func_801cee0  @ 0x0801cee0
	push	{lr}
	ldr	r2, =0x574
	add	r0, r2
	ldrh	r3, [r0]
	cmp	r3, #1
	beq	.L1cf0e
	cmp	r3, #1
	bgt	.L1cef6
	cmp	r3, #0
	beq	.L1cefc
	b	.L1cf30
.L1cef6:
	cmp	r3, #2
	beq	.L1cf1e
	b	.L1cf30
.L1cefc:
	ldr	r3, =gState
	mov	r2, #0x83
	lsl	r2, #2
	add	r1, r3, r2
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #1
	bhi	.L1cf30
	b	.L1cf2c
.L1cf0e:
	ldr	r3, =gState
	ldr	r2, =0x205
	add	r1, r3, r2
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0x17
	bhi	.L1cf30
	b	.L1cf2c
.L1cf1e:
	ldr	r3, =gState
	ldr	r2, =0x206
	add	r1, r3, r2
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0xe
	bhi	.L1cf30
.L1cf2c:
	add	r3, r2, #1
	strb	r3, [r1]
.L1cf30:
	pop	{r0}
	bx	r0
.func_end Func_801cee0

