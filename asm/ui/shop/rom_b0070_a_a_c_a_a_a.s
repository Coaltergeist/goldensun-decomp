	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b010c  @ 0x080b010c
	push	{r5, lr}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	galloc_iwram
	mov	r5, r0
	bl	_Func_808e118
	mov	r3, #0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500029c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r5, r3
	mov	r3, #0xc
	strb	r3, [r2]
	ldr	r2, =0x36e
	add	r0, r5, r2
	bl	_Func_80796c4
	ldr	r2, =0x3a7
	add	r3, r5, r2
	strb	r0, [r3]
	bl	AllocSpriteSlot
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3940
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	ldr	r2, =0x392
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3b40
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3bc0
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	ldr	r2, =0x396
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb39c0
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	ldr	r2, =0x39a
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3a40
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	mov	r3, #0xe6
	lsl	r3, #2
	add	r5, r3
	ldr	r2, =.Lb3ac0
	strh	r0, [r5]
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80b00f4
	bl	StartTask
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80b010c

