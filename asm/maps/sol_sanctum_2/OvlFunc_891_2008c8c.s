	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2008c8c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r0, #0
	mov	r10, r3
	sub	sp, #0x14
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, #0xb3
	ldr	r3, [r5, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	bge	.Lm891_d0c
	mov	r0, #0
	ldr	r1, =0x23f
	mov	r2, #0x84
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, r10
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, [r5, #8]
	add	r7, sp, #8
	str	r3, [r7]
	ldr	r3, [r5, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r2, r10
	str	r3, [r7, #8]
	str	r7, [r2]
	mov	r6, #0
	mov	r5, r7
.Lm891_cec:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	cmp	r6, #0x1e
	bne	.Lm891_cec
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #1
	b	.Lm891_d60
.Lm891_d0c:
	mov	r0, #0
	ldr	r1, =0x241
	mov	r2, #0xde
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r3, [r5, #8]
	add	r7, sp, #8
	str	r3, [r7]
	ldr	r3, [r5, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r2, r10
	ldr	r2, [r2]
	str	r3, [r7, #8]
	mov	r3, r10
	str	r7, [r3]
	mov	r11, r2
	mov	r6, #0
	mov	r5, r7
.Lm891_d44:
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	cmp	r6, #0x1e
	bne	.Lm891_d44
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #2
.Lm891_d60:
	mov	r9, r3
	mov	r2, #4
	mov	r6, #0
	mov	r8, r2
	mov	r5, #2
.Lm891_d6a:
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #8
	bl	__CutsceneWait
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__CopyMapTiles
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r6, #6
	bne	.Lm891_d6a
	mov	r3, #4
	mov	r6, #0
	mov	r8, r3
	mov	r5, #2
.Lm891_da8:
	mov	r2, r8
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r6, #0xa
	bne	.Lm891_da8
	mov	r2, #4
	mov	r6, #0
	mov	r8, r2
	mov	r5, #2
.Lm891_de6:
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #2
	bl	__CutsceneWait
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__CopyMapTiles
	mov	r0, #2
	bl	__CutsceneWait
	cmp	r6, #0xc
	bne	.Lm891_de6
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r5, #4
	mov	r0, #2
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #8
	mov	r3, #0x28
	mov	r1, #0x37
	mov	r2, #0x20
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r3, r9
	cmp	r3, #1
	bne	.Lm891_e68
	mov	r6, #0
	mov	r5, r7
.Lm891_e52:
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	cmp	r6, #0x1e
	bne	.Lm891_e52
	b	.Lm891_e88
.Lm891_e68:
	mov	r3, r9
	cmp	r3, #2
	bne	.Lm891_e88
	mov	r6, #0
	mov	r5, r7
.Lm891_e72:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	cmp	r6, #0x1e
	bne	.Lm891_e72
.Lm891_e88:
	mov	r3, r11
	mov	r2, r10
	str	r3, [r2]
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008c8c

