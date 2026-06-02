	.include "macros.inc"

.thumb_func_start OvlFunc_925_2008328
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.L340
	ldr	r0, =0x253
	bl	__Func_8079358
.L340:
	ldr	r0, =.L39d4
	pop	{r1}
	bx	r1
.func_end OvlFunc_925_2008328

