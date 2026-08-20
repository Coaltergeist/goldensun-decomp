	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_20094b8
	push	{r5, r6, lr}
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	ldr	r5, =.Lm891_2a50
	bl	__galloc_ewram
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =.Lm891_256c
	bl	__DecompressLZ1
	bl	__AllocSpriteSlot
	mov	r1, #0x80
	mov	r2, r6
	bl	__UploadSpriteGFX
	mov	r3, #0xac
	lsl	r3, #8
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.Lm891_14e8:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.Lm891_14e8
	bl	__AllocSpriteSlot
	mov	r2, r6
	add	r2, #0x80
	mov	r1, #0x80
	bl	__UploadSpriteGFX
	mov	r3, #0xdc
	lsl	r3, #8
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.Lm891_1512:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.Lm891_1512
	bl	__AllocSpriteSlot
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r6, r3
	mov	r1, #0x80
	bl	__UploadSpriteGFX
	mov	r3, #0xc0
	lsl	r3, #4
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.Lm891_153e:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.Lm891_153e
	mov	r0, #0xe
	bl	__gfree
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_891_2008eb0
	bl	__StartTask
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20094b8

