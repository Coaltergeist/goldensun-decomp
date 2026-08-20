	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_88c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0xe5
	lsl	r0, #5
	bl	__alloc_ewram
	ldr	r7, =.Lc1_10
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r6, r0
	cmp	r3, r2
	bne	.Lc1_8b2
	bl	__AllocSpriteSlot
	strh	r0, [r7]
.Lc1_8b2:
	ldr	r3, =.Lc1_1
	ldrb	r3, [r3, r5]
	mov	r8, r3
	cmp	r5, #8
	bne	.Lc1_8be
	mov	r5, #4
.Lc1_8be:
	ldr	r0, =_FILE_e7
	bl	__GetFile
	mov	r1, r6
	bl	__DecompressLZ
	mov	r2, r8
	add	r0, r6, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50003e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	lsl	r2, r5, #10
	add	r2, r6
	mov	r1, #0x80
	add	r2, #0xa0
	lsl	r1, #3
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	bl	__UploadSpriteGFX
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lc1_8f0:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lc1_8f0
	mov	r0, r6
	bl	__free
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_88c

