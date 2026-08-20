	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80cd4b4  @ 0x080cd4b4
	push	{r5, lr}
	ldr	r3, =iwram_3001e74
	ldr	r1, =0x77b4
	ldr	r2, [r3, #0x78]
	add	r5, r2, r1
	ldr	r0, [r3]
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.Lcd4f2
	add	r1, #4
	add	r3, r2, r1
	ldr	r2, [r3]
	add	r2, #1
	str	r2, [r3]
	ldr	r3, =0x544
	add	r0, r3
	lsl	r3, r2, #4
	add	r3, r2
	lsl	r3, #4
	add	r3, r2
	mov	r2, #0x80
	lsl	r3, #2
	lsl	r2, #9
	sub	r2, r3
	ldr	r1, =0x50000c0
	mov	r3, #0x80
	bl	_UploadBGPalette
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
.Lcd4f2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80cd4b4
