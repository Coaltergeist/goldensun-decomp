	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2009a60
	push	{lr}
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_1b16
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xe0
	mov	r1, #1
	ldr	r3, =0x10000028
	ldr	r2, =0x27e0000
	neg	r1, r1
	lsl	r0, #17
	bl	OvlFunc_945_200c8ac
	ldr	r0, =0x1d26
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0xa
	bl	OvlFunc_945_200c880
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, #0xa
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0x92
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm945_1b16:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009a60

