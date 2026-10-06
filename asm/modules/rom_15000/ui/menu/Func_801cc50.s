	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801cc50  @ 0x0801cc50
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r2
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	ldr	r4, =Func_8000888
	lsl	r0, #16
	.call_via r4
	asr	r7, r0, #16
	mov	r2, #2
	ldrsh	r0, [r5, r2]
	mov	r1, r6
	lsl	r0, #16
	.call_via r4
	asr	r6, r0, #16
	mov	r2, #4
	ldrsh	r0, [r5, r2]
	mov	r1, r3
	lsl	r0, #16
	.call_via r4
	asr	r0, #16
	cmp	r7, #0
	bge	.L1cc8c
	mov	r7, #0
.L1cc8c:
	cmp	r7, #0x1f
	ble	.L1cc92
	mov	r7, #0x1f
.L1cc92:
	cmp	r6, #0
	bge	.L1cc98
	mov	r6, #0
.L1cc98:
	cmp	r6, #0x1f
	ble	.L1cc9e
	mov	r6, #0x1f
.L1cc9e:
	cmp	r0, #0
	bge	.L1cca4
	mov	r0, #0
.L1cca4:
	cmp	r0, #0x1f
	ble	.L1ccaa
	mov	r0, #0x1f
.L1ccaa:
	lsl	r3, r6, #5
	lsl	r0, #10
	add	r0, r3
	add	r0, r7, r0
	lsl	r0, #16
	lsr	r0, #16
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801cc50

