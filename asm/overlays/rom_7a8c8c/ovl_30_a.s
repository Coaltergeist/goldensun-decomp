	.include "macros.inc"

.thumb_func_start OvlFunc_922_2008030
	push	{lr}
	mov	r0, #8
	mov	r1, #2
	mov	r2, #1
	bl	__Func_80955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008030

.thumb_func_start OvlFunc_922_2008040
	push	{lr}
	mov	r0, #0xb
	mov	r1, #0x3e
	bl	__Func_8091f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008040

.thumb_func_start OvlFunc_922_2008050
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.L68
	ldr	r0, =.L24bc
	b	.La6
.L68:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.L72
	ldr	r0, =.L2504
	b	.La6
.L72:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.L7c
	ldr	r0, =.L25f4
	b	.La6
.L7c:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.L86
	ldr	r0, =.L263c
	b	.La6
.L86:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.L90
	ldr	r0, =.L26cc
	b	.La6
.L90:
	ldr	r3, =0x42
	cmp	r2, r3
	bne	.L9a
	ldr	r0, =.L2744
	b	.La6
.L9a:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.La4
	ldr	r0, =.L27bc
	b	.La6
.La4:
	ldr	r0, =.L248c
.La6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2008050

