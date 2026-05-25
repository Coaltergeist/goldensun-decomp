	.include "macros.inc"

.thumb_func_start OvlFunc_7ec968_30
	push	{lr}
	mov	r0, #0xd
	mov	r1, #0x1a
	bl	__Func_8091f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_7ec968_30

.thumb_func_start OvlFunc_7ec968_40
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xaa
	cmp	r2, r3
	bne	.L58
	ldr	r0, =.La40
	b	.L64
.L58:
	ldr	r3, =0xab
	cmp	r2, r3
	bne	.L62
	ldr	r0, =.Lad0
	b	.L64
.L62:
	ldr	r0, =.L998
.L64:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7ec968_40

