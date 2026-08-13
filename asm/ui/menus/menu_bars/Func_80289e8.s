	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80289e8  @ 0x080289e8
	push	{r5, r6, lr}
	mov	r6, #0
	mov	r5, #0
	bl	Func_801f77c
	cmp	r0, #0
	bge	.L289fc
	mov	r0, #1
	neg	r0, r0
	b	.L28a96
.L289fc:
	cmp	r0, #0
	bne	.L28a04
	mov	r0, #0
	b	.L28a96
.L28a04:
	cmp	r0, #3
	bne	.L28a0c
	mov	r6, #1
	b	.L28a1e
.L28a0c:
	cmp	r0, #0x67
	bne	.L28a14
	mov	r6, #2
	b	.L28a1e
.L28a14:
	cmp	r0, #0x64
	ble	.L28a1c
	mov	r6, #3
	b	.L28a1e
.L28a1c:
	mov	r5, #1
.L28a1e:
	bl	Func_80284dc
	cmp	r6, #0
	beq	.L28a2a
	cmp	r6, #3
	bne	.L28a30
.L28a2a:
	mov	r0, #0x15
	bl	AddMenuBarOption
.L28a30:
	cmp	r6, #1
	bhi	.L28a3a
	mov	r0, #0x16
	bl	AddMenuBarOption
.L28a3a:
	cmp	r6, #0
	beq	.L28a42
	cmp	r6, #3
	bne	.L28a48
.L28a42:
	mov	r0, #0x17
	bl	AddMenuBarOption
.L28a48:
	mov	r0, #0x18
	bl	AddMenuBarOption
	ldr	r3, =ewram_200200c
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L28a5e
	mov	r0, #0x1d
	bl	AddMenuBarOption
.L28a5e:
	ldr	r3, =ewram_2002010
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L28a6e
	mov	r0, #0x1e
	bl	AddMenuBarOption
.L28a6e:
	mov	r0, #0x11
	mov	r1, #7
	mov	r2, #0
	bl	Func_8028808
	mov	r0, r5
	bl	Func_8028574
	mov	r5, r0
	bl	Func_802851c
	cmp	r5, #0
	blt	.L28a94
	lsl	r3, r6, #1
	add	r3, r6
	ldr	r2, =.L3740f
	lsl	r3, #1
	add	r3, r5, r3
	ldrsb	r5, [r2, r3]
.L28a94:
	mov	r0, r5
.L28a96:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80289e8
