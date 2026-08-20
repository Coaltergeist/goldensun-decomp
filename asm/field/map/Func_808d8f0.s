	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808d8f0  @ 0x0808d8f0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xfa
	ldr	r5, [r3]
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	cmp	r0, #0xfc
	beq	.L8d918
	cmp	r0, #0xfc
	bgt	.L8d90e
	cmp	r0, #0xf9
	beq	.L8d93e
	b	.L8d98e
.L8d90e:
	cmp	r0, #0xfd
	beq	.L8d956
	cmp	r0, #0xfe
	beq	.L8d93e
	b	.L8d98e
.L8d918:
	mov	r3, #0xce
	lsl	r3, #1
	add	r5, r3
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8d98e
	mov	r0, r1
	mov	r2, #0
	mov	r1, #6
	bl	Func_8092708
	b	.L8d950
.L8d93e:
	mov	r3, #0xce
	lsl	r3, #1
	add	r5, r3
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	bl	Func_8093c00
.L8d950:
	mov	r3, #0
	strh	r3, [r5]
	b	.L8d98e
.L8d956:
	mov	r2, #0xce
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	ble	.L8d98e
	ldr	r1, =gKeyHeld
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8d976
	bl	Func_8093e28
	b	.L8d984
.L8d976:
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L8d984
	bl	Func_8093fa0
.L8d984:
	mov	r3, #0xce
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
.L8d98e:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_808d8f0
