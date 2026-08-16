	.include "macros.inc"

.thumb_func_start Func_8091ff0  @ 0x08091ff0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcc8
	ldr	r3, [r3]
	mov	r5, r0
	add	r3, r2
	strh	r5, [r3]
	mov	r2, #1
	lsl	r3, r5, #16
	asr	r3, #16
	neg	r2, r2
	cmp	r3, r2
	bne	.L9200c
	ldr	r5, =0x121
.L9200c:
	mov	r0, #0x95
	lsl	r0, #1
	bl	_PlaySound
	mov	r0, r5
	bl	_PlaySound
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091ff0

