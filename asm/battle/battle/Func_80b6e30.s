	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6e30  @ 0x080b6e30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e74
	ldr	r2, .Lb6e60	@ 0
	ldr	r7, [r3]
	mov	r8, r0
	mov	r6, #0
	mov	r10, r2
	mov	r5, #4
.Lb6e46:
	ldrsh	r3, [r5, r7]
	cmp	r3, r8
	bne	.Lb6e68
	mov	r3, #0
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	bl	_PreloadSpriteGFX
	mov	r3, r10
	strh	r3, [r5, r7]
	b	.Lb6e68

	.align	2, 0
.Lb6e60:
	.word	0
	.pool

.Lb6e68:
	add	r6, #1
	add	r5, #2
	cmp	r6, #5
	ble	.Lb6e46
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b6e30

	.section .rodata.rom_b5a0c_c_c_c
	.global .Lc2a10

.Lc2a10:
	.incrom 0xc2a10, 0xc2a1c
