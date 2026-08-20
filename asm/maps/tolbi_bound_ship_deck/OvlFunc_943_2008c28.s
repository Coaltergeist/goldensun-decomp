	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2008c28
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	bl	__CutsceneStart
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, #0
	cmp	r3, #1
	beq	.Lm943_c48
	cmp	r3, #3
	beq	.Lm943_c50
	b	.Lm943_c56
.Lm943_c48:
	mov	r5, #1
	bl	OvlFunc_943_2008bb8
	b	.Lm943_c56
.Lm943_c50:
	mov	r5, #1
	bl	OvlFunc_943_2008bf0
.Lm943_c56:
	cmp	r5, #0
	beq	.Lm943_c78
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #1
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.Lm943_c7e
.Lm943_c78:
	mov	r0, #0x7b
	bl	__PlaySound
.Lm943_c7e:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008c28

