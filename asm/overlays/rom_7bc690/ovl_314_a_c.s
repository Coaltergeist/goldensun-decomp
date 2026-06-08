	.include "macros.inc"

.thumb_func_start OvlFunc_933_2008344
	push	{r5, r6, r7, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #7
	and	r3, r2
	sub	sp, #0x38
	mov	r7, r0
	cmp	r3, #0
	bne	.L35c
	mov	r0, #0x76
	bl	__Func_80f9080
.L35c:
	ldr	r6, [r5]
	mov	r3, #0xf
	and	r6, r3
	mov	r0, #0
	cmp	r6, #0
	bne	.L398
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Random
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	ldr	r3, =0x880001
	strh	r0, [r5, #0x22]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0
.L398:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_933_2008344

.thumb_func_start OvlFunc_933_20083ac
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L3c4
	ldr	r0, =.L2174
	b	.L3e4
.L3c4:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L3ce
	ldr	r0, =.L21d4
	b	.L3e4
.L3ce:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L3d8
	ldr	r0, =.L2234
	b	.L3e4
.L3d8:
	ldr	r3, =0x5c
	cmp	r2, r3
	bne	.L3e2
	ldr	r0, =.L22dc
	b	.L3e4
.L3e2:
	ldr	r0, =.L212c
.L3e4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_933_20083ac

