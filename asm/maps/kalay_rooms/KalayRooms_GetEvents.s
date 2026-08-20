	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start KalayRooms_GetEvents
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.Lm937_116
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #9
	blt	.Lm937_112
	cmp	r3, #0xf
	ble	.Lm937_10e
	cmp	r3, #0x11
	bne	.Lm937_112
.Lm937_10e:
	ldr	r0, =.Lm937_c88
	b	.Lm937_122
.Lm937_112:
	ldr	r0, =.Lm937_a48
	b	.Lm937_122
.Lm937_116:
	ldr	r3, =0x65
	cmp	r2, r3
	bne	.Lm937_120
	ldr	r0, =.Lm937_eb0
	b	.Lm937_122
.Lm937_120:
	ldr	r0, =.Lm937_a3c
.Lm937_122:
	pop	{r1}
	bx	r1
.func_end KalayRooms_GetEvents

