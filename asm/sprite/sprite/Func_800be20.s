	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800be20  @ 0x0800be20
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r5, r2
	bl	_GetSpriteInfo
	ldrb	r3, [r0, #5]
	mov	r7, #0
	cmp	r6, r3
	bcc	.Lbe36
	mov	r0, #0
	b	.Lbe68
.Lbe36:
	ldr	r2, [r0, #0x10]
	lsl	r3, r6, #2
	ldr	r0, [r3, r2]
.Lbe3c:
	ldrb	r2, [r0]
	ldrb	r3, [r0, #1]
	add	r0, #2
	cmp	r2, #0xfe
	beq	.Lbe66
	cmp	r2, #0xf1
	beq	.Lbe66
	cmp	r2, #0xfd
	beq	.Lbe66
	cmp	r2, #0xef
	beq	.Lbe66
	cmp	r2, #0xf5
	beq	.Lbe5e
	cmp	r2, #0xff
	beq	.Lbe5e
	cmp	r2, #0xee
	bhi	.Lbe3c
.Lbe5e:
	sub	r5, #1
	add	r7, r3
	cmp	r5, #0
	bne	.Lbe3c
.Lbe66:
	mov	r0, r7
.Lbe68:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800be20

	.section .rodata.rom_b798_c_c
.L12f20:
	.incrom 0x12f20, 0x12fa0
