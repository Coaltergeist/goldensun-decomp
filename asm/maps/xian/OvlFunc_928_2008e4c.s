	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_928_2008e4c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #6
	bhi	.Lm928_efc
	ldr	r2, =.Lm928_e70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2,0
.Lm928_e70:
	.word	.Lm928_e8c
	.word	.Lm928_e9e
	.word	.Lm928_eaa
	.word	.Lm928_eb6
	.word	.Lm928_ec8
	.word	.Lm928_eda
	.word	.Lm928_eec
.Lm928_e8c:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm928_1778
	mov	r1, #0x51
	mov	r2, #0x12
	bl	__Func_8010560
	b	.Lm928_efc
.Lm928_e9e:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm928_178e
	mov	r1, #0x53
	b	.Lm928_ee4
.Lm928_eaa:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm928_178e
	mov	r1, #0x56
	b	.Lm928_ee4
.Lm928_eb6:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm928_17a4
	mov	r1, #0x54
	mov	r2, #0x18
	bl	__Func_8010560
	b	.Lm928_efc
.Lm928_ec8:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm928_17a4
	mov	r1, #0x48
	mov	r2, #7
	bl	__Func_8010560
	b	.Lm928_efc
.Lm928_eda:
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r0, =.Lm928_17ba
	mov	r1, #0x45
.Lm928_ee4:
	mov	r2, #0xb
	bl	__Func_8010560
	b	.Lm928_efc
.Lm928_eec:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm928_17d0
	mov	r1, #0x53
	mov	r2, #7
	bl	__Func_8010560
.Lm928_efc:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	OvlFunc_928_2008de8
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008e4c

