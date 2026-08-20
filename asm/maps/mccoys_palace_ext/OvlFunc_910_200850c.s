	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_910_200850c
	push	{lr}
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm910_520
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
.Lm910_520:
	ldr	r0, =0xfd2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm910_530
	mov	r0, #0xd
	bl	OvlFunc_910_2008974
.Lm910_530:
	ldr	r0, =0x84a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm910_57c
	mov	r1, #0x9a
	mov	r0, #0xb
	lsl	r1, #17
	ldr	r2, =0x1070000
	bl	__MapActor_SetPos
	mov	r1, #0xad
	mov	r0, #0xc
	lsl	r1, #17
	ldr	r2, =0x1070000
	bl	__MapActor_SetPos
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm910_57c
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm910_57c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x80
	ldr	r2, =gScript_910__02008bf4
	mov	r0, #0xc
	lsl	r1, #9
	bl	__Func_8092a1c
.Lm910_57c:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm910_5b8
	mov	r1, #0xe0
	mov	r2, #0x92
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r0, =0x85e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm910_5b8
	bl	OvlFunc_910_20085dc
.Lm910_5b8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_910_200850c

