	.include "macros.inc"

.thumb_func_start KalayDocks_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lm942_c6
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_c2
	ldr	r0, =gOvl_02009ba4
	b	.Lm942_10a
.Lm942_c2:
	ldr	r0, =.Lm942_1acc
	b	.Lm942_10a
.Lm942_c6:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Lm942_e0
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_dc
	ldr	r0, =.Lm942_19c4
	b	.Lm942_10a
.Lm942_dc:
	ldr	r0, =gOvl_020098ec
	b	.Lm942_10a
.Lm942_e0:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.Lm942_108
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_f6
	ldr	r0, =.Lm942_1dcc
	b	.Lm942_10a
.Lm942_f6:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_104
	ldr	r0, =.Lm942_1d24
	b	.Lm942_10a
.Lm942_104:
	ldr	r0, =.Lm942_1c7c
	b	.Lm942_10a
.Lm942_108:
	ldr	r0, =.Lm942_18d4
.Lm942_10a:
	pop	{r1}
	bx	r1
.func_end KalayDocks_GetActors

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
	bl	__MapActor_TravelToAnimWait
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r2, #0x94
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
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

.thumb_func_start KalayDocks_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lm942_1c2
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_1be
	ldr	r0, =GFX_Thermometer
	b	.Lm942_206
.Lm942_1be:
	ldr	r0, =.Lm942_1e80
	b	.Lm942_206
.Lm942_1c2:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Lm942_1dc
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_1d8
	ldr	r0, =.Lm942_2120
	b	.Lm942_206
.Lm942_1d8:
	ldr	r0, =.Lm942_2018
	b	.Lm942_206
.Lm942_1dc:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.Lm942_204
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_1f2
	ldr	r0, =.Lm942_2390
	b	.Lm942_206
.Lm942_1f2:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_200
	ldr	r0, =.Lm942_230c
	b	.Lm942_206
.Lm942_200:
	ldr	r0, =.Lm942_224c
	b	.Lm942_206
.Lm942_204:
	ldr	r0, =.Lm942_1e74
.Lm942_206:
	pop	{r1}
	bx	r1
.func_end KalayDocks_GetEvents

