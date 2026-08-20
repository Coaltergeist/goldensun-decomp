	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_879_20081c0
	push	{r5, r6, lr}
	mov	r0, #0xa4
	lsl	r0, #3
	bl	__alloc_ewram
	ldr	r6, =.L650
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r5, r0
	cmp	r3, r2
	bne	.L1e0
	bl	__AllocSpriteSlot
	strh	r0, [r6]
.L1e0:
	ldr	r0, =_FILE_1c
	bl	__GetFile
	mov	r1, r5
	bl	__DecompressLZ
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x50003e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r5
	mov	r1, #0xa0
	add	r2, #0x20
	lsl	r1, #3
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__UploadSpriteGFX
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L20e:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L20e
	mov	r0, r5
	bl	__free
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_879_20081c0

