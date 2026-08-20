	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_942_20088cc
	push	{r5, lr}
	ldr	r5, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.Lm942_8f2
	ldr	r0, =0x8ac
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm942_8f2
	ldr	r0, =0x8ac
	bl	__SetFlag
	bl	OvlFunc_942_2008ba0
.Lm942_8f2:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.Lm942_910
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm942_910
	ldr	r0, =0x8a9
	bl	__ClearFlag
.Lm942_910:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_93c
	ldr	r0, =0x8a9
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm942_93c
	mov	r1, #0xb0
	mov	r2, #0xa3
	mov	r0, #0xc
	lsl	r1, #15
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.Lm942_93c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_20088cc

