	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_200a2f4
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	ldr	r0, =0x818
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm891_238e
	ldr	r0, =0x817
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm891_238e
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x92
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xba
	bl	__PlaySound
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	bl	__CopyMapTiles
	ldr	r0, =0x816
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_2368
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__CopyMapTiles
.Lm891_2368:
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x817
	bl	__SetFlag
	ldr	r0, =0x816
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_238e
	bl	OvlFunc_891_2008098
.Lm891_238e:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200a2f4

