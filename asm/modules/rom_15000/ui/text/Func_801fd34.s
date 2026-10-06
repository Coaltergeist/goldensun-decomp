	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801fd34  @ 0x0801fd34
	push	{r5, r6, r7, lr}
	ldr	r7, =iwram_3001800
	ldr	r6, =0x50001d0
	mov	r5, #0
.L1fd3c:
	ldr	r3, [r7]
	lsl	r2, r5, #3
	add	r3, r2
	lsl	r0, r3, #1
	add	r0, r3
	lsl	r0, #8
	bl	sin
	cmp	r0, #0
	bge	.L1fd54
	ldr	r3, =0x3fff
	add	r0, r3
.L1fd54:
	asr	r3, r0, #14
	lsl	r1, r3, #1
	mov	r2, r3
	add	r1, #0x16
	add	r2, #0x10
	add	r3, #0x14
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r6]
	add	r6, #2
	add	r5, #1
	cmp	r5, #3
	ble	.L1fd3c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801fd34

