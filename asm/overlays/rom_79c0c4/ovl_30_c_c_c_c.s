	.include "macros.inc"

.thumb_func_start OvlFunc_908_20084c8
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_908_20084c8

	.section .data
	.global .L6b0
	.global .L598

.L598:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x598, (0x688-0x598)
.L688:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x688, (0x6b0-0x688)
.L6b0:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x6b0, (0x8f0-0x6b0)
.L8f0:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x8f0
