	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start KalayRooms_MapInit
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	ldr	r3, =0x209
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.Lm937_324
	bl	OvlFunc_937_200833c
.Lm937_324:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end KalayRooms_MapInit

