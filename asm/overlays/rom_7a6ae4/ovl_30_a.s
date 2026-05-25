	.include "macros.inc"

.thumb_func_start OvlFunc_7a6ae4_30
	push	{lr}
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_7a6ae4_30

.thumb_func_start OvlFunc_7a6ae4_40
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.L58
	ldr	r0, =.L9ec
	b	.L6e
.L58:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.L62
	ldr	r0, =.La64
	b	.L6e
.L62:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.L6c
	ldr	r0, =.Lb24
	b	.L6e
.L6c:
	ldr	r0, =.L9bc
.L6e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7a6ae4_40

