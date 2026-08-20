	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Altin_MapInit
	push	{lr}
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_888
	mov	r0, #0x90
	lsl	r0, #2
	bl	__SetFlag
.Lm931_888:
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_89c
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_8a2
.Lm931_89c:
	ldr	r0, =0x241
	bl	__SetFlag
.Lm931_8a2:
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_8bc
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_8bc
	ldr	r0, =0x242
	bl	__SetFlag
.Lm931_8bc:
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.Lm931_8d4
	bl	OvlFunc_931_2008904
	b	.Lm931_8de
.Lm931_8d4:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.Lm931_8de
	bl	OvlFunc_931_2008b2c
.Lm931_8de:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Altin_MapInit

