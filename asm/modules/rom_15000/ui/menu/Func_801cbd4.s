	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801cbd4  @ 0x0801cbd4
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r0, =0x576
	mov	r6, r2
	add	r2, r5, r0
	ldrh	r0, [r2]
	ldr	r4, =Func_8000888
	lsl	r0, #16
	.call_via r4
	mov	r1, #0xaf
	lsl	r1, #3
	add	r2, r5, r1
	asr	r7, r0, #16
	ldrh	r0, [r2]
	mov	r1, r6
	lsl	r0, #16
	.call_via r4
	ldr	r2, =0x57a
	add	r5, r2
	asr	r6, r0, #16
	ldrh	r0, [r5]
	mov	r1, r3
	lsl	r0, #16
	.call_via r4
	asr	r0, #16
	cmp	r7, #0
	bge	.L1cc14
	mov	r7, #0
.L1cc14:
	cmp	r6, #0
	bge	.L1cc1a
	mov	r6, #0
.L1cc1a:
	cmp	r0, #0
	bge	.L1cc20
	mov	r0, #0
.L1cc20:
	cmp	r7, #0x1f
	ble	.L1cc26
	mov	r7, #0x1f
.L1cc26:
	cmp	r6, #0x1f
	ble	.L1cc2c
	mov	r6, #0x1f
.L1cc2c:
	cmp	r0, #0x1f
	ble	.L1cc32
	mov	r0, #0x1f
.L1cc32:
	lsl	r3, r6, #5
	lsl	r0, #10
	add	r0, r3
	add	r0, r7, r0
	lsl	r0, #16
	lsr	r0, #16
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801cbd4

