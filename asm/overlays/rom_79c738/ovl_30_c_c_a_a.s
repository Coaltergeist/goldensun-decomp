	.include "macros.inc"

.thumb_func_start OvlFunc_909_200809c
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x21
	cmp	r2, r3
	bne	.Le4
	ldr	r5, =.L29b4
	mov	r0, r5
	bl	__Func_808b868
	ldr	r0, =0x84e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le0
	mov	r1, r5
	mov	r3, #2
	add	r1, #0xa6
	strb	r3, [r1]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0xbe
	strb	r2, [r3]
	mov	r2, r5
	add	r2, #0xd6
	mov	r3, #3
	strb	r3, [r2]
	add	r2, #0x18
	mov	r3, #1
	strb	r3, [r2]
.Le0:
	mov	r0, r5
	b	.Le6
.Le4:
	ldr	r0, =.L299c
.Le6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_909_200809c

.thumb_func_start OvlFunc_909_2008100
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x21
	cmp	r2, r3
	bne	.L118
	ldr	r0, =.L2ca8
	b	.L11a
.L118:
	ldr	r0, =.L2c9c
.L11a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_909_2008100

.thumb_func_start OvlFunc_909_2008130
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1420
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008130

.thumb_func_start OvlFunc_909_2008150
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x1764
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008150

.thumb_func_start OvlFunc_909_20081b4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1750
	bl	__MessageID
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1d0
	ldr	r0, =0x1768
	bl	__MessageID
.L1d0:
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	ldr	r0, =0x302
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20081b4

