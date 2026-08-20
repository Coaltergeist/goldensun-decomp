	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_1fb4
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f3c
	ldr	r6, [r3]
	ldr	r5, =ewram_2001000
	bl	__GetFile
	mov	r1, r6
	add	r1, #0xf0
	bl	__DecompressLZ
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lc1_1fe4
	mov	r3, #1
	strh	r3, [r5]
	strh	r3, [r5, #2]
	mov	r3, r6
	add	r3, #0xe0
	ldrh	r3, [r3]
	strh	r0, [r5, #8]
	strh	r3, [r5, #4]
	strh	r0, [r5, #6]
.Lc1_1fe4:
	ldr	r1, =0xc85
	ldr	r0, =OvlFunc_common1_1928
	bl	__StartTask
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1fb4

