	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Lunpa_MapInit
	push	{r5, lr}
	ldr	r5, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	bne	.Lm939_16b4
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	OvlFunc_939_20085f0
	ldr	r0, =0xfd1
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm939_169e
	mov	r0, #0x14
	bl	OvlFunc_939_2009840
.Lm939_169e:
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm939_16ae
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm939_16ae:
	ldr	r0, =0x201
	bl	__SetFlag
.Lm939_16b4:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.Lm939_1778
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r3, =0x242
	mov	r1, #0xe1
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.Lm939_16f6
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm939_16f6
	bl	OvlFunc_939_200931c
.Lm939_16f6:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.Lm939_1714
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm939_1714
	bl	OvlFunc_939_20095bc
.Lm939_1714:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm939_1732
	ldr	r0, =0x94d
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm939_1732
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_939_2008ac4
	lsl	r1, #4
	bl	__StartTask
.Lm939_1732:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_939_2009240
	bl	__StartTask
	ldr	r0, =0x944
	bl	__ClearFlag
	ldr	r0, =0x945
	bl	__ClearFlag
	ldr	r0, =0x946
	bl	__ClearFlag
	ldr	r0, =0x947
	bl	__ClearFlag
	ldr	r0, =0x948
	bl	__ClearFlag
	ldr	r0, =0x943
	bl	__ClearFlag
	ldr	r0, =0x949
	bl	__ClearFlag
	ldr	r0, =0x94a
	bl	__ClearFlag
	ldr	r0, =0x94b
	bl	__ClearFlag
	ldr	r0, =0x94c
	bl	__ClearFlag
.Lm939_1778:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Lunpa_MapInit

