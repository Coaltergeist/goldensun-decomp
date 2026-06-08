	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Thrash
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	ldr	r3, =0xc3333
	mov	r2, #0x18
	bl	_Func_80b82c4
	mov	r0, #0x1d
	bl	WaitFrames
	mov	r3, #4
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x18]
	bl	BaseAnim_Nova
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Anim_Thrash

.thumb_func_start Anim_SevereBlow
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	ldr	r3, =0x73333
	mov	r2, #0x18
	bl	_Func_80b82c4
	mov	r0, #0xc
	bl	WaitFrames
	mov	r3, #3
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x18]
	bl	BaseAnim_Nova
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Anim_SevereBlow

