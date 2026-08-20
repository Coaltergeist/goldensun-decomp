	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_200974c
	push	{lr}
	mov	r1, r0
	add	r1, #0x64
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r3, [r0, #8]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #8]
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, =0x7ae
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	add	r3, #2
	strh	r3, [r1]
	ldr	r3, [r0, #0x68]
	sub	r3, #1
	str	r3, [r0, #0x68]
	cmp	r3, #0
	bne	.Lm921_178a
	bl	__DeleteActor
.Lm921_178a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_200974c

