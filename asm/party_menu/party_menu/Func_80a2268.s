	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a2268  @ 0x080a2268
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r12, r3
	ldrh	r3, [r0, #0xc]
	add	r3, r1, r3
	add	r1, r3, #1
	ldrh	r3, [r0, #0xe]
	ldr	r7, [sp, #0x14]
	add	r3, r2, r3
	ldr	r5, [sp, #0x10]
	add	r2, r3, #1
	lsl	r7, #12
	cmp	r1, #0
	bge	.La228c
	add	r6, r1
	mov	r1, #0
.La228c:
	add	r3, r1, r6
	cmp	r3, #0x1d
	ble	.La2296
	mov	r3, #0x1e
	sub	r6, r3, r1
.La2296:
	cmp	r2, #0
	bge	.La229e
	add	r5, r2
	mov	r2, #0
.La229e:
	add	r3, r2, r5
	cmp	r3, #0x1d
	ble	.La22a8
	mov	r3, #0x14
	sub	r5, r3, r2
.La22a8:
	cmp	r6, #0
	ble	.La22e2
	cmp	r5, #0
	ble	.La22e2
	lsl	r2, #6
	lsl	r3, r1, #1
	add	r1, r2, r3
.La22b6:
	mov	r3, r12
	mov	r0, r6
	add	r4, r1, r3
	cmp	r0, #0
	beq	.La22d2
	ldr	r2, =0xffffefff
.La22c2:
	ldrh	r3, [r4]
	and	r3, r2
	orr	r3, r7
	sub	r0, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r0, #0
	bne	.La22c2
.La22d2:
	sub	r5, #1
	add	r1, #0x40
	cmp	r5, #0
	bne	.La22b6
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r12
	strb	r3, [r2]
.La22e2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a2268

