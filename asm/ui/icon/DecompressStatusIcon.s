	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DecompressStatusIcon  @ 0x0801a4c0
	push	{lr}
	ldr	r3, =iwram_3001e94
	ldr	r1, [r3]
	ldr	r3, =0x604
	add	r2, r1, r3
	ldr	r3, =gStatusIcons
	lsl	r0, #2
	ldr	r3, [r3, r0]
	mov	r0, #0xc0
	lsl	r0, #3
	str	r3, [r2]
	add	r3, r1, r0
	mov	r2, #2
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	strh	r2, [r3]
	mov	r0, r1
	mov	r1, #0
	bl	LoadIcon
	pop	{r0}
	bx	r0
.func_end DecompressStatusIcon

