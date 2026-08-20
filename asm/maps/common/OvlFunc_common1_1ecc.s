	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_1ecc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r1
	mov	r0, #0x3b
	ldr	r1, =0x7170
	ldr	r5, [sp, #0x28]
	ldr	r6, [sp, #0x2c]
	str	r3, [sp]
	mov	r9, r2
	bl	__galloc_ewram
	mov	r7, r0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__alloc_ewram
	mov	r3, r7
	add	r3, #0xde
	mov	r2, r8
	strh	r2, [r3]
	add	r3, #2
	mov	r2, r10
	strh	r2, [r3]
	add	r3, #2
	strh	r5, [r3]
	add	r3, #2
	strh	r6, [r3]
	mov	r2, r9
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, [sp]
	add	r3, #2
	str	r2, [r3]
	ldr	r2, [sp, #0x24]
	add	r3, #4
	str	r2, [r3]
	mov	r11, r0
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lc1_1f4c
	ldr	r2, [sp]
	lsl	r3, r2, #1
	ldr	r2, [r6, #8]
	sub	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
.Lc1_1f4c:
	ldr	r2, .Lc1_1f8c	@ 0
	mov	r3, r7
	add	r3, #0xda
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, r11
	ldr	r0, =.Lc1_5
	bl	__DecompressLZ
	bl	__AllocSpriteSlot
	mov	r3, r7
	add	r3, #0xd8
	strh	r0, [r3]
	mov	r1, #0x80
	lsl	r0, #16
	mov	r2, r11
	lsl	r1, #2
	asr	r0, #16
	bl	__UploadSpriteGFX
	ldr	r1, =0xc76
	ldr	r0, =OvlFunc_common1_1b08
	bl	__StartTask
	mov	r0, r11
	bl	__free
	add	sp, #4
	b	.Lc1_1fa4

	.align	2, 0
.Lc1_1f8c:
	.word	0
	.pool

.Lc1_1fa4:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1ecc

