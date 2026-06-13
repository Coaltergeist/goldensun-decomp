	.include "macros.inc"

.thumb_func_start OvlFunc_942_20080a0
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lc6
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc2
	ldr	r0, =gOvl_02009ba4
	b	.L10a
.Lc2:
	ldr	r0, =.L1acc
	b	.L10a
.Lc6:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Le0
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ldc
	ldr	r0, =.L19c4
	b	.L10a
.Ldc:
	ldr	r0, =gOvl_020098ec
	b	.L10a
.Le0:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.L108
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf6
	ldr	r0, =.L1dcc
	b	.L10a
.Lf6:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L104
	ldr	r0, =.L1d24
	b	.L10a
.L104:
	ldr	r0, =.L1c7c
	b	.L10a
.L108:
	ldr	r0, =.L18d4
.L10a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_942_20080a0

.thumb_func_start OvlFunc_942_2008144
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x8aa
	bl	__SetFlag
	mov	r1, #0xc4
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r2, #0x94
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008144

.thumb_func_start OvlFunc_942_200819c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.L1c2
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1be
	ldr	r0, =GFX_Thermometer
	b	.L206
.L1be:
	ldr	r0, =.L1e80
	b	.L206
.L1c2:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.L1dc
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1d8
	ldr	r0, =.L2120
	b	.L206
.L1d8:
	ldr	r0, =.L2018
	b	.L206
.L1dc:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.L204
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1f2
	ldr	r0, =.L2390
	b	.L206
.L1f2:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L200
	ldr	r0, =.L230c
	b	.L206
.L200:
	ldr	r0, =.L224c
	b	.L206
.L204:
	ldr	r0, =.L1e74
.L206:
	pop	{r1}
	bx	r1
.func_end OvlFunc_942_200819c

